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
        $forum_desc = $this->createElement('textarea', 'forum_desc', array('cols' => 57, 'rows' => 5,'label' => 'forum_desc'));
        $this->addElement($forum_desc);

        $forum_mngr = $this->createElement('select', 'forum_mngr', array('size' => 1, 'label' => 'forum_mngr'));

        $tbl = new Vaad_DbTable_Tenants();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $forum_mngr->addMultiOption($row->id, $row->tnt_last_name . ' ' . $row->tnt_first_name);
        }
        $this->addElement($forum_mngr);

        $confdel = new Zend_Form_Element_Checkbox('confdel');
        $confdel->setDescription('<span class="confdel">אישור מחיקה</span>')
                ->setDecorators(array(
                    'ViewHelper',
                    array('Description', array('escape' => false, 'tag' => false)),
                    'Errors',
                ));
        $this->addElement($confdel);

        $save = new Zend_Form_Element_Submit('save', array('class' => 'button'));
        $this->addElement($save);
        $back = new Zend_Form_Element_Submit('back', array('class' => 'button'));
        $this->addElement($back);
        $repeat = new Zend_Form_Element_Submit('repeat', array('class' => 'button'));
        $this->addElement($repeat);
        $delete = new Zend_Form_Element_Submit('delete', array('class' => 'button'));
        $this->addElement($delete);
        $id->setDecorators(array('ViewHelper'));
        $bld_id->setDecorators(array('ViewHelper'));
        $save->setDecorators(array('ViewHelper'));
        $back->setDecorators(array('ViewHelper'));
        $repeat->setDecorators(array('ViewHelper'));
        $delete->setDecorators(array('ViewHelper'));
        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('forum_name', 'forum_mngr','forum_desc',),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
