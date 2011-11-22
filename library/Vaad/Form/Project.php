<?php

class Vaad_Form_Project extends ZendX_JQuery_Form {

  public function __construct($options = null) {
    parent::__construct($options);
    $this->setAction($options['action'])->setMethod('post');
    $id = new Zend_Form_Element_Hidden('id');

    $bld_id = new Zend_Form_Element_Hidden('bld_id');

    $prj_title = new Zend_Form_Element_Text('prj_title');
    $prj_title->setLabel('prj_title')
      ->setOptions(array('size' => '12' ));

    $prj_desc = new Zend_Form_Element_Textarea('prj_desc');
    $prj_desc->setLabel('prj_desc')
      ->setOptions(array('size' => '10'  ,'rows' => '5', 'cols' => '20'));

    $prj_approx_cost = new Zend_Form_Element_Text('prj_approx_cost');
    $prj_approx_cost->setLabel('prj_approx_cost')
      ->setOptions(array('size' => '10' ));

    $prj_actual_cost = new Zend_Form_Element_Text('prj_actual_cost');
    $prj_actual_cost->setLabel('prj_actual_cost')
      ->setOptions(array('size' => '10' ));

    $prj_approx_start_date = new ZendX_JQuery_Form_Element_DatePicker('prj_approx_start_date');
    $prj_approx_start_date->setJQueryParam('dateFormat', 'dd.mm.yy');
    ;
    $prj_approx_start_date->setLabel('prj_approx_start_date')
      ->setOptions(array('size' => '10' ));

    $prj_actual_start_date = new ZendX_JQuery_Form_Element_DatePicker('prj_actual_start_date');
    $prj_actual_start_date->setJQueryParam('dateFormat', 'dd.mm.yy');
    ;
    $prj_actual_start_date->setLabel('prj_actual_start_date')
      ->setOptions(array('size' => '10' ));

    $prj_approx_end_date = new ZendX_JQuery_Form_Element_DatePicker('prj_approx_end_date');
    $prj_approx_end_date->setJQueryParam('dateFormat', 'dd.mm.yy');
    ;
    $prj_approx_end_date->setLabel('prj_approx_end_date')
      ->setOptions(array('size' => '10' ));

    $prj_actual_end_date = new ZendX_JQuery_Form_Element_DatePicker('prj_actual_end_date');
    $prj_actual_end_date->setJQueryParam('dateFormat', 'dd.mm.yy');
    ;
    $prj_actual_end_date->setLabel('prj_actual_end_date')
      ->setOptions(array('size' => '10' ));

    $submit = $this->createElement('submit','submit', array(
          'label' => 'save', 'class' => 'submit'));
    $back = $this->createElement('submit','back', array(
          'label' => 'back', 'class' => 'submit'));
    $this->addElement($id)
      ->addElement($bld_id)
      ->addElement($prj_title)
      ->addElement($prj_desc)
      ->addElement($prj_approx_cost)
      ->addElement($prj_actual_cost)
      ->addElement($prj_approx_start_date)
      ->addElement($prj_actual_start_date)
      ->addElement($prj_approx_end_date)
      ->addElement($prj_actual_end_date)->addElement($back)
      ->addElement($submit);

    $this->addDisplayGroups(array(
          'left' => array(
            'options'  => array('description' => 'שמאל'),
            'elements' => array('prj_approx_start_date','prj_actual_start_date','prj_approx_end_date','prj_actual_end_date'),
            ),
          'right' => array(
            'options'  => array('description' => 'ימין'),
            'elements' => array('prj_title','prj_desc','prj_approx_cost','prj_actual_cost'),
            ),
          'bottom' => array(
            'elements' => array('submit','back', 'id','bld_id'),
            )
          ));

    $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));

  }

}
