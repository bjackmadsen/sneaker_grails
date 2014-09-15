require 'rails_helper'

describe Style do 
	it { should validate_presence_of :name }
	it { should validate_presence_of :color }
	it { should validate_presence_of :release_date }
	it { should validate_presence_of :price }
	it { should validate_presence_of :content }
	it { should validate_presence_of :brand_id }
	it { should belong_to :brand }
end