<?php

class TicketsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Tickets();
        $this->select = $this->tbl->select();
        $this->select->order('tkt_status');
        $this->select->order('tkt_opendate desc');

        $this->form = new Vaad_Form_Ticket();
        $this->_name = 'תקלות';
    }

    protected function setPaginator($result, $cnt = 9) {
        parent::setPaginator($result, 15);
    }

}

