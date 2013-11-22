require './anagram'

describe Anagram do
	
	it "should return an empty array if there is no match" do
		test = Anagram.new ("how")
		test.match(%w (bad man)).should eq([])
	end

	it "should return all matches present" do
		test = Anagram.new ("car")
		test.match(%w(carpet race arc clue)).should eq(%w(carpet race, arc))
	end

	it "should return a match if the anagram word is smaller than the string" do
		test = Anagram.new ("race")
		test.match(%w(cliff acres brown)).should eq(%w(acres))
	end
end