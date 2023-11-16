<?php

	class produto{
		
		// atributo estatico para contar as instancias
		private static $contador = 0;
		
		// atributo de instancia para armazenar o nome do produto
		private $nome; 

		// construtor que atribui o nome do produto e incrementa o contador de instancias
		public function __construct($nome){ 

			$this->nome = $nome;
			
			produto::$contador ++;
		}

		// função estatica para pegar o valor do contador de instancias
		public static function getContador(){ 
			return produto::$contador;
		}

		//função estatica para pegar o nome armazenado do produto
		public function getNome(){ 
			return $this->nome;
		}
	}

	// Inserção de produtos na classe
	$produtos1 = new produto("Notebook");
	$produtos2 = new produto("Celular");

	// Impressão dos resultados
	echo "A quantidade de instancias é ", produto::getContador(), "<br>";
	echo "e o nome do produto 1 é ", $produtos1->getNome(), "<br>";
	echo "e o nome do produto 2 é ", $produtos2->getNome(), "<br>";

?>
