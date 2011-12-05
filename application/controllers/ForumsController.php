<?php

class ForumsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Forums();
        $this->select = $this->tbl->select();
        $this->select->order('forum_name');
        $this->form = new Vaad_Form_Forum();
        $this->_name = ' פורומים';
    }

}

