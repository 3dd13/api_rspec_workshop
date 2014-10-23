require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Projects" do
  header "Accept", "application/vnd.crowd-funding.v1"
  header "Content-Type", "application/json"
  # header "X-AUTH-TOKEN", :auth_token_header

  get "/api/projects/:id" do
    let(:project) { FactoryGirl.create(:project) }
    let!(:id)     { project.id }

    # let(:user)               { FactoryGirl.create(:user) }
    # let!(:auth_token_header) { user.auth_token }

    example "User get details of a project" do
      do_request

      expect(status).to eq(200)

      expected_json = {
        project: {
          id:   project.id,
          name: project.name
        }
      }

      expect(response_body).to be_json_eql(expected_json.to_json)
    end
  end
end
