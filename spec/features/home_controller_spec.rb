require 'rails_helper'

describe 'Test Home' do
  scenario 'Testing Home Page' do
    visit '/'
    click_on 'Teste'
  end
end