require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "format_name_to_title_case should return name in title case" do
    person = Person.new

    name = "darth vadar"
    formatted_name = person.format_name_to_title_case(name)
    assert_equal "Darth Vadar", formatted_name

    name = "sheev palpatine"
    formatted_name = person.format_name_to_title_case(name)
    assert_equal "Sheev Palpatine", formatted_name
  end
end