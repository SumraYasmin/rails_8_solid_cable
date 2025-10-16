class MessagesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @message = @task.messages.build(message_params)
    
    if @message.save
      redirect_to @task, notice: "Message was successfully posted."
    else
      redirect_to @task, alert: "Failed to post message."
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
