<?php

class TenantsController extends Vaad_Controller_Action {

    public function indexAction() {
        $tbl = new Vaad_DbTable_Tenants();
        $this->view->rows = $tbl->fetchAll(null, 'tnt_app_num Asc');

        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
    }

    public function listAction() {
        $this->_redirect('/' . $this->_control);
    }

    public function viewAction($save = false) {
        $id = $this->getRequest()->getParam('id');
        $tbl = new Vaad_DbTable_Tenants();
        if ((int) $id == 0) {
            $row = $tbl->createRow();
        } else {
            $row = $tbl->fetchRow("id = $id");
        }
        $form = new Vaad_Form_Tenant();

        if (!$save) {
            $this->view->topPageTitle = 'פרטי דייר';
            $form->removeElement('submit');
        }

        $form->populate($row->toArray());
        $this->view->form = $form;

        if ($this->_request->getPost()) {
            $formData = $this->_request->getPost();
            if ($save)
                $this->save($formData, $tbl->info());
        }
    }

    public function deleteAction() {
        // action body
    }

    public function editAction() {
        $this->view->topPageTitle = 'עדכון דייר';
        $this->viewAction(true);
        $this->render('view');
    }

    public function createAction() {
        $this->view->topPageTitle = 'הוספת דייר';
        $this->viewAction(true);
        $this->render('view');
    }

}

