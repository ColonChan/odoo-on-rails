Rails.application.routes.draw do
  # Test form list
  root :to => 'home#index'

  # General
  get 'odoo/test_form' => 'odoo#test_form'
  post 'api/create_db/' => 'odoo#create_db'
  get 'api/:table/get_fields/' => 'odoo#get_fields'
  get 'api/:table/get_all_id/(:limit)' => 'odoo#get_all_id'
  get 'api/:table/get_all/(:limit)' => 'odoo#get_all'
  get 'api/:table/get_one/:id' => 'odoo#get_one'

  # Expense
  get 'hr_expense/test_form/' => 'hr_expense#test_form'
  post 'api/hr_expense/create/' => 'hr_expense#create'
  post 'api/hr_expense/submit/' => 'hr_expense#submit'
  post 'api/hr_expense/approve/' => 'hr_expense#approve'
  post 'api/hr_expense/post/' => 'hr_expense#post'
  post 'api/hr_expense/done/' => 'hr_expense#done'
  post 'api/hr_expense/cancel/' => 'hr_expense#cancel'

  # Account - Invoice (account_invoice)
  get 'account_invoice/test_form' => 'account_invoice#test_form'
  post 'api/account_invoice/create/' => 'account_invoice#create'
  post 'api/account_invoice/open/' => 'account_invoice#open'
  post 'api/account_invoice/paid/' => 'account_invoice#paid'
  post 'api/account_invoice/cancel/' => 'account_invoice#cancel'
  post 'api/account_invoice/reset/' => 'account_invoice#reset'
  post 'api/account_invoice/add/' => 'account_invoice#add'
  get 'test_method' => 'account_invoice#test_method'

  # Invoice - Line (account_invoice_line)
  post 'api/account_invoice_line/add/' => 'account_invoice_line#add'

  # Res - Users (res_users)
  get 'res_users/test_form' => 'res_users#test_form'
  post 'api/res_users/create/' => 'res_users#create'
  post 'api/res_users/change_password/' => 'res_users#change_password'
  post 'api/res_users/change_app_right/' => 'res_users#change_app_right'
  post 'api/res_users/change_extra_right/' => 'res_users#change_extra_right'

  # Res - Groups (res_groups)

  # Res - Partner (res_partner)
  get 'res_partner/test_form' => 'res_partner#test_form'
  post 'api/res_partner/create/' => 'res_partner#create'

  # upload file
  resources :uploads
  get 'post' => 'uploads#post'
end
