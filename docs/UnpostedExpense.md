# Connectwise::UnpostedExpense

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**department_id** | **Integer** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**account_number** | **String** |  | [optional] 
**credit_account** | **String** |  | [optional] 
**expense_detail_id** | **Integer** |  | [optional] 
**expense_type** | [**ExpenseTypeReference**](ExpenseTypeReference.md) |  | [optional] 
**classification** | **String** |  | [optional] 
**gl_type** | **String** |  | [optional] 
**member** | [**MemberReference**](MemberReference.md) |  | [optional] 
**date_expense** | **DateTime** |  | [optional] 
**charge_code** | [**ChargeCodeReference**](ChargeCodeReference.md) |  | [optional] 
**charge_description** | **String** |  | [optional] 
**in_policy** | **BOOLEAN** |  | [optional] 
**payment_method** | [**PaymentMethodReference**](PaymentMethodReference.md) |  | [optional] 
**currency** | [**CurrencyReference**](CurrencyReference.md) |  | [optional] 
**total** | **Float** |  | [optional] 
**billable_amount** | **Float** |  | [optional] 
**non_billable_amount** | **Float** |  | [optional] 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**agreement_amount_covered** | **Float** |  | [optional] 
**ticket** | [**TicketReference**](TicketReference.md) |  | [optional] 
**project** | [**ProjectReference**](ProjectReference.md) |  | [optional] 
**project_phase** | [**ProjectPhaseReference**](ProjectPhaseReference.md) |  | [optional] 
**tax_code** | [**TaxCodeReference**](TaxCodeReference.md) |  | [optional] 
**avalara_tax_flag** | **BOOLEAN** | Used to determine if Avalara tax is enabled. | [optional] 
**item_taxable_flag** | **BOOLEAN** |  | [optional] 
**sales_tax_amount** | **Float** |  | [optional] 
**state_tax_flag** | **BOOLEAN** | Set to true if transaction is taxable at the state level. | [optional] 
**state_tax_xref** | **String** |  | [optional] 
**state_tax_amount** | **Float** |  | [optional] 
**county_tax_flag** | **BOOLEAN** | Set to true if transaction is taxable at the county level. | [optional] 
**county_tax_xref** | **String** |  | [optional] 
**county_tax_amount** | **Float** |  | [optional] 
**city_tax_flag** | **BOOLEAN** | Set to true if transaction is taxable at the city level. | [optional] 
**city_tax_xref** | **String** |  | [optional] 
**city_tax_amount** | **Float** |  | [optional] 
**country_tax_flag** | **BOOLEAN** | Set to true if transaction is taxable at the country level. | [optional] 
**country_tax_xref** | **String** |  | [optional] 
**country_tax_amount** | **Float** |  | [optional] 
**composite_tax_flag** | **BOOLEAN** | Set to true if transaction is taxable at the composite level. | [optional] 
**composite_tax_xref** | **String** |  | [optional] 
**composite_tax_amount** | **Float** |  | [optional] 
**date_closed** | **DateTime** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 


