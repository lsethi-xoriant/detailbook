require 'spec_helper'

describe Detailbook do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:lastname) }
end