<?php

	function calculardescontos($salario,$previdencia){
		return round($salario * 0.275 + $previdencia);
	}

	$funcionarios = array(3);
	$funcionarios[0] = array("João Filho", 1000, 100);
	$funcionarios[1] = array("Maria Filho", 2000, 100);
	$funcionarios[2] = array("José Filho", 3000, 300);

	for ($i = 0; $i < 3; $i++) {
		$nome = $funcionarios[$i][0];

		$descontos = calculardescontos($funcionarios[$i][1],
			$funcionarios[$i][2]);

		echo "O valor do desconto de $nome é $descontos. <br>";
	}


?>