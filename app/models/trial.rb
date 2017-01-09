class Trial < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :company
  attribute :phone
  attribute :skills

  def headers
    {
      :subject => "Demande d'essai",
      :to => "mathieu.daviet@gmx.com",
      :from => %("#{first_name} #{last_name} #{company}" <#{email}>)
    }
  end
end
