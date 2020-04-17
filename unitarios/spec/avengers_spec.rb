class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
  	self.list.push(avenger)
  end
end

describe AvengersHeadQuarter do
  it 'deve adicionar um vingador' do
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    expect(hq.list).to eql ['Spiderman']
  end

  it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    # to include para saber se existe o registro
    expect(hq.list).to include 'Thor'
    res = hq.list.size > 0
    expect(res).to be true
  end

  it 'thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    expect(hq.list).to start_with('Thor')
  end

  it 'ironman deve ser o último da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    hq.put('Ironman')
    expect(hq.list).to end_with('Ironman')
  end

  it 'deve contar o sobrenome' do
    avenger = 'Peter Parker'
    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Marcos/)
  end
end
