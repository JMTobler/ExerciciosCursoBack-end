<?php
 	$joaoSalario = 1000;
 	$joaoPrevidencia = 100;
 	$joaoNome = 'Joao Da Silva';
 	$joaoDesconto = round($joaoSalario * 0.275 + $joaoPrevidencia, 2);

 	$mariaSalario = 2000;
 	$mariaPrevidencia = 200;
 	$mariaNome = 'Maria Da Silva';
 	$mariaDesconto = round($mariaSalario * 0.275 + $mariaPrevidencia, 2);

 	$joseSalario = 3000;
 	$josePrevidencia = 300;
 	$joseNome = 'Jose Da Silva';
 	$joseDesconto = round($joseSalario * 0.275 + $josePrevidencia, 2);

 	echo "O valor do desconto de $joaoNome é $joaoDesconto. <br>";
 	echo "O valor do desconto de $mariaNome é $mariaDesconto. <br>";
 	echo "O valor do desconto de $joseNome é $joseDesconto. <br>";

?>