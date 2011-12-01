<?php

class ContactsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Contacts();
        $this->select = $this->tbl->select();
        $this->select->order('cnt_first_name');
        $this->select->order('cnt_last_name');
        $this->form = new Vaad_Form_Contact();
        $this->_name = 'בעל מקצוע';
    }

}

