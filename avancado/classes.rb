# Conta
# Teste
class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    # recurso para invocar atributo
    self.saldo += valor
    puts "Depositando a quantida de #{valor} reais na conta de #{self.nome}"
  end
end

c = Conta.new('Marcos')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
