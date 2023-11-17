<?php

	class Visibilidade{
		public function functionPublica(){
			echo "Metodo Publico";
		}

		protected function functionProtegida(){
			echo "Metodo protegido";
		}

		private function functionPrivada(){
			echo "Metodo privado";
		}
	}

	$visibilidadeteste = new Visibilidade();
	$visibilidadeteste->functionPublica();
	$visibilidadeteste->functionProtegida();
	$visibilidadeteste->functionPrivada();
?>