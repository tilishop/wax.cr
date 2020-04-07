require "json"
require "yaml"
require "./wax/**"

struct Wax
  include JSON::Serializable
  include YAML::Serializable

  getter transform : Alias::TransformHash
  getter variables : Alias::VariablesHash

  # def initialize(@hash : Hash)
  # end

  def self.from_file(file : String)
    unless File.exists?(file)
      raise Wax::FileMissingException.new(%(File #{file} could not be found))
    end

    if match = file.match(/(json|ya?ml)$/i)
      return from_json(File.read(file)) if match[0].downcase == "json"
      from_yaml(File.read(file))
    else
      raise Wax::FileTypeNotSupportedException.new(
        "Only JSON and YAML files are supported")
    end
  end
end
