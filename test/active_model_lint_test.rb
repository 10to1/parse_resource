require 'helper'
require 'parse_resource'

#path = "parse_resource.yml"
#settings = YAML.load(ERB.new(File.new(path).read).result)['test']
ParseResource::Base.load!(ENV["PARSE_RESOURCE_APPLICATION_ID"], ENV["PARSE_RESOURCE_MASTER_KEY"])

class Bowl < ParseResource
  fields :title, :body, :author
  validates_presence_of :title
end
class ActiveModelLintTest < ActiveModel::TestCase
  include ActiveModel::Lint::Tests

  def setup
    @model = Bowl.new
  end
end
