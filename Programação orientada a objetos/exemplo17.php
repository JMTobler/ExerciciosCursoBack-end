<?php

	class Conta{
		private $numero;
		private $saldo;

		function __construct($numero, $saldo){
			$this->numero = $numero;
			$this->saldo = $saldo;
		}

		public function getSaldo(){
			return $this->saldo;
		}

		public function setSaldo($novosaldo){
			$this->saldo = $novosaldo;
		}
	}

	$conta = new Conta(1,150);

	// $conta->saldo = 300; // vai dar erro pois a variavel nao esta visivel

	$conta->setSaldo(300);

	$saldoatual = $conta->getSaldo();

	echo "Saldo: $saldoatual";
?>