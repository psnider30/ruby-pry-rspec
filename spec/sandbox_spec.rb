require_relative '../index/sandbox.rb'

describe 'group tests: ' do

  it 'returns 6 for 3!' do
    expect(factorial(3)).to eq(6)
  end

  it 'returns 24 for 4!' do
    expect(factorial(4)).to eq(24)
  end
  it 'returns 1 for 0!' do
    expect(factorial(0)).to eq(1)
  end

  it 'prompts for a positive integer given negative inputs' do
    expect(factorial(-2)).to eq('please put in a positive integer')
  end

  it 'groups files by owner' do
    files = {
    'Input.txt' => 'Randy',
    'Code.py' => 'Stan',
    'Output.txt' => 'Randy'
    }
    answer = {"Randy"=>["Input.txt", "Output.txt"], "Stan"=>["Code.py"]}
    expect(group_by_owners(files)).to eq(answer)
  end

  it 'it uses .transform_keys to transform keys in hash' do
    h = {'1': 'bat', '2': 'cat', '3': 'hat', '4': 'rat', '5': 'sat'}

    h_by_int = h.transform_keys { |k| k.to_s.to_i }
    expect(h_by_int.key('hat')).to eq(3)
  end

  it 'uses hash.slice' do
    address = {
      street_address: '660 Palo Alto Ave',
      city: 'Palo Alto',
      state: 'CA',
      country:'U.S.',
      zip:'94301'
    }
    city_state = { city: 'Palo Alto', state: 'CA'}
    expect(address.slice(:city, :state)).to eq(city_state)
  end

end
