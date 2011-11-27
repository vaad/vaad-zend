<?php
 
 class Vaad_Form_Ad extends ZendX_JQuery_Form {
 
 public function __construct($options = null) {
 parent::__construct($options);
 $this->setAction($options['action'])->setMethod('post');
 	$id = $this->createElement('hidden', 'id');
	$this->addElement($id);
	$bld_id = $this->createElement('hidden', 'bld_id');
	$this->addElement($bld_id);
	$name = $this->createElement('text', 'name', array('size' => 17, 'label' => 'name'));
	$this->addElement($name);
	$title = $this->createElement('text', 'title', array('size' => 17, 'label' => 'title'));
	$title->setRequired(true);
	$this->addElement($title);
	$content_txt = $this->createElement('text', 'content_txt', array('size' => 17, 'label' => 'content_txt'));
	$content_txt->setRequired(true);
	$this->addElement($content_txt);
	$is_asking = $this->createElement('checkbox', 'is_asking', array('size' => 17, 'label' => 'is_asking'));
	$this->addElement($is_asking);
	$is_offering = $this->createElement('checkbox', 'is_offering', array('size' => 17, 'label' => 'is_offering'));
	$this->addElement($is_offering);
	$phone_num = $this->createElement('text', 'phone_num', array('size' => 17, 'label' => 'phone_num'));
	$this->addElement($phone_num);
	$remarks = $this->createElement('text', 'remarks', array('size' => 17, 'label' => 'remarks'));
	$this->addElement($remarks);
$price_asked = new Vaad_Form_Element_Currency('price_asked', array('size' => 17, 'label' => 'price_asked'));
	$this->addElement($price_asked);
	$category = $this->createElement('text', 'category', array('size' => 17, 'label' => 'category'));
	$this->addElement($category);
	$creation_date = $this->createElement('text', 'creation_date', array('size' => 17, 'label' => 'creation_date'));
	$creation_date->setRequired(true);
	$this->addElement($creation_date);
	$update_time = $this->createElement('text', 'update_time', array('size' => 17, 'label' => 'update_time'));
	$update_time->setRequired(true);
	$this->addElement($update_time);
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
 'elements' => array('name','title','content_txt','is_asking','is_offering','phone_num','remarks'),
),
 'left' => array(
 'elements' => array('price_asked','category','creation_date','update_time'),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
