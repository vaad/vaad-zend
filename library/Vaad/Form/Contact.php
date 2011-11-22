<?php

class Vaad_Form_Contact extends ZendX_JQuery_Form {

  public function __construct($options = null) {
    parent::__construct($options);
    $this->setAction($options['action'])->setMethod('post');
    $id = new Zend_Form_Element_Hidden('id');

    $bld_id = new Zend_Form_Element_Hidden('bld_id');

    $cnt_first_name = new Zend_Form_Element_Text('cnt_first_name');
    $cnt_first_name->setLabel('cnt_first_name')
      ->setOptions(array('size' => '12' ));

    $cnt_last_name = new Zend_Form_Element_Text('cnt_last_name');
    $cnt_last_name->setLabel('cnt_last_name')
      ->setOptions(array('size' => '12' ));

    $cnt_phone1 = new Zend_Form_Element_Text('cnt_phone1');
    $cnt_phone1->setLabel('cnt_phone1')
      ->setOptions(array('size' => '12' ));

    $cnt_phone2 = new Zend_Form_Element_Text('cnt_phone2');
    $cnt_phone2->setLabel('cnt_phone2')
      ->setOptions(array('size' => '12' ));

    $cnt_address = new Zend_Form_Element_Text('cnt_address');
    $cnt_address->setLabel('cnt_address')
      ->setOptions(array('size' => '12' ));

    $cnt_remarks = new Zend_Form_Element_Textarea('cnt_remarks');
    $cnt_remarks->setLabel('cnt_remarks')
      ->setOptions(array('size' => '10'  ,'rows' => '5', 'cols' => '20'));

    $cnt_type = new Zend_Form_Element_Text('cnt_type');
    $cnt_type->setLabel('cnt_type')
      ->setOptions(array('size' => '5' ));

    $cnt_email = new Zend_Form_Element_Text('cnt_email');
    $cnt_email->setLabel('cnt_email')
      ->setOptions(array('size' => '12' ));

    $submit = $this->createElement('submit', 'submit', array(
          'label' => 'save', 'class' => 'submit'));
    $back = $this->createElement('submit', 'back', array(
          'label' => 'back', 'class' => 'submit'));

    $this->addElement($id)
      ->addElement($bld_id)
      ->addElement($cnt_first_name)
      ->addElement($cnt_last_name)
      ->addElement($cnt_phone1)
      ->addElement($cnt_phone2)
      ->addElement($cnt_address)
      ->addElement($cnt_remarks)
      ->addElement($cnt_type)
      ->addElement($cnt_email)->addElement($back)
      ->addElement($submit);

    $this->addDisplayGroups(array(
          'left' => array(
            'options'  => array('description' => 'שמאל'),
            'elements' => array('cnt_address','cnt_remarks','cnt_type','cnt_email'),
            ),
          'right' => array(
            'options'  => array('description' => 'ימין'),
            'elements' => array('cnt_first_name','cnt_last_name','cnt_phone1','cnt_phone2'),
            ),
          'bottom' => array(
            'elements' => array('submit','back', 'id','bld_id'),
            )
          ));

    $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
  }

}
