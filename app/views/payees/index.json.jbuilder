json.array!(@payees) do |payee|
  json.extract! payee, :id, :name, :account_id
  json.url payee_url(payee, format: :json)
end
