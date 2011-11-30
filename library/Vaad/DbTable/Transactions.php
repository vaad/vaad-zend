<?php

class Vaad_DbTable_Transactions extends Vaad_DbTable_Abstract {

    protected $_name = 'transactions';
    
    protected $_referenceMap = array(
        'Projects' => array(
            'refColumns' => array('id','bld_id'),
            'refTableClass' => 'Vaad_DbTable_Projects',
            'columns' => array('prj_id','bld_id')
        ),
    );

}

?>
