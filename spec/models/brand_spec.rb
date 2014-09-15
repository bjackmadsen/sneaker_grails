require 'rails_helper'

describe Brand do 
	it { should validate_presence_of :name }
	it { should have_many :styles }
end