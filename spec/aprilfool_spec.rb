require_relative 'helper'

describe "aprilfool" do
  context Time do
    context "#aprilfool" do
      it "returns true when the current date is 4/1" do
        expect(Time.local(2013, 4, 1).aprilfool?).to equal(true)
      end

      it "returns false when the current date is not 4/1" do
        expect(Time.local(2013, 3, 31).aprilfool?).to equal(false)
        expect(Time.local(2013, 4, 2).aprilfool?).to equal(false)
        expect(Time.local(2013, 5, 1).aprilfool?).to equal(false)
      end
    end
  end
end