<?php

class IncomesController extends Vaad_Controller_Action {

        public function init() {
        $this->tbl = new Vaad_DbTable_Incomes();
        $this->select = $this->tbl->select();
        $this->select->order('inc_apt_num');
        $this->form = new Vaad_Form_Income();
        $this->_name = 'הכנסות';
    }

    protected function setPaginator($result, $cnt = 9) {
        parent::setPaginator($result, 15);
    }

}

