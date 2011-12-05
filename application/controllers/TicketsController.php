<?php

class TicketsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Tickets();
        $this->select = $this->tbl->select();
        $this->select->order('tkt_status');
        $this->select->order('tkt_opendate desc');

        $this->form = new Vaad_Form_Ticket();
        $this->view->histForm = new Vaad_Form_TicketHistor();
        $this->_name = 'תקלות';
    }

    public function viewAction($save = false) {
        $id = $this->getRequest()->getParam('id');

        if ($this->_request->getPost()) {
            $formData = $this->_request->getPost();
            $isSave = isset($formData['save']);
            $isBack = isset($formData['back']);
            $isRepeat = isset($formData['repeat']);
            $isDelete = isset($formData['delete']);
            if ($save) {
                $id = $formData['id'];
                if ($save) {
                    if ($this->form->isValid($formData)) {
                        if ($isSave or $isRepeat) {
                            if ($this->tbl->Save($id, $formData)) {
                                $this->_msg->addMessage('נשמר בהצלחה');
                                $this->_redirect('/' . $this->_control);
                            } else {
                                $this->_msg->addMessage(' לא נשמר בהצלחה');
                            }
                        }
                    }
                }
            }
            if ($isDelete) {
                $conf = $formData['confdel'];
                $id = $formData['id'];
                if ((int) $conf === 1) {
                    if ($this->tbl->delete("id = $id")) {
                        $this->_msg->addMessage(' נמחק בהצלחה');
                        $this->_redirect('/' . $this->_control);
                    }
                } else {
                    $this->_msg->addMessage('אנא, אשר את המחיקה תחילה  ');
                    $this->_redirect('/' . $this->_control . '/edit/' . $id);
                }
            }
            if ($isBack) {
                $this->_redirect('/' . $this->_control);
            }
        }
        if ((int) $id == 0) {
            $row = $this->tbl->createRow();
        } else {
            $row = $this->tbl->fetchRow("id = $id");
        }

        if (!$save) {
            $this->view->topPageTitle = $this->_detail . ' ' . $this->_name;
            $this->form->removeElement('repeat');
            $this->form->removeElement('delete');
            $this->form->removeElement('confdel');
            $this->form->removeElement('save');
        } else {
            if ($id == 0) {
                $this->form->removeElement('delete');
                $this->form->removeElement('confdel');
            }
            else
                $this->form->removeElement('repeat');
        }


        $this->form->populate($row->toArray());
        $this->view->form = $this->form;
    }

    public function editAction() {
        $this->view->topPageTitle = $this->_update . ' ' . $this->_name;
        $this->viewAction(true);
        $this->render('view');
    }

    public function createAction() {
        $this->view->topPageTitle = $this->_new . ' ' . $this->_name;
        $this->viewAction(true);
        $this->render('view');
    }

    
    protected function setPaginator($result, $cnt = 9) {
        parent::setPaginator($result, 15);
    }

}

