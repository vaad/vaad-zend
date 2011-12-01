<?php
class Vaad_DbTable_Projects extends Vaad_DbTable_Abstract {
  protected $_name = 'projects';
  protected $_dependentTables = array('Vaad_DbTable_Transactions');

  protected function _fetch(Zend_Db_Table_Select $select) {
    //$select->where("id > 0");
    return parent::_fetch($select);
  }

  public function getAll() {
      $where = "bld_id = " . Zend_Registry::get('bld_id');
      $rows = $this->fetchAll($where);
      return $rows;
  }
  
}

?>
