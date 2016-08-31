Rails.application.routes.draw do
  get 'api/account_invoice/get_fields/' => 'account_invoice#get_fields'
  get 'api/account_invoice/get_all_id/:limit' => 'account_invoice#get_all_id'
  get 'api/account_invoice/get_all/:limit' => 'account_invoice#get_all'
  get 'api/account_invoice/get_one/:id' => 'account_invoice#get_one'
  get 'api/account_invoice/create/:partner_id' => 'account_invoice#create'
  get 'api/account_invoice/open/:id' => 'account_invoice#open'
  get 'api/account_invoice/paid/:id' => 'account_invoice#paid'
  get 'api/account_invoice/cancel/:id' => 'account_invoice#cancel'
  get 'api/account_invoice/reset/:id' => 'account_invoice#reset'

  get 'api/res_partner/get_fields/' => 'res_partner#get_fields'
  get 'api/res_partner/get_all_id/:limit' => 'res_partner#get_all_id'
  get 'api/res_partner/get_all/:limit' => 'res_partner#get_all'
  get 'api/res_partner/get_one/:id' => 'res_partner#get_one'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
