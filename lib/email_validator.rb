# class for the email validation
class EmailValidator <  ActiveModel::Validator
  # email validation for student, university and tutor  
  def validate(record)
    if record.role == 'student'
      record.errors[:email] << "This email not a student" unless
      record.email =~ /^(\S+)@(\S+).ac.uk$/
    elsif record.role == 'tutor'
      record.errors[:email] << "This email not a tutor" unless
      record.email =~ /^(\S+)@(\S+).ac.uk$/
    elsif record.role == 'university'
      record.errors[:email] << "This email not a university" unless
      record.email =~ /^(\S+)@(\S+).ac.uk$/                      
    elsif record.role == 'business'
      record.errors[:email] << "This is not email" unless
      record.email =~  /.+@.+\..+/i
    end
  end
end