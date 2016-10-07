require 'test_helper'

class TasksHelperTest < ActiveSupport::TestCase
  include TasksHelper

  test "Should show a formated value of status" do
    @task = Task.new
    @task.status = 'todo'
    status = status(@task)
    assert_equal(status, "To-do")
  end

  test "Should show a formated value of priority" do
    @task = Task.new
    @task.priority = 'urgent'
    priority = priority(@task)
    assert_equal(priority, "!!! Urgent")
  end
end