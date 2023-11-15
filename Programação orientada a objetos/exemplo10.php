<?php

	class areaCalc{
		public static $pi = 3.141517;

		static function areaCircunferencia($raio){
			return round($raio * $raio * (areaCalc::$pi));
		}
	}

	$raioatual = 10;
	$area = areaCalc::areaCircunferencia($raioatual);
	$valorpi = areaCalc::$pi;

	echo "Area circunferencia de raio $raioatual é $area<br>";
	echo "Valor de pi: $valorpi";
?>