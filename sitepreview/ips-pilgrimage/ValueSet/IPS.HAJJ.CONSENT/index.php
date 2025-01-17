<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.html');
else 
  Redirect('http://smart.who.int/ips-pilgrimage/1.0.0/ValueSet-IPS.HAJJ.CONSENT.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
