json.extract! mycontact, :id, :name, :text, :age, :nationality, :mail, :created_at, :updated_at
json.url mycontact_url(mycontact, format: :json)
