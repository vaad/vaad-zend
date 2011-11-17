<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Abstract
 *
 * @author eli
 */
class Vaad_DbTable_Abstract extends Zend_Db_Table_Abstract {

    protected $_tblCols = null;
    
    private function hasColumn($name) {
        if ($this->_tblCols == null) {
            $db = $this->getAdapter();
            $this->_tblCols = $db->describeTable($this->_name);
        }
        
        return isset($this->_tblCols[$name]);
    }
    private function hasBldid() {
        return $this->hasColumn('bld_id');
    }

    private function hasSiteid() {
        return $this->hasColumn('site_id');
    }

    protected function _fetch(Zend_Db_Table_Select $select) {
        $bld_id = Zend_Registry::get('bld_id');
        $site_id = Zend_Registry::get('site_id');

        if ($bld_id) {
            if ($this->hasBldid())
                $select->where("bld_id = $bld_id");
        }
        if ($site_id) {
            if ($this->hasSiteid())
                $select->where("site_id = $site_id");
        }

        return parent::_fetch($select);
    }

    public function insert(array $data) {
        $bld_id = Zend_Registry::get('bld_id');
        $site_id = Zend_Registry::get('site_id');

        if ($this->hasBldid())
            $data['bld_id'] = $bld_id;
        if ($this->hasSiteid())
            $data['site_id'] = $site_id;

        return parent::insert($data);
    }

}

?>
