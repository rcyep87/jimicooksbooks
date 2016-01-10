#Jimicooksbooks

##About the app
Jimicooksbooks is an application to track debits and credits by transactions and
keep a running balance on all user accounts.

##How to use Jimicooksbooks
To view the sample data:
Log in by navigating to [Jimicooksbooks](https://Jimicooksbooks.herokuapp.com)
and entering `jimi@example.com` for email and `password` for password. You may
also create your own account on the log in page.


![UML diagrams](/docs/jimicooksbooks.pdf)

```
Routes

Routes match in priority from top to bottom

Path / Url		
Path Match
new_user_session_path	GET	/users/sign_in(.:format)
user_session_path	    POST	/users/sign_in(.:format)
destroy_user_session_path	DELETE	/users/sign_out(.:format)
user_password_path	   POST	/users/password(.:format)	devise/passwords#create
new_user_password_path	GET	/users/password/new(.:format)	devise/passwords#new
edit_user_password_path	GET	/users/password/edit(.:format)	devise/passwords#edit

                      PATCH	/users/password(.:format)	devise/passwords#update
                      PUT	/users/password(.:format)	devise/passwords#update


DELETE	/users(.:format)	devise/registrations#destroy
transactions_path	GET	/transactions(.:format)	transactions#index
POST	/transactions(.:format)	transactions#create
new_transaction_path	GET	/transactions/new(.:format)	transactions#new
edit_transaction_path	GET	/transactions/:id/edit(.:format)	transactions#edit
transaction_path	GET	/transactions/:id(.:format)	transactions#show
PATCH	/transactions/:id(.:format)	transactions#update
PUT	/transactions/:id(.:format)	transactions#update
DELETE	/transactions/:id(.:format)	transactions#destroy
payees_path	GET	/payees(.:format)	payees#index
POST	/payees(.:format)	payees#create
new_payee_path	GET	/payees/new(.:format)	payees#new
edit_payee_path	GET	/payees/:id/edit(.:format)	payees#edit
payee_path	GET	/payees/:id(.:format)	payees#show
PATCH	/payees/:id(.:format)	payees#update
PUT	/payees/:id(.:format)	payees#update
DELETE	/payees/:id(.:format)	payees#destroy
accounts_path	GET	/accounts(.:format)	accounts#index
POST	/accounts(.:format)	accounts#create
new_account_path	GET	/accounts/new(.:format)	accounts#new
edit_account_path	GET	/accounts/:id/edit(.:format)	accounts#edit
account_path	GET	/accounts/:id(.:format)	accounts#show
PATCH	/accounts/:id(.:format)	accounts#update
PUT	/accounts/:id(.:format)	accounts#update
DELETE	/accounts/:id(.:format)	accounts#destroy

user_account_transactions_path	GET	/users/:user_id/accounts/:account_id/transactions(.:format)	transactions#index
POST	/users/:user_id/accounts/:account_id/transactions(.:format)	transactions#create
new_user_account_transaction_path	GET	/users/:user_id/accounts/:account_id/transactions/new(.:format)	transactions#new
edit_user_account_transaction_path	GET	/users/:user_id/accounts/:account_id/transactions/:id/edit(.:format)	transactions#edit
user_account_transaction_path	GET	/users/:user_id/accounts/:account_id/transactions/:id(.:format)	transactions#show
PATCH	/users/:user_id/accounts/:account_id/transactions/:id(.:format)	transactions#update
PUT	/users/:user_id/accounts/:account_id/transactions/:id(.:format)	transactions#update
DELETE	/users/:user_id/accounts/:account_id/transactions/:id(.:format)	transactions#destroy
user_accounts_path	GET	/users/:user_id/accounts(.:format)	accounts#index
POST	/users/:user_id/accounts(.:format)	accounts#create
new_user_account_path	GET	/users/:user_id/accounts/new(.:format)	accounts#new
edit_user_account_path	GET	/users/:user_id/accounts/:id/edit(.:format)	accounts#edit
user_account_path	GET	/users/:user_id/accounts/:id(.:format)	accounts#show
PATCH	/users/:user_id/accounts/:id(.:format)	accounts#update
PUT	/users/:user_id/accounts/:id(.:format)	accounts#update
DELETE	/users/:user_id/accounts/:id(.:format)	accounts#destroy

user_payee_transactions_path	GET	/users/:user_id/payees/:payee_id/transactions(.:format)	transactions#index
POST	/users/:user_id/payees/:payee_id/transactions(.:format)	transactions#create
new_user_payee_transaction_path	GET	/users/:user_id/payees/:payee_id/transactions/new(.:format)	transactions#new
edit_user_payee_transaction_path	GET	/users/:user_id/payees/:payee_id/transactions/:id/edit(.:format)	transactions#edit
user_payee_transaction_path	GET	/users/:user_id/payees/:payee_id/transactions/:id(.:format)	transactions#show
PATCH	/users/:user_id/payees/:payee_id/transactions/:id(.:format)	transactions#update
PUT	/users/:user_id/payees/:payee_id/transactions/:id(.:format)	transactions#update
DELETE	/users/:user_id/payees/:payee_id/transactions/:id(.:format)	transactions#destroy
user_payees_path	GET	/users/:user_id/payees(.:format)	payees#index
POST	/users/:user_id/payees(.:format)	payees#create
new_user_payee_path	GET	/users/:user_id/payees/new(.:format)	payees#new
edit_user_payee_path	GET	/users/:user_id/payees/:id/edit(.:format)	payees#edit
user_payee_path	GET	/users/:user_id/payees/:id(.:format)	payees#show
PATCH	/users/:user_id/payees/:id(.:format)	payees#update
PUT	/users/:user_id/payees/:id(.:format)	payees#update
DELETE	/users/:user_id/payees/:id(.:format)	payees#destroy

signup_path	GET	/signup(.:format)	devise/registrations#new
login_path	GET	/login(.:format)	devise/sessions#new
logout_path	GET	/logout(.:format)	devise/sessions#destroy
root_path	GET	/	accounts#home
```
