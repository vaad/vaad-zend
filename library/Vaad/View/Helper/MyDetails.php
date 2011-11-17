<?php
class Vaad_View_Helper_MyDetails extends Zend_View_Helper_Abstract {

public function mydetails() {

$html = "<div class = 'box can-hide'>"
. "<div class = 'span-4 content'>"
. "<h4> כניסה למערכת</h4>"
        ;

$auth = Zend_Auth::getInstance();
if (!$auth->hasIdentity()) {
}

$html = $html . "<form action=\"/login\" method='post'>"
    //. "<label>כתובת דואר</label>"
    . "<input name='email' type = 'text' placeholder='כתובת מייל' size='15' />"
    //. "<label>סיסמא</label>"
    ." <input  name='password' type = 'password' placeholder='סיסמא' size='15' />"
    . "<input type=\"submit\" name=\"submit\" id=\"submit\" value=\"הכנס\" class=\"submit\" />"
    ." <input type=\"submit\" name=\"register\" id=\"register\" value=\"הרשם\" class=\"submit\" />"
. "</form>";


$html = $html . "</div></div>";

return $html;
}

}

?>