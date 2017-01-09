class Contact < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :company
  attribute :message

  def headers
    {
      :subject => 'Demande de contact',
      :to => "mathieu.daviet@gmx.com",
      :from => %("#{first_name} #{last_name} #{company}" <#{email}>)
    }
  end
end
