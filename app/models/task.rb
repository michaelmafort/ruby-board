class Task < ApplicationRecord
  belongs_to :project

  # Now the requirement is to create only this status options, but if in the future this requirement is changed,
  # the only method to change is this
  def status_options
      [
        {label: 'To-do', value: 'todo'},
        {label: 'In Progress', value: 'inprogress'},
        {label: 'To Verify', value: 'toverify'},
        {label: 'Done', value: 'done'}
      ]
  end

  # Now the requirement is to create only this priority options, but if in the future this requirement is changed,
  # the only method to change is this
  def priority_options
      [
        {label: 'Low', value: 'low'},
        {label: 'Normal', value: 'normal'},
        {label: 'High', value: 'high'},
        {label: '!!! Urgent', value: 'urgent'}
      ]
  end

end
