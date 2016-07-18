require 'substrings'

describe '#substrings' do
  before(:each) do
    @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  end

  it 'returns a listing of how many times a substring in the dictionary was found in the original string' do
    expect(substrings("below", @dictionary)).to eq({"below"=>1, "low"=>1})
  end

  it 'should handle multiple words' do
    expect(substrings("Howdy partner, sit down! How's it going?", @dictionary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end
