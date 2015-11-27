class Calculadora
	def initialize
		@regras = [CalculadorRegraUnidade.new, CalculadorRegraPeso.new, CalculadorRegraEspecial.new]
	end
	
	def calcular(item)
		regras.find{| regra | regra.podeCalcular(item.medida) }.calcular(item)
	end
end