require "spec"
require "../src/wax"

def test_blueprint_hash
  {
    :includes  => ["site", "next", "previous"],
    :transform => {
      :angle => :abs,
      :url   => {append: ".html"},
      :title => ["downcase", "capitalize"],
      :up    => "ceil",
      :price => [{default: 12.99}],
    },
    :variables => {
      :year => {
        :created_at => {:date => "%Y"},
      },
      :half_price => {
        :price => [
          {:divided_by => 2},
          {:times => 3.5},
        ],
      },
      :lower_title => {:title => "downcase"},
    },
  }
end

def test_blueprint_json
  test_blueprint_hash.to_json
end

def test_blueprint_yaml
  test_blueprint_hash.to_yaml
end
