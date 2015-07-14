require 'rails_helper'

RSpec.describe PinsController, type: :controller do
  it 'should render show page ' do
    get :show
    expect(response).to have_rendered('/:id')
  end
end