<?php

class Vaad_View_Helper_GetApt extends Zend_View_Helper_Abstract {

    public function getapt($id) {
        $tbl = new Vaad_DbTable_Appartments();
        return $tbl->GetAptNum($id);
    }

}

?>