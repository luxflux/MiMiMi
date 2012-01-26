require 'spec_helper'

describe Person do
  context "on creation" do
    context "with invalid attributes" do

      before do
        @person = Person.create
      end

      subject do
        @person
      end

      it { should have(1).error_on(:name) }

    end
  end
end
