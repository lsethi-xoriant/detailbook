require 'spec_helper'

describe EmailValidator do
  it 'student invalid email ' do 
    User.create(role: :student, email: 'niklos2506@gmail.com')
      expect(User.count).to eq(0)
  end

  it 'student invalid not email ' do 
    User.create(role: :student, email: 'niklos2506')
      expect(User.count).to eq(0)
  end

  it 'student valid email ' do 
    User.create(role: :student, email: 'niklos2506@gmail.ac.uk')
      expect(User.count).to eq(1)
  end

  it 'tutor invalid email ' do 
    User.create(role: :tutor, email: 'niklos2506@gmail.com')
      expect(User.count).to eq(0)
  end

  it 'tutor invalid not email ' do 
    User.create(role: :tutor, email: 'niklos2506')
      expect(User.count).to eq(0)
  end

  it 'tutor valid email ' do 
    User.create(role: :tutor, email: 'niklos2506@gmail.ac.uk')
      expect(User.count).to eq(1)
  end

  it 'university invalid email ' do 
    User.create(role: :university, email: 'niklos2506@gmail.com')
      expect(User.count).to eq(0)
  end

  it 'university invalid not email ' do 
    User.create(role: :university, email: 'niklos2506')
      expect(User.count).to eq(0)
  end

  it 'university valid email ' do 
    User.create(role: :university, email: 'niklos2506@gmail.ac.uk')
      expect(User.count).to eq(1)
  end


  it 'business invalid not email ' do 
    User.create(role: :business, email: 'niklos2506')
      expect(User.count).to eq(0)
  end

  it 'business valid email ' do 
    User.create(role: :business, email: 'niklos2506@gmail.ac.uk')
      expect(User.count).to eq(1)
  end

end

