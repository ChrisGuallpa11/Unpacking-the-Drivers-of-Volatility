
#Data Sets to Use 


#Economics

SP500_stock = read.csv('SP500_stock.csv') #(Daily)
inflation = read.csv('Inflation.csv') #10-Year Breakeven Inflation Rate (Daily)
dollar_index = read.csv('Dollar_index.csv') #Nominal Broad U.S. Dollar Index (Daily)
interest_rates = read.csv('Interest_rates.csv') #Interest Rates, Discount Rate for United States (Monthly)
unemployment_rates = read.csv('Unemployment.csv') #Unemployment Rates (Monthly)
debt_rate = read.csv('Debt_rate.csv') #Federal Debt: Total Public Debt (Quarterly)
gdp = read.csv('GDP.csv') #Quarterly

econ_1 = right_join(interest_rates, unemployment_rates)
econ_2 = full_join(econ_1, debt_rate)

econ_final = full_join(econ_2, gdp) #Final 

#Apple Info

apple_balance_sheet = read.csv('AAPL_quarterly_balance-sheet.csv') #Done Quarterly
apple_cash_flow = read.csv('AAPL_quarterly_cash-flow.csv') #Done Quarterly
apple_financials = read.csv('AAPL_quarterly_financials.csv') #Done Quarterly
apple_valuation_measures = read.csv('AAPL_quarterly_valuation_measures.csv') #Done Quarterly

#Combining Data Sets 

apple_finances_1 = full_join(apple_balance_sheet, apple_cash_flow)
apple_finances_2 = full_join(apple_finances_1, apple_financials)

apple_finances_final = full_join(apple_finances_2, apple_valuation_measures) #Final
apple_stock = read.csv('AAPL_stock.csv') #Done Daily

#Google Info

google_balance_sheet = read.csv('GOOG_quarterly_balance-sheet.csv') #Done Quarterly
google_cash_flow = read.csv('GOOG_quarterly_cash-flow.csv') #Done Quarterly
google_financials = read.csv('GOOG_quarterly_financials.csv') #Done Quarterly
google_valuation_measures = read.csv('GOOG_quarterly_valuation_measures.csv') #Done Quarterly

#Combining Data Sets

google_finances_1 = full_join(google_balance_sheet, google_cash_flow)
google_finances_2 = full_join(google_finances_1, google_financials)

google_finances_final = full_join(google_finances_2, google_valuation_measures) #Final
google_stock = read.csv('GOOG_stock.csv') #Done Daily

#write.csv(econ_final,file='/Users/Christian/Economics.csv')
#write.csv(apple_finances_final,file='/Users/Christian/Apple_financials.csv')
#write.csv(apple_stock,file='/Users/Christian/Apple_stock.csv')
#write.csv(google_finances_final,file='/Users/Christian/Google_financials.csv')
#write.csv(google_stock,file='/Users/Christian/Google_stock.csv')
