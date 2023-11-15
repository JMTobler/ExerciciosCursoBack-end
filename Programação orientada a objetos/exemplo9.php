<?php

	class conta{
		function __construct($numero, $saldo){
			$this->numero = $numero;
			$this->saldo = $saldo;
		}

		function creditar($valor){
			$this->saldo = $this->saldo + $valor;
		}

		function debitar($valor){
			$this->saldo = $this->saldo - $valor;
		}

		function transferir($outraconta, $valor){
			if ($this->saldo > $valor){
				$this->debitar($valor);
				$outraconta->creditar($valor);
			}
		}
	}

	$cliente1 = new conta(1, 100);
	$cliente2 = new conta(2, 100);

	echo "Verificação de saldo inicial <br>";
	echo "Saldo da conta $cliente1->numero: $cliente1->saldo <br>";

	echo "Verificação de saldo inicial <br>";
	echo "Saldo da conta $cliente2->numero: $cliente2->saldo <br>";

	echo "<hr>";

	$operacao = $cliente1->creditar(100);

	echo "Saldo apos creditar R$100 na conta $cliente1->numero: $cliente1->saldo";

	echo "<hr>";

	$operacao2 = $cliente1->transferir($cliente2,50);

	echo "Saldo apos a conta $cliente1->numero transferir R$50 para a conta $cliente2->numero! <br>";
	echo "Saldo da conta $cliente1->numero: $cliente1->saldo <br>";
	echo "Saldo da conta $cliente2->numero: $cliente2->saldo <br>";

	echo "<hr>";

	$operacao3 = $cliente2->debitar(100);

	echo "Saldo apos a conta $cliente2->numero pagar uma conta de R$100! <br>";
	echo "Saldo da conta $cliente2->numero: $cliente2->saldo <br>";

?>