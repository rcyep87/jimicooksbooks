json.array!(@accounts) do |account|
  json.extract! account, :id, :type, :balance, :acct_number
  json.url account_url(account, format: :json)
end
