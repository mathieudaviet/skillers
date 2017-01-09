class Testmail < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email

  attribute :test_id

  attribute :time_start
  attribute :time_end
  attribute :time

  attribute :result

  def headers
    {
      :subject => %(Résultat Test #{test_id}),
      :to => "mathieu.daviet@gmx.com",
      :from => %("#{first_name} #{last_name} " <#{email}>)
    }
  end
end
