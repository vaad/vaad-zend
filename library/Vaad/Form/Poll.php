<?php
 
 class Vaad_Form_Poll extends ZendX_JQuery_Form {
 
 public function __construct($options = null) {
 parent::__construct($options);
 $this->setAction($options['action'])->setMethod('post');
 	$id = $this->createElement('hidden', 'id');
	$this->addElement($id);
	$bld_id = $this->createElement('hidden', 'bld_id');
	$this->addElement($bld_id);
	$pol_type = $this->createElement('text', 'pol_type', array('size' => 17, 'label' => 'pol_type'));
	$pol_type->setRequired(true);
	$this->addElement($pol_type);
	$pol_title = $this->createElement('text', 'pol_title', array('size' => 17, 'label' => 'pol_title'));
	$pol_title->setRequired(true);
	$this->addElement($pol_title);
$pol_date = new ZendX_JQuery_Form_Element_DatePicker('pol_date');
$pol_date->setJQueryParams(array( 'dateFormat' => 'dd.mm.yy', 'timeFormat' => 'hh:mm:ss'));
$pol_date->setAttrib('size', '10') ->setLabel('pol_date') ->setValue(date('d.m.Y H:i:s'));
	$this->addElement($pol_date);
	$pol_desc = $this->createElement('text', 'pol_desc', array('size' => 17, 'label' => 'pol_desc'));
	$this->addElement($pol_desc);
$pol_exp_date = new ZendX_JQuery_Form_Element_DatePicker('pol_exp_date');
$pol_exp_date->setJQueryParams(array( 'dateFormat' => 'dd.mm.yy', 'timeFormat' => 'hh:mm:ss'));
$pol_exp_date->setAttrib('size', '10') ->setLabel('pol_exp_date') ->setValue(date('d.m.Y H:i:s'));
	$this->addElement($pol_exp_date);
	$pol_on_main = $this->createElement('checkbox', 'pol_on_main', array('size' => 17, 'label' => 'pol_on_main'));
	$pol_on_main->setRequired(true);
	$this->addElement($pol_on_main);
	$pol_active = $this->createElement('checkbox', 'pol_active', array('size' => 17, 'label' => 'pol_active'));
	$pol_active->setRequired(true);
	$this->addElement($pol_active);
$save = new Zend_Form_Element_Submit('save');
$this->addElement($save);
$back = new Zend_Form_Element_Submit('back');
$this->addElement($back);
$repeat = new Zend_Form_Element_Submit('repeat');
$this->addElement($repeat);
$delete = new Zend_Form_Element_Submit('delete');
$this->addElement($delete);
$id->setDecorators(array('ViewHelper'));
$bld_id->setDecorators(array('ViewHelper'));
$save->setDecorators(array('ViewHelper'));
$back->setDecorators(array('ViewHelper'));
$repeat->setDecorators(array('ViewHelper'));
$delete->setDecorators(array('ViewHelper'));
$this->addDisplayGroups(array(
 'right' => array(
 'elements' => array('pol_type','pol_title','pol_date','pol_desc','pol_exp_date'),
),
 'left' => array(
 'elements' => array('pol_on_main','pol_active'),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
