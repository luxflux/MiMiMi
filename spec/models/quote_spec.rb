require 'spec_helper'

describe Quote do
  context "on creation" do
    context "with invalid attributes" do

      before do
        @quote = Quote.create
      end

      subject do
        @quote
      end

      it { should have(1).error_on(:body) }
      it { should have(1).error_on(:person) }

    end
  end
end
