require 'spec_helper'

describe Person do
  context "on creation" do
    context "without any attributes" do

      before do
        @person = Person.create
      end

      subject do
        @person
      end

      it { should have(1).error_on(:name) }
    end

    context "with attributes" do
      before do
        FactoryGirl.create(:person)
      end
      it "does not accept two persons with the same name" do
        person = Person.create(:name => Person.first.name)
        person.save
        person.should have(1).error_on(:name)
      end
    end
  end
end
