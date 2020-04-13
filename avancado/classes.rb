# Conta
# Teste
class Conta
  attr_accessor :saldo

  def deposita(valor)
    # recurso para invocar atributo
    self.saldo += valor
    puts "Depositando a quantida de #{valor} reais"
  end
end

c = Conta.new

c.saldo = 0
c.deposita(100.00)

puts c.saldo
