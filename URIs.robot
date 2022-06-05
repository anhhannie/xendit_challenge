# Updated: Anh Pham(anh.pham@systum.com)
*** Settings ***
Documentation   This file is used to set all the different api paths so they
...             can be used in any test.

*** Variables ***

${rootApi}  api
${rootApi_v1.1}   api/v1.1
${rootApi_v3.0}   api/v3.0
${rootApi_v3.1}   api/v3.1

*** Keywords ***
Setup URIs

  ### Identity ###
  Set Global Variable    ${loginApi}                     ${rootApi}/identity/auth/employee/
  Set Global Variable    ${createAccountApi}             ${rootApi}/identity/customer/

  ### Reset Password ###
  Set Global Variable    ${resetPasswordApi}             ${rootApi}/password/reset/
  Set Global Variable    ${v3.0.resetPasswordApi}        ${rootApi_v3.0}/request-reset-password/

  ### Contacts ###
  Set Global Variable    ${contact.password.resetApi}    ${rootApi}/contact/password/reset/

  ### Analytics ###
  # CEO #
  Set Global Variable    ${ceo.inventoryApi}             ${rootApi}/analytics/ceo/inventory/
  Set Global Variable    ${v1.1.ceo.inventoryApi}        ${rootApi_v1.1}/analytics/ceo/inventory/
  Set Global Variable    ${ceo.campaignsApi}             ${rootApi}/analytics/ceo/campaigns/
  Set Global Variable    ${ceo.indicatorsApi}            ${rootApi}/analytics/ceo/indicators/
  Set Global Variable    ${ceo.support-casesApi}         ${rootApi}/analytics/ceo/support-cases/
  Set Global Variable    ${ceo.marketing-summaryApi}     ${rootApi}/analytics/ceo/marketing-summary/
  Set Global Variable    ${ceo.summaryApi}               ${rootApi}/analytics/ceo/summary/
  Set Global Variable    ${ceo.inventory-warningsApi}    ${rootApi}/analytics/ceo/inventory-warnings/
  Set Global Variable    ${ceo.team-leadsApi}            ${rootApi}/analytics/ceo/team-leads/
  Set Global Variable    ${ceo.teams-leadsApi}           ${rootApi}/analytics/ceo/teams-leads/
  Set Global Variable    ${ceo.teams-leads-popupApi}     ${rootApi}/analytics/ceo/teams-leads-popup/
  Set Global Variable    ${ceo.product-salesApi}         ${rootApi}/analytics/ceo/product-sales/
  Set Global Variable    ${ceo.opportunitiesApi}         ${rootApi}/analytics/ceo/opportunities/
  Set Global Variable    ${ceo.customersApi}             ${rootApi}/analytics/ceo/customers/
  Set Global Variable    ${ceo.team-forecastsApi}        ${rootApi}/analytics/ceo/team-forecasts/
  Set Global Variable    ${ceo.company-forecastsApi}     ${rootApi}/analytics/ceo/company-forecasts/
  Set Global Variable    ${ceo.leadsApi}                 ${rootApi}/analytics/ceo/leads/
  Set Global Variable    ${ceo.return-itemsApi}          ${rootApi}/analytics/ceo/return-items/
  Set Global Variable    ${ceo.sales-ordersApi}          ${rootApi}/analytics/ceo/sales-orders/
  Set Global Variable    ${ceo.orders-channelApi}        ${rootapi}/analytics/ceo/orders-channel/

  # CEO Reports #
  Set Global Variable    ${ceo.customers.reportApi}      ${rootApi}/analytics/ceo/reports/customers/
  Set Global Variable    ${ceo.inventory.reportApi}      ${rootApi}/analytics/ceo/reports/inventory/
  Set Global Variable    ${ceo.marketing.reportApi}      ${rootApi}/analytics/ceo/reports/marketing/
  Set Global Variable    ${ceo.product-sales.reportApi}  ${rootApi}/analytics/ceo/reports/product-sales/
  Set Global Variable    ${ceo.support-cases.reportApi}  ${rootApi}/analytics/ceo/reports/support-cases/
  Set Global Variable    ${ceo.opportunities.reportApi}  ${rootApi}/analytics/ceo/opportunities/report/

  # CEO Popups #
  Set Global Variable    ${ceo.sales-popupApi}           ${rootApi}/analytics/ceo/sales-popup/
  Set Global Variable    ${ceo.orders-popupApi}          ${rootApi}/analytics/ceo/orders-popup/

  # Inventory #
  Set Global Variable    ${inventory.indicatorsApi}                ${rootApi}/analytics/inventory/indicators/
  Set Global Variable    ${inventory.product-salesApi}             ${rootApi}/analytics/inventory/product-sales/
  Set Global Variable    ${inventory.summaryApi}                   ${rootApi}/analytics/inventory/summary/
  Set Global Variable    ${inventory.valueApi}                     ${rootApi}/analytics/inventory/value/
  Set Global Variable    ${inventory.warningsApi}                  ${rootApi}/analytics/inventory/warnings/

  Set Global Variable    ${inventory.product-sales.reportApi}      ${rootApi}/analytics/inventory/reports/product-sales/
  Set Global Variable    ${inventory.value.reportApi}              ${rootApi}/analytics/inventory/reports/value/

  # Inventory Reports #
  Set Global Variable    ${inventory.product-salesReportApi}       ${rootApi}/analytics/inventory/reports/product-sales/

  # Marketing #
  Set Global Variable    ${marketing.campaignsApi}                 ${rootApi}/analytics/marketing/campaigns/
  Set Global Variable    ${marketing.capsuleApi}                   ${rootApi}/analytics/marketing/capsule/
  Set Global Variable    ${marketing.indicatorsApi}                ${rootApi}/analytics/marketing/indicators/
  Set Global Variable    ${marketing.leadsApi}                     ${rootApi}/analytics/marketing/leads/
  Set Global Variable    ${marketing.product-salesApi}             ${rootApi}/analytics/marketing/product-sales/
  Set Global Variable    ${marketing.promotionsApi}                ${rootApi}/analytics/marketing/promotions/
  Set Global Variable    ${marketing.promotions-reportApi}         ${rootApi}/analytics/marketing/promotions-report/
  Set Global Variable    ${marketing.summaryApi}                   ${rootApi}/analytics/marketing/summary/

  # Marketing Reports #
  Set Global Variable    ${marketing.product-sales.reportApi}      ${rootApi}/analytics/marketing/reports/product-sales/
  Set Global Variable    ${marketing.promotions.reportApi}         ${rootApi}/analytics/marketing/reports/promotions/
  Set Global Variable    ${marketing.roi.reportApi}                ${rootApi}/analytics/marketing/reports/roi/

  # Sales Manager #
  Set Global Variable    ${sales-manager.customer-reportApi}              ${rootApi}/analytics/sales-manager/customer-report/
  Set Global Variable    ${sales-manager.customersApi}                    ${rootApi}/analytics/sales-manager/customers/
  Set Global Variable    ${sales-manager.opportunitiesApi}                ${rootApi}/analytics/sales-manager/opportunities/
  Set Global Variable    ${sales-manager.order-historyApi}                ${rootApi}/analytics/sales-manager/order-history/
  Set Global Variable    ${sales-manager.ordersApi}                       ${rootApi}/analytics/sales-manager/orders/
  Set Global Variable    ${sales-manager.product-sales-reportApi}         ${rootApi}/analytics/sales-manager/product-sales-report/
  Set Global Variable    ${sales-manager.product-salesApi}                ${rootApi}/analytics/sales-manager/product-sales/
  Set Global Variable    ${sales-manager.sales-rep-reportApi}             ${rootApi}/analytics/sales-manager/sales-rep-report/
  Set Global Variable    ${sales-manager.sales-rep-reportsApi}            ${rootApi}/analytics/sales-manager/sales-rep-reports/
  Set Global Variable    ${sales-manager.sales-rep-reports.ordersApi}     ${rootApi}/analytics/sales-manager/sales-rep-reports/orders/
  Set Global Variable    ${sales-manager.sales-reportApi}                 ${rootApi}/analytics/sales-manager/sales-report/
  Set Global Variable    ${sales-manager.sales-team-reportApi}            ${rootApi}/analytics/sales-manager/sales-team-report/
  Set Global Variable    ${sales-manager.sales-team-history-reportApi}       ${rootApi}/analytics/sales-manager/sales-team-history-report/
  Set Global Variable    ${sales-manager.sales-team-history-report.ordersApi}       ${rootApi}/analytics/sales-manager/sales-team-history-report/orders/
  Set Global Variable    ${sales-manager.team-forecast-reportApi}         ${rootApi}/analytics/sales-manager/team-forecast-report/
  Set Global Variable    ${sales-manager.team-forecastApi}                ${rootApi}/analytics/sales-manager/team-forecast/
  Set Global Variable    ${sales-manager.team-leadsApi}                   ${rootApi}/analytics/sales-manager/team-leads/
  Set Global Variable    ${sales-manager.team-salesApi}                   ${rootApi}/analytics/sales-manager/team-sales/
  Set Global Variable    ${sales-manager.team-summaryApi}                 ${rootApi}/analytics/sales-manager/team-summary/
  Set Global Variable    ${sales-manager.order-details-reportApi}         ${rootApi}/analytics/sales-manager/order-details-report/

  # Sales Rep #
  Set Global Variable    ${sales-rep.customer-reportApi}                  ${rootApi}/analytics/sales-rep/customer-report/
  Set Global Variable    ${sales-rep.customersApi}                        ${rootApi}/analytics/sales-rep/customers/
  Set Global Variable    ${sales-rep.forecast-reportApi}                  ${rootApi}/analytics/sales-rep/forecast-report/
  Set Global Variable    ${sales-rep.forecastsApi}                        ${rootApi}/analytics/sales-rep/forecasts/
  Set Global Variable    ${sales-rep.indicatorsApi}                       ${rootApi}/analytics/sales-rep/indicators/
  Set Global Variable    ${sales-rep.leadsApi}                            ${rootApi}/analytics/sales-rep/leads/
  Set Global Variable    ${sales-rep.order-details-reportApi}             ${rootApi}/analytics/sales-rep/order-details-report/
  Set Global Variable    ${sales-rep.order-historyApi}                    ${rootApi}/analytics/sales-rep/order-history/
  Set Global Variable    ${sales-rep.ordersApi}                           ${rootApi}/analytics/sales-rep/orders/
  Set Global Variable    ${sales-rep.product-sales-reportApi}             ${rootApi}/analytics/sales-rep/product-sales-report/
  Set Global Variable    ${sales-rep.product-salesApi}                    ${rootApi}/analytics/sales-rep/product-sales/
  Set Global Variable    ${sales-rep.sales-reportApi}                     ${rootApi}/analytics/sales-rep/sales-report/
  Set Global Variable    ${sales-rep.summaryApi}                          ${rootApi}/analytics/sales-rep/summary/

  # Customer Service #
  Set Global Variable    ${customer-service.summaryApi}                   ${rootApi}/analytics/customer-service/summary/
  Set Global Variable    ${customer-service.reportApi}                    ${rootApi}/analytics/customer-service/report/

  # Google #
  Set Global Variable    ${analytics.googleApi}          ${rootApi}/analytics/google/

  ### Customers ###
  Set Global Variable    ${customersApi}                 ${rootApi}/customers/
  Set Global Variable    ${customersApi_v1.1}            ${rootApi_v1.1}/customers/
  Set Global Variable    ${v3.0.customerApi}             ${rootApi_v3.0}/customers/
  Set Global Variable    ${customer.rolesApi_v3.0}       ${rootApi_v3.0}/customer/roles/
  Set Global Variable    ${customer.contactsApi_v3.0}    ${rootApi_v3.0}/customer/contacts/

  ### Persons ###
  Set Global Variable    ${personsApi}                   ${rootApi}/persons/

  ### Mailers ###
  Set Global Variable    ${mailersApi}                   ${rootApi}/mailers/

  ### Payment Processors ###
  Set Global Variable    ${paymentProcessorsApi}         ${rootApi}/payment-processors/

  ### Shippers ###
  Set Global Variable    ${shippersApi}                  ${rootApi}/shippers/

  ### Stores ###
  Set Global Variable    ${storesApi}                    ${rootApi}/stores/
  Set Global Variable    ${storesApi_v1.1}                 ${rootApi_v1.1}/stores/
  Set Global Variable    ${marketersApi}                 ${storesApi}${StoreId}/marketers/

  ### Tax Providers ###
  Set Global Variable    ${taxprovidersApi}              ${rootApi}/tax-providers/

  ### Task Manager ###
  Set Global Variable    ${tasksApi}                     ${rootApi}/tasks/
  Set Global Variable    ${tasks.statusApi}              ${tasksApi}status/
  Set Global Variable    ${taskTemplatesApi}             ${rootApi}/task-templates/

  ### Partners ###
  Set Global Variable    ${partners.customer-acqApi}     ${rootApi}/partners/customer-acq/

  ### Products ###
  Set Global Variable    ${productsApi}                  ${rootApi}/products/
  Set Global Variable    ${v3.0.productsApi}             ${rootApi_v3.0}/products/
  Set Global Variable    ${products.categoriesApi}       ${productsApi}categories/

  ### Items ###
  Set Global Variable    ${itemsApi}                     ${rootApi}/items/
  Set Global Variable    ${itemsApi_v1.1}                ${rootApi_v1.1}/items/

  ### Categories ###
  Set Global Variable    ${categoriesApi}                ${rootApi}/categories/

  ### Sales Orders ###
  Set Global Variable    ${salesOrdersApi}                ${rootApi}/sales-orders/
  Set Global Variable    ${v1.1.salesOrdersApi}           ${rootApi_v1.1}/sales-orders/
  Set Global Variable    ${v3.0.salesOrdersApi}           ${rootApi_v3.0}/sales-orders/

  ### Sales Orders ###
  Set Global Variable    ${proxyApi}                ${rootApi}/proxies/

  ### Support Cases ###
  Set Global Variable    ${supportCaseApi}                ${rootApi}/support-cases/

  ### Report Builders ###
  Set Global Variable    ${reportBuildersApi}             ${rootApi}/report-builders/
  Set Global Variable    ${reportBuilderDimensionsApi}    ${rootApi}/report-builders/dimensions/

  ### Campaigns ###
  Set Global Variable    ${campaignsApi}                   ${rootApi}/campaigns/

  ### Invoices ###
  Set Global Variable    ${invoicesApi}                   ${rootApi}/invoices/

  ### Quotes ###
  Set Global Variable    ${quotesApi}                     ${rootApi}/quotes/
  Set Global Variable    ${v3.0.quotesApi}                ${rootApi_v3.0}/quotes/

  ### Opportunities ###
  Set Global Variable    ${opportunitiesApi}              ${rootApi}/opportunities/

  ### Quotas ###
  Set Global Variable    ${quotasApi}                     ${rootApi}/quotas/

  ### Purchase Orders ###
  Set Global Variable    ${purchaseOrderApi}              ${rootApi}/purchase-orders/
  Set Global Variable    ${v1.1.purchasesOrdersApi}         ${rootApi_v1.1}/purchase-orders/
  Set Global Variable    ${v3.purchasesOrdersApi}         ${rootApi_v3.0}/purchase-orders/

  ### Promotions ###
  Set Global Variable    ${promotionsApi}                 ${rootApi}/promotions/
  Set Global Variable    ${v1.1.promotionsApi}            ${rootApi_v1.1}/promotions/
  Set Global Variable    ${v3.0.promotionsApi}            ${rootApi_v3.0}/promotions/
  Set Global Variable    ${v3.0.promotions.lineItemsApi}  ${v3.0.promotionsApi}line-items/

  ### Reports ###
  Set Global Variable    ${segmentationReportApi}         ${rootApi}/reports/

  ### Sites ###
  Set Global Variable    ${sitesApi}                      ${rootApi}/sites/

  ### Templates ###
  Set Global Variable    ${templatesApi}                  ${rootApi}/templates/

  ### Warehouse ###
  Set Global Variable    ${warehouseApi}                  ${rootApi}/warehouses/
  Set Global Variable    ${v3.0.warehousesAPI}            ${rootApi_v3.0}/warehouses/
  Set Global Variable    ${quarantineApi}                 ${rootApi}/quarantines/
  Set Global Variable    ${v3.0.quarantinesApi}           ${rootApi_v3.0}/quarantines/

  ### Teams ###
  Set Global Variable    ${teamsApi}                      ${rootApi}/teams/
  ### Companies ###
  Set Global Variable    ${companyApi}                    ${rootApi}/companies/
  ### Shipping Zones
  Set Global Variable    ${shippingZonesApi}              ${rootApi}/shipping-zones/
  Set Global Variable    ${shippingPackageApi}              ${rootApi}/shipping-packages/

  ### Custom columns
  Set Global Variable    ${customColumnsApi}              ${rootApi}/custom-columns/

  ### Admin Settings ###
  Set Global Variable    ${fulfillmentSettingApi}              ${rootApi}/fulfillment/settings/
  Set Global Variable    ${fulfillment3PLSettingApi}           ${rootApi}/fulfillment/3pl/settings/
  Set Global Variable    ${creditLimitSettingApi}              ${rootApi}/credit_limits/settings/
  Set Global Variable    ${stockLevelSettingApi}               ${rootApi}/stock-level/settings/
  Set Global Variable    ${approvalSettingApi}                 ${rootApi}/approval/settings/

  ### Sales Rep ###
  Set Global Variable    ${salesRepsApi}           ${rootApi}/sales-reps/

  ### Custom Filter ###
  Set Global Variable    ${CustomFilterAPI}         ${rootApi}/custom-filters/

  ### Custom Column ###
  Set Global Variable    ${CustomColumnAPI}         ${rootApi}/custom-columns/

  ### Payment ###
  Set Global Variable    ${paymentApi}    ${rootApi}/payments/

  ### Credit Memo ###
  Set Global Variable    ${creditMemoApi}    ${rootApi}/credit-memos/

  ### Brand ###
  Set Global Variable    ${brandsApi}    ${rootApi}/brands/
  ### Supplier ###
  Set Global Variable    ${supplierAPI}    ${rootAPI}/supplier/
  Set Global Variable    ${v3.0.supplierAPI}    ${rootApi_v3.0}/suppliers/

  ### Jobs ###
  Set Global Variable    ${jobsAPI}    ${rootApi}/jobs/
  Set Global Variable    ${receieve-items.jobsAPI}    ${jobsAPI}receive-items/

  ### Shipping Carrier ###
  Set Global Variable    ${shippingCarrierApi}    ${rootApi}/shipping-carrier/

  ### Quantity Adjustment ###
  Set Global Variable    ${quantityAdjustmentApi}    ${rootApi}/quantity-adjustments/

  ### Return Request ###
  Set Global Variable    ${returnRequestApi}         ${rootApi}/return-request/
  Set Global Variable    ${v3.0.returnRequestApi}    ${rootApi_v3.0}/return-request/

  ### Quarantine ###
  Set Global Variable    ${v3.0.quarantineApi}    ${rootApi_v3.0}/quarantines/

  ### Price Level ###
  Set Global Variable    ${v1.1.priceLevelApi}    ${rootApi_v1.1}/price-level/
  Set Global Variable    ${v3.1.quarantineApi}    ${rootApi_v3.1}/quarantines/

  ### Quantity Schedule
  Set Global Variable    ${quantityScheduleApi}             ${rootApi}/quantity-schedule/
  Set Global Variable    ${publishQuantityScheduleApi}      ${rootApi}/quantity-schedule/publish/
  Set Global Variable    ${quantityScheduleDetailApi}       ${rootApi}/quantity-schedule/detail/
  Set Global Variable    ${customQuantityScheduleApi}       ${rootApi}/quantity-schedule/customs/

  ### Transfers Product
  Set Global Variable    ${v3.0.externalTransfersApi}    ${rootApi_v3.0}/ext-transfers/

  ### Mail Template
  Set Global Variable    ${mailTemplateApi}    ${rootApi}/mail-templates/

  ### Customer Portal
  Set Global Variable    ${customerPortalApi}    ${rootApi}/customer-portal/
  Set Global Variable    ${customerPortalApi_v1.1}    ${rootApi_v1.1}/customer-portal/
  Set Global Variable    ${customerPortalApi_v3.0}    ${rootApi_v3.0}/customer-portal/

  ### Cart Checkout
  Set Global Variable    ${cartApi}    ${rootApi}/carts/

  ### Pages
  Set Global Variable    ${pagesApi}    ${rootApi}/pages/

  ### Webform Dropdown
  Set Global Variable    ${webformApi}    ${rootApi}/web-forms/
  Set Global Variable    ${webform.dropdownApi}    ${webformApi}drop-downs/
  Set Global Variable    ${webform.dropdown.customerApi}    ${webform.dropdownApi}customers/

  ### Items Multi
  Set Global Variable    ${items.multiApi_v3.0}    ${rootApi_v3.0}/items/multi/

  ### Order Matrix
  Set Global Variable    ${orderMatrixApi}    ${rootApi}/order-matrix/
  Set Global Variable    ${v3.0.orderMatrixAPI}    ${rootApi_v3.0}/order-matrix/
