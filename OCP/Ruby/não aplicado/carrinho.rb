class Carrinho
    def valorTotal
        total = 0.0
        items.each do | item |
            if item.medida == "unidade"
                total += item.quantidade * 5
            elsif item.medida == "peso"
                total += item.quantidade * 4.0 / 1000 # quantidade em gramas, preço por kg
            elsif item.medida == "especial"
                total += item.quantidade * 0.4
                pacoteDeTres = item.quantidade / 3
                total -= pacoteDeTres * 0.2
            end
            # mais regras podem vir
        end
    end
end