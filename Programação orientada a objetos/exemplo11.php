<?php
	class Conta{
		public $numero;
		public $saldo;

		// construtor que atribui numero da conta e saldo
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
		// Variavel que define o valor do juros
		public $juros = 0.05;

		// Função para atualizar o juros da poupança
		function atualizarJuros(){
			$this->saldo = $this->saldo * (1 + $this->juros);
		}
	}

	// Inserindo contas e poupanças em suas respectivas classes
	$conta = new Conta(1,150);
	$poupanca = new Poupanca(2,150);

	// Utilizando a função creditar para adicionar saldos na conta e na poupança
	$conta->creditar(50);
	$poupanca->creditar(100);


	// Impressão dos valores
	echo "O saldo da conta $conta->numero: $conta->saldo <br>";
	echo "O saldo da poupança $poupanca->numero: $poupanca->saldo <br>";

	echo "<hr>";

	// Utilizando mais uma vez a função creditar porem so na poupança
	$poupanca->creditar(100);

	// Impreção dos valores
	echo "O saldo a poupança $poupanca->numero: $poupanca->saldo";

?>
