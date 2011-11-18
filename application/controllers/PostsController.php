<?php

class PostsController extends Vaad_Controller_Action
{
    
    public function init()
    {
        $this->view->topPageTitle = 'הודעות וועד/פוסטים';
    }

    public function indexAction()
    {
        $tbl = new Vaad_DbTable_Posts();
        $this->view->rows = $tbl->fetchAll(null,'create_time Desc');
        
        $page = $this->getPage();
        $this->setPaginator($this->view->rows);
        
    }

    public function createAction()
    {
        $tbl = new Vaad_DbTable_Posts();        
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











