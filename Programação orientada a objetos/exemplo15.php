<?php

	class Visibilidade{
		public $varPublico;
		protected $varProtegido;
		private $varPrivado;

		function __construct($val1, $val2, $val3){
			$this->varPublico = $val1;
			$this->varProtegido = $val2;
			$this->varPrivado = $val3;
		}
	}

	$visibilidadeteste = new Visibilidade(1, 2, 3);

	echo "Atributo public: $visibilidadeteste->varPublico";
	echo "Atributo protected: $visibilidadeteste->varProtegido";
	echo "Atributo private: $visibilidadeteste->varPrivado";
?>