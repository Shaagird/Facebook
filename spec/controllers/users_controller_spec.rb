require 'rails_helper'
RSpec.describe UsersController do

  it '' do

    get :index

    expect(response.status).to eq(200)

    assert_template 'users/index'

  end
end