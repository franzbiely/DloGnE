<?php
namespace App;

class Common
{
    public static function smart_number_format($str) {
	  return number_format(preg_replace("/[^0-9.]/", "", $str));
	}
}