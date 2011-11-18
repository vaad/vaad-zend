<?php

class Vaad_Form_Tenant extends Zend_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');

        $decoratorOptions = array(
            'ViewHelper',
            'Errors',
            array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
        );

        $tnt_first_name = $this->createElement('text', 'tnt_first_name');
        $tnt_first_name->setLabel('tnt_first_name');
        
        //$tnt_first_name->setDecorators($decoratorOptions);



        $this->addElements(array($tnt_first_name,));
    }

}
?>
