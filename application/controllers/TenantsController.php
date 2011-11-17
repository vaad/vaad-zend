<?php

class TenantsController extends Vaad_Controller_Action
{
    
    public function init()
    {
        $this->view->topPageTitle = 'דיירים';
    }

    public function indexAction()
    {
        $tbl = new Vaad_DbTable_Tenants();
        $this->view->rows = $tbl->fetchAll(null,'tnt_app_num Asc');
        
        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
        
    }

    public function createAction()
    {
        $tbl = new Vaad_DbTable_Tenants();        
    }

    public function listAction()
    {
        // action body
    }

    public function viewAction()
    {
        // action body
    }

    public function deleteAction()
    {
        // action body
    }

    public function editAction()
    {
        // action body
    }


}











