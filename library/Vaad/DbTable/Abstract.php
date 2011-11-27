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

    protected function setValue($val, $ftype) {
        $newVal = $val;
        switch ($ftype) {
            case 'date' : break;
            case 'float8' :
                $newVal = preg_replace('/[^0-9\.]/', '', $val);
                break;
        }

        return $newVal;
    }

    public function Save($id, array $post) {
        $fields = $this->getAdapter()->describeTable($this->_name);
        $data = array();
        $row = new Zend_Db_Table_Row();
        if ($id > 0) {
            $row = $this->fetchRow('id=' . $id);
        }

        foreach ($fields as $fld) {
            $fname = $fld['COLUMN_NAME'];
            $ftype = $fld['DATA_TYPE'];
            if (!isset($post[$fname]))
                continue;
            $val = $post[$fname];
            if ($fname == 'tnt_password') {
                if (!empty($val))
                    $val = md5($val);
            }
            $isNumeric = true;
            $isText = false;
            $isDate = false;
            switch ($ftype) {
                case 'bpchar':
                case 'text':
                case 'varchar':
                    $isNumeric = false;
                    $isText = true;
                    break;
                case 'abstime':
                    $isNumeric = false;
                    $isDate = true;
                    break;
                default:
                    break;
            }

            if ($isNumeric and ('' === $val))
                $val = 0;

            if (($id == 0) and ($fname == 'id'))
                continue;
            if ($fname == 'bld_id')
                $val = Zend_Registry::get('bld_id');
            if ($val === '')
                $val = null;
            if ($val != null)
                $data[$fname] = $this->setValue($val, $ftype);
            else {
                if ($isText)
                    $data[$fname] = '';
                if ($isDate)
                    $data[$fname] = NULL;
            }
        }

        $row->setFromArray($data);

        try {
            if ($id == 0)
                $this->insert($data);
            else
                $row->save();
            return true;
        } catch (Exception $e) {
            echo $e->getMessage();
            return false;
        }
    }

}

?>
