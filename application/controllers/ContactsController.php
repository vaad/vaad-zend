<?php

class ContactsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Contacts();
        $this->form = new Vaad_Form_Contact();
        $this->_name = 'בעל מקצוע';
    }
    
 
}

