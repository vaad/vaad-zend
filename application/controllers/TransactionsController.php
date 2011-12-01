<?php

class TransactionsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Transactions();
        $this->select = $this->tbl->select();
        $this->select->order('trn_date desc');
        $this->select->order('prj_id');

        $this->form = new Vaad_Form_Transaction();
        $this->_name = 'תנועה כספית';
    }

    protected function setPaginator($result, $cnt = 9) {
        parent::setPaginator($result, 15);
    }

}

