class CalculadorRegraUnidade
	def podeCalcular(medida)
		medida == "unidade"
	end
	
	def calcular(item)
		item.quantidade * 5
	end
end

class CalculadorRegraPeso
	def podeCalcular(medida)
		medida == "peso"
	end
	
	def calcular(item)
		item.quantidade * 4.0 / 1000
	end
end

class CalculadorRegraEspecial
	def podeCalcular(medida)
		medida == "especial"
	end
	
	def calcular(item)
		valor += item.quantidade * 0.4
		pacoteDeTres = item.quantidade / 3
		valor -= pacoteDeTres * 0.2
	end
end
