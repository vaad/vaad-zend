<?php

class SendController extends Zend_Controller_Action
{

    public function init()
    {
        $this->view->headTitle('שליחת דואר');
    }

    public function indexAction()
    {
        $this->view->email = $this->_request->getParam('mailto');        
    }

    public function createAction()
    {
        // action body
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











