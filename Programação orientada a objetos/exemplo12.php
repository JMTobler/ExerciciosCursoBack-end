<?php
	class Conta{
		public $numero;
		public $saldo;

		// construtor que atribui numero e saldo da conta
		function __construct($numero, $saldo){
			$this->numero = $numero;
			$this->saldo = $saldo;
		}

		// Função para creditar no saldo da conta
		function creditar($valor){
			$this->saldo = $this->saldo + $valor;
		}


		// Função para debitar no saldo da conta
		function debitar($valor){
			$this->saldo = $this->saldo - $valor;
		}

		// Função para transferir para outra conta
		function transferir($outraconta, $valor){
			if ($this->saldo > $valor){
				$this->debitar($valor);
				$outraconta->creditar($valor);
			}
		}
	}

	class Poupanca extends Conta{
		public $juros;

		// Construtor que atribui numero, saldo e juros das poupança
		function __construct($numero, $saldo, $juros){
			$this->numero = $numero;
			$this->saldo = $saldo;
			$this->juros = $juros;
		}

		// Função para atualizar o juros da poupança
		function atualizarJuros(){
			$this->saldo = $this->saldo * (1 + $this->juros);
		}
	}

	// Inserrindo conta e poupança em suas respectivas classes
	$conta = new Conta(1, 150);
	$poupanca = new Poupanca(2, 150, 0.10);

	// Usando a função incrementar na conta e na poupança
	$conta->creditar(50);
	$poupanca->creditar(100);

	// Usando a função atualizar juros na poupança
	$poupanca->atualizarJuros();

	// Impressão de valores
	echo "O saldo da conta $conta->numero: $conta->saldo <br>";
	echo "O saldo da poupança $poupanca->numero: $poupanca->saldo";

?>