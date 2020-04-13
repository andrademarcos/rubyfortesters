# Excecoes
# Teste
# begin
#   # Devo tentar alguma coisa
#   file = File.open('./ola.txt')
#   if file
#     puts file.read
#   end
# rescue StandardError => e
#   # Obter um possivel erro
#   puts e.message
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue StandardError => e
  puts 'Erro ao executar a soma'
end

soma('10', 5)
