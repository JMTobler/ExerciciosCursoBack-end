<?php

	class calculadora{
		function somar($operador1, $operador2){
			return $operador1 + $operador2;
		}

		function subtrair($operador1, $operador2){
			return $operador1 - $operador2;
		}

		function dividir($operador1, $operador2){
			return $operador1 / $operador2;
		}

		function multiplicar($operador1, $operador2){
			return $operador1 * $operador2;
		}
	}

	$calc = new calculadora();
	$soma = $calc->somar(2, 2);
	$subtracao = $calc->subtrair(2, 4);
	$divisao = $calc->dividir(4, 2);
	$multiplicacao = $calc->multiplicar(2, 4);

	echo "Soma: $soma <br>";
	echo "Subtração: $subtracao <br>";
	echo "Divisão: $divisao <br>";
	echo "Multiplicação $multiplicacao";
?>