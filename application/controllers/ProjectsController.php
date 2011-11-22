<?php

class ProjectsController extends Vaad_Controller_Action
{
    public function indexAction() {
        $tbl = new Vaad_DbTable_Projects();
        $this->view->rows = $tbl->fetchAll(null);

        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
    }

    public function listAction() {
        $this->_redirect('/' . $this->_control);
    }

    
    public function viewAction($save = false) {
        $id = $this->getRequest()->getParam('id');
        $tbl = new Vaad_DbTable_Projects();
        if ((int) $id == 0) {
          $row = $tbl->createRow();
        } else {
          $row = $tbl->fetchRow("id = $id");
        }
        $form = new Vaad_Form_Project();
        
        if (!$save) { 
            $this->view->topPageTitle = 'פרטי פרוייקט';
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
        $this->view->topPageTitle = 'עדכון פרוייקט';
        $this->viewAction(true);
        $this->render('view');
    }

    public function createAction() {
        $this->view->topPageTitle = 'הוספת פרוייקט';
        $this->viewAction(true);
        $this->render('view');
    }

}
