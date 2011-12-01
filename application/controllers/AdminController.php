<?php

class AdminController extends Vaad_Controller_Action {

    public function preDispatch() {
        parent::preDispatch(false);
        $menu = array(
            'transactions' => "/transactions",
            'incomes' => "/incomes",
            'deposit' => "/deposit",
        );

        $this->view->menu = $menu;
        $this->view->render('sidebar/actions.phtml');
    }

    public function init() {
        /* Initialize action controller here */
    }

    public function indexAction() {
        // $index = Zend_Search_Lucene::create(APPLICATION_PATH . '/indexes');
    }

    public function transactionsAction() {
        // action body
    }

    public function incomesAction() {
        // action body
    }

    public function depositsAction() {
        // action body
    }

}

