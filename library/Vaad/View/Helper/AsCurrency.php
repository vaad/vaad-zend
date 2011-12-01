<?php

class Vaad_View_Helper_AsCurrency extends Zend_View_Helper_Abstract {

    public function asCurrency($value) {
        $currency = new Zend_Currency();
        $currency->setValue($value);
        return $currency;
    }

}

?>