<?php

class Vaad_Controller_Action extends Zend_Controller_Action {

    protected $_page = 1;
    protected $_paginator = null;
    protected $_control = '';
    protected $_action = '';
    protected $_msg;
    protected $_delete = 'מחיקת';
    protected $_edit = 'עדכון';
    protected $_update = 'עדכון';
    protected $_new = 'הוספת';
    protected $_detail = 'פרטי';
    protected $tbl;
    protected $form;

    private function isVaad() {
        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $identity = $auth->getIdentity();
            $role = strtolower($identity->role);
            return ($role != 'tenant');
        }
        return false;
    }

    public function preDispatch($withmenu = true) {
        $this->_msg = Zend_Controller_Action_HelperBroker::getStaticHelper("flashMessenger");
        $translator = Zend_Form::getDefaultTranslator();

        $cnt = $this->getRequest()->getControllerName();
        $act = $this->getRequest()->getActionName();

        $this->_control = $cnt;
        $this->_action = $act;

        $ucnt = str_replace(' ', '', ucwords(str_replace('_', ' ', $cnt)));
        $this->view->topPageTitle = $translator->_($ucnt);
        $this->view->mainMenuTitle = $translator->_($ucnt);

        $this->view->cntName = $cnt;
        if ($withmenu) {
            $menu = array(
                'list' => "/$cnt/index",
            );
            if ($this->isVaad() and ($act != 'create')) {
                $menu['new'] = "/$cnt/create";
            }

            $id = $this->getRequest()->getParam('id');
            if ((int) $id > 0) {
                if ($this->isVaad() && ($act != 'edit')) {
                    $menu['edit'] = "/$cnt/edit/$id";
                }
                if ($act != 'view')
                    $menu['view'] = "/$cnt/view/$id";
            }

            $this->view->menu = $menu;
            $this->view->render('sidebar/actions.phtml');
        }
    }

    protected function getPage() {
        $page = $this->_getParam('page', 0);
        if ($page > 0)
            $this->_page = $page;
        return $this->_page;
        ;
    }

    protected function setPaginator($result, $cnt = 9) {
        $this->_paginator = Zend_Paginator::factory($result);
        $this->_paginator->setItemCountPerPage($cnt);
        $this->_paginator->setCurrentPageNumber($this->getPage());

        $this->view->paginator = $this->_paginator;
    }

    public function indexAction() {

        $this->view->rows = $this->tbl->fetchAll(null);

        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
    }

    public function listAction() {
        $this->_redirect('/' . $this->_control);
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

}

?>
