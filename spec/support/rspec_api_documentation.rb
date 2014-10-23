# Values listed are the default values
RspecApiDocumentation.configure do |config|
  # Set the application that Rack::Test uses
  # config.app = Rails.application

  # Output folder
  # config.docs_dir = Rails.root.join("doc", "api")

  # An array of output format(s).
  # Possible values are :json, :html, :combined_text, :combined_json,
  #   :json_iodocs, :textile, :markdown, :append_json
  # config.format = [:html]
  config.format = :html

  # Location of templates
  # config.template_path = "inside of the gem"

  # Filter by example document type
  # config.filter = :all

  # Filter by example document type
  # config.exclusion_filter = nil

  # Used when adding a cURL output to the docs
  # config.curl_host = nil
  config.curl_host = "http://www.42la.bs"

  # Used when adding a cURL output to the docs
  # Allows you to filter out headers that are not needed in the cURL request,
  # such as "Host" and "Cookie". Set as an array.
  # config.curl_headers_to_filter = nil
  config.curl_headers_to_filter = ["Host", "Cookie", "Origin"]

  # By default, when these settings are nil, all headers are shown,
  # which is sometimes too chatty. Setting the parameters to an
  # array of headers will render *only* those headers.
  # config.request_headers_to_include = nil
  # config.response_headers_to_include = nil
  config.request_headers_to_include = ["Accept", "Content-Type", "X-Auth-Token", "X-Store-Identifier"]
  config.response_headers_to_include = []

  # By default examples and resources are ordered by description. Set to true keep
  # the source order.
  # config.keep_source_order = false
  # config.keep_source_order = true

  # Change the name of the API on index pages
  config.api_name = "Crowd Funding API Documentation"

  # Redefine what method the DSL thinks is the client
  # This is useful if you need to `let` your own client, most likely a model.
  # config.client_method = :client

  # Change the IODocs writer protocol
  # config.io_docs_protocol = "http"

  # You can define documentation groups as well. A group allows you generate multiple
  # sets of documentation.
  # config.define_group :public do |config|
  #   # By default the group's doc_dir is a subfolder under the parent group, based
  #   # on the group's name.
  #   config.docs_dir = Rails.root.join("doc", "api", "public")
  #
  #   # Change the filter to only include :public examples
  #   config.filter = :public
  # end
end
