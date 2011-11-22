<?php

class ContactsController extends Vaad_Controller_Action {

    public function indexAction() {
        $tbl = new Vaad_DbTable_Contacts();
        $this->view->rows = $tbl->fetchAll(null);

        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
    }

    public function listAction() {
        $this->_redirect('/' . $this->_control);
    }

    
    public function viewAction($save = false) {
        $id = $this->getRequest()->getParam('id');
        $tbl = new Vaad_DbTable_Contacts();
        if ((int) $id == 0) {
          $row = $tbl->createRow();
        } else {
          $row = $tbl->fetchRow("id = $id");
        }
        $form = new Vaad_Form_Contact();
        
        if (!$save) { 
            $this->view->topPageTitle = 'פרטי בעל מקצוע';
            $form->removeElement ('submit');
        }
        $form->populate($row->toArray());
        $this->view->form = $form;

        if ($this->_request->getPost()) {
            $formData = $this->_request->getPost();
            var_dump($formData);
        }
    }

    public function deleteAction() {
        // action body
    }

    public function editAction() {
        $this->view->topPageTitle = 'עדכון בעל מקצוע';
        $this->viewAction(true);
        $this->render('view');
    }

    public function createAction() {
        $this->view->topPageTitle = 'הוספת בעל מקצוע';
        $this->viewAction(true);
        $this->render('view');
    }

}

