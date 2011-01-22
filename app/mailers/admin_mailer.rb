class AdminMailer < ActionMailer::Base
  default :from => "spam@hebsgaard.dk"

  def new_link(user, link_path)
    @user = user
    @link_path = link_path

    mail( :to => @user.email, :subject => "new link")
  end
end
