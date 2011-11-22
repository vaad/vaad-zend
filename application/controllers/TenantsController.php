<?php

class TenantsController extends Vaad_Controller_Action {

    public function indexAction() {
        $tbl = new Vaad_DbTable_Tenants();
        $this->view->rows = $tbl->fetchAll(null, 'tnt_app_num Asc');

        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
    }

    public function createAction() {
        $this->view->topPageTitle = 'הוספת דייר';
        $tbl = new Vaad_DbTable_Tenants();
        $row = $tbl->createRow();
        $form = new Vaad_Form_Tenant();
        $form->populate($row->toArray());
        $this->view->form = $form;
    }

    public function listAction() {
        $this->_redirect('/tenants');
    }

    
    public function viewAction($save = false) {
        $id = $this->getRequest()->getParam('id');
        if ((int) $id == 0) {
            return;
        }
        $tbl = new Vaad_DbTable_Tenants();
        $row = $tbl->fetchRow("id = $id");
        //$row->tnt_prev_debt = 12;
        $form = new Vaad_Form_Tenant();
        
        if (!$save) 
            $form->removeElement ('submit');
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
        $this->viewAction(true);
        $this->render('view');
    }

}

