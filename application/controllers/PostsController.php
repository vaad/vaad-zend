<?php

class PostsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Posts();
        $this->select = $this->tbl->select();
        $this->select->order('update_time Desc');
        $this->select->order('title');
        $this->form = new Vaad_Form_Post();
        $this->_name = 'הודעות וועד/פוסטים';
    }

}

