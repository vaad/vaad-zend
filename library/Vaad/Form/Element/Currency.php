<?php

class Vaad_Form_Element_Currency extends Zend_Form_Element {

    public function setValue($value) {
        $currency = new Zend_Currency();
        $currency->setValue($value);
        return parent::setValue($currency);
    }
}

?>
