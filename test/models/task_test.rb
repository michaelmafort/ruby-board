require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "shoud not save with empty title" do
    task = Task.new
    task.project = Project.first
    task.title = ""
    task.description = "test"
    task.status = 'todo'
    task.priority = 'normal'
    assert_not task.save
  end

  test "shoud not save with empty status" do
    task = Task.new
    task.project = Project.first
    task.title = "title test"
    task.description = "test"
    task.status = ''
    task.priority = 'normal'
    assert_not task.save
  end

  test "shoud not save with empty priority" do
    task = Task.new
    task.project = Project.first
    task.title = "title test"
    task.description = "test"
    task.status = 'todo'
    task.priority = ''
    assert_not task.save
  end

  test "shoud save" do
    task = Task.new
    task.project = Project.first
    task.title = "title test"
    task.description = "test"
    task.status = 'todo'
    task.priority = 'normal'
    assert task.save
  end
end
