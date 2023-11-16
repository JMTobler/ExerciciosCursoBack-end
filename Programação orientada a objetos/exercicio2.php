<?php

	class produto{
		private static $contador = 0;
		private $nome;

		function __construct($nome){

			$this->nome = $nome;
			
			produto::$contador ++;
		}

		static function getContador(){
			return $total = produto::$contador;
		}

		static function getNome($prod){
			return $prod = $prod->nome;
		}
	}

	
	$produtos1 = new produto("Notebook");
	$produtos2 = new produto("Celular");

	$contar = produto::getContador();
	$nome = produto::getNome($produtos2);
	$nome2 = produto::getNome($produtos1);

	echo "A quantidade de instancias é $contar <br>";
	echo "e os nomes dos protudos são $nome e $nome2.";

?>
