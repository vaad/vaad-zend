<?php
 
 class Vaad_Form_Forum extends ZendX_JQuery_Form {
 
 public function __construct($options = null) {
 parent::__construct($options);
 $this->setAction($options['action'])->setMethod('post');
 	$id = $this->createElement('hidden', 'id');
	$this->addElement($id);
	$bld_id = $this->createElement('hidden', 'bld_id');
	$this->addElement($bld_id);
	$forum_name = $this->createElement('text', 'forum_name', array('size' => 17, 'label' => 'forum_name'));
	$forum_name->setRequired(true);
	$this->addElement($forum_name);
	$forum_desc = $this->createElement('text', 'forum_desc', array('size' => 17, 'label' => 'forum_desc'));
	$this->addElement($forum_desc);
	$forum_mngr = $this->createElement('text', 'forum_mngr', array('size' => 17, 'label' => 'forum_mngr'));
	$this->addElement($forum_mngr);
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
 'elements' => array('forum_name','forum_desc','forum_mngr'),
),
 'left' => array(
 'elements' => array(),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
