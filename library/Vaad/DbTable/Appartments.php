<?php


class Vaad_DbTable_Appartments extends Vaad_DbTable_Abstract {

    protected $_name = 'appartments';

    protected function _fetch(Zend_Db_Table_Select $select) {
        $select->order('app_num');
       return parent::_fetch($select);
    }
    
    public function getAptNum($id) {
        $row = $this->fetchRow('id=' . $id);
        if ($row)
            return $row->app_num;
        return -1;
    }

}

?>
