class Message < ApplicationRecord
  belongs_to :task
  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to(
      [task, 'messages'],
      target: 'messages',
      partial: 'messages/message',
      locals: { message: self }
    )
  end
end
