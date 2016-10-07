require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "shoud not save with empty title" do
    project = Project.new
    assert_not project.save
  end
end
