<?php

	class contaCliente{ /* Classe Conta cliente */
		public $numero;
		public $saldo;

		function creditar($valor){
			$this->saldo = $this->saldo + $valor;
		}
	}
?>