require "./spec_helper"

describe Wax do
  # describe "#initialize" do
  #   it "accepts a Hash" do
  #     wax = Wax.new(test_blueprint_hash)
  #   end
  # end

  describe ".from_json" do
    it "can be initialized from json" do
      wax = Wax.from_json(test_blueprint_json)
      wax.transform.should be_a(Wax::Alias::TransformHash)
      wax.variables.should be_a(Wax::Alias::VariablesHash)
    end
  end

  describe ".from_yaml" do
    it "can be initialized from yaml" do
      wax = Wax.from_yaml(test_blueprint_yaml)
      wax.transform.should be_a(Wax::Alias::TransformHash)
      wax.variables.should be_a(Wax::Alias::VariablesHash)
    end
  end

  describe ".from_file" do
    it "can be initialized from a json file" do
      wax = Wax.from_file("./spec/blueprints/example.json")
      wax.should be_a(Wax)
    end

    it "can be initialized from a yaml file" do
      wax = Wax.from_file("./spec/blueprints/example.yaml")
      wax.should be_a(Wax)
      wax = Wax.from_file("./spec/blueprints/example.yml")
      wax.should be_a(Wax)
    end

    it "fails if the given fiel does not exist" do
      expect_raises(Wax::FileMissingException) do
        Wax.from_file("./spec/blueprints/missing.xml")
      end
    end

    it "fails if something else than a json or yaml file is given" do
      expect_raises(Wax::FileTypeNotSupportedException) do
        Wax.from_file("./spec/blueprints/example.xml")
      end
    end
  end
end
