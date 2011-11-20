<?php

    class Vaad_Filter_Currency implements Zend_Filter_Interface
    {
        public function filter($value)
        {
            // perform some transformation upon $value to arrive on $valueFiltered
     
            return 123.56;
        }
    }
?>
