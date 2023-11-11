<?php 

	class paciente{
		public $nome;
		public $peso;
		public $altura;

		function __construct($nome, $peso, $altura){

			$this->nome = $nome;
			$this->peso = $peso;
			$this->altura = $altura;
			$this->imc = $this->calcularimc();

			if ($this->imc < 17){
				$this->situacaoPaciente = "Muito abaixo do peso!";
			}
			else if($this->imc >= 17 && $this->imc <= 18.49){
				$this->situacaoPaciente = "Abaixo do peso!";
			}
			else if($this->imc >= 18.5 && $this->imc <= 24.99){
				$this->situacaoPaciente = "Peso Normal!";
			}
			else if($this->imc >= 25 && $this->imc <= 29.99){
				$this->situacaoPaciente = "Acima do peso!";
			}
			else if($this->imc >= 30 && $this->imc <= 34.99){
				$this->situacaoPaciente = "Obesidade I!";
			}
			else if($this->imc >= 35 && $this->imc <= 39.99){
				$this->situacaoPaciente = "Obesidade II(severa)!";
			}
			else if($this->imc >= 40){
				$this->situacaoPaciente = "Obesidade III(mórbida)!";
			}
		}

		function calcularimc(){
			return round($this->peso / ($this->altura * $this->altura), 2);
		}
	}

	$pacientes = array();
	$pacientes[0] = new paciente("Joao Marcelo", 50, 2.20);
	$pacientes[1] = new paciente("Maria Silva", 95, 2.00);
	$pacientes[2] = new paciente("Jose Filho", 120, 1.60);

	for($i = 0; $i < count($pacientes); $i++){
		$paci = $pacientes[$i];

		echo "O imc do paciente $paci->nome é $paci->imc, portanto a situação dele é $paci->situacaoPaciente <br>";
	}

?>