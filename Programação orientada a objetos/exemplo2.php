<?php
	function calculardesconto($salario,$previdencia){
		return round($salario * 0.275 + $previdencia);
	};

	$joaoNome = "João Filho";
	$joaoDesconto = calculardesconto(1000,100);

	$mariaNome = "Maria Filho";
	$mariaDesconto = calculardesconto(2000,200);

	$joseNome = "José Filho";
	$joseDesconto = calculardesconto(3000,300);

	echo "O valor do desconto de $joaoNome é $joaoDesconto.<br>";
	echo "O valor do desconto de $mariaNome é $mariaDesconto.<br>";
	echo "O valor do desconto de $joseNome é $joseDesconto.<br>";
?>