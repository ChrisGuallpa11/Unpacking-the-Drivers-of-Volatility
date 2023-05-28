library(ggplot2)
library(dplyr)
library(readr)
library(tidyr)
library(gridExtra)
library(tufte)
library(tidyverse)
library(dplyr)

#(Debt/Equity ratio changes)

#volatility = volatility[-c(2199:4279), ]

#revenue <- approx(apple_financials$Date, apple_financials$TotalAssets, 
#                  xout = apple_stock$Date, method = "linear")
#names(revenue) = c('Date', 'Revenue')

#returnss <- diff(log(apple_stock$Adj.Close))

#apple_stock = apple_stock[-1, ]
#apple_stock$returns = returnss

#data <- merge(apple_stock[c('Date', 'returns')], revenue, by = "Date", all = FALSE)

# Fit GARCH model without external regressor
#spec_no_reg <- ugarchspec(variance.model = list(model = "sGARCH", garchOrder = c(1, 1)), 
#                          mean.model = list(armaOrder = c(1, 0), include.mean = TRUE), 
#                          distribution.model = "norm")

#fit_no_reg <- ugarchfit(spec_no_reg, data = data$returns)

#print(fit_no_reg)

# Fit GARCH model with external regressor
#spec_with_reg <- ugarchspec(variance.model = list(model = "eGARCH", garchOrder = c(1, 1)), 
#                            mean.model = list(armaOrder = c(1, 0), include.mean = TRUE), 
#                            distribution.model = "norm")

#fit_with_reg <- ugarchfit(spec_with_reg, data = data$returns, external.regressors = data$Revenue)

#aic2 <- infocriteria(fit_with_reg)[2]
#aic2

#print(fit_with_reg)

# Extract estimated coefficients
#coefficients <- coef(fit_with_reg)
#coefficients

# Get standard errors
#se <- sqrt(diag(vcov(fit_with_reg)))
#se

# Compute t-statistics
#t_stat <- coefficients / se
#t_stat

#df <- nrow(data) - length(coefficients)
#df

# Compute p-values
#p_values <- 2 * pt(abs(t_stat), df = df, lower.tail = FALSE)

#p_values


#> plot.ts(apple_stock$Adj.Close)
#> plot.ts(returnss)
#> rt = diff(apple_stock$Adj.Close)
#> plot.ts(rt)
#> ArchTest(returnss)
#> garch(apple_stock$LogReturn, grad = "numerical", trace = FALSE)

#cpt <- cpt.mean(volatility$AppleVolatilityIndex, method = "PELT")
#cpt

cpt@cpts






#Melt data frame into long format

#df_1 = melt(apple_financials[c('Date', desired_financials[c(1, 12)])],  id.vars = 'Date', variable.name = 'Series')
#df_2 = melt(apple_financials[c('Date', desired_financials[c(4, 8, 11)])],  id.vars = 'Date', variable.name = 'Series')
#df_3 = melt(apple_financials[c('Date', desired_financials[c(2, 3)])],  id.vars = 'Date', variable.name = 'Series')
#df_4 = melt(apple_financials[c('Date', desired_financials[c(5, 6, 7)])],  id.vars = 'Date', variable.name = 'Series')
#df_5 = melt(apple_financials[c('Date', desired_financials[c(9, 10)])],  id.vars = 'Date', variable.name = 'Series')

#ggplot(df_1, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1985-09-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_2, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1985-09-30","2022-12-31"))) + ylim(c(-2.5e+10, 2.5e+10)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_3, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1985-09-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_4, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1985-09-30","2022-12-31"))) + ylim(c(0, 3e+11)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_5, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1990-09-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 

#Melt data frame into long format

#df_1 = melt(amazon_financials[c('Date', desired_financials[c(1, 12)])],  id.vars = 'Date', variable.name = 'Series')
#df_2 = melt(amazon_financials[c('Date', desired_financials[c(4, 8, 11)])],  id.vars = 'Date', variable.name = 'Series')
#df_3 = melt(amazon_financials[c('Date', desired_financials[c(2, 3)])],  id.vars = 'Date', variable.name = 'Series')
#df_4 = melt(amazon_financials[c('Date', desired_financials[c(5, 6, 7)])],  id.vars = 'Date', variable.name = 'Series')
#df_5 = melt(amazon_financials[c('Date', desired_financials[c(9, 10)])],  id.vars = 'Date', variable.name = 'Series')

#ggplot(df_1, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1996-03-31","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_2, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1996-03-31","2022-12-31"))) + ylim(c(-2.5e+10, 2.5e+10)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_3, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1996-03-31","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_4, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1996-03-31","2022-12-31"))) + ylim(c(0, 2e+11)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_5, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("1996-03-31","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 

#Melt data frame into long format

#df_1 = melt(google_financials[c('Date', desired_financials[c(1, 12)])],  id.vars = 'Date', variable.name = 'Series')
#df_2 = melt(google_financials[c('Date', desired_financials[c(4, 8, 11)])],  id.vars = 'Date', variable.name = 'Series')
#df_3 = melt(google_financials[c('Date', desired_financials[c(2, 3)])],  id.vars = 'Date', variable.name = 'Series')
#df_4 = melt(google_financials[c('Date', desired_financials[c(5, 6, 7)])],  id.vars = 'Date', variable.name = 'Series')
#df_5 = melt(google_financials[c('Date', desired_financials[c(9, 10)])],  id.vars = 'Date', variable.name = 'Series')

#ggplot(df_1, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("2003-06-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_2, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("2003-06-30","2022-12-31"))) + ylim(c(-2.5e+10, 2.5e+10)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_3, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("2003-06-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_4, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("2003-06-30","2022-12-31"))) + ylim(c(0, 3e+11)) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 
#ggplot(df_5, aes(Date, value)) + geom_point(na.rm = TRUE) + facet_grid(Series ~ .) + xlim(as.Date(c("2003-06-30","2022-12-31"))) + labs(y = "Number of Dollars", title="Time Series") + theme_bw() + theme(plot.title = element_text(hjust = 0.5)) 


# Cross Check Process

#For this project, there will be some leverage work from published literature
#on the topic of volatility that I can use to cross check my findings and techniques
#since my project is not a new study. However, I plan to expand on their findings
#and specifically include the company's financials into the analysis while also 
#proving their findings. The project will also be based on more recent data, so 
#the recent data can add more reproducibility and replicability.

#The first published literature is by Roni Bhowmik and Shouyang Wang^[[Stock Market Volatility and Return Analysis: A Systematic Literature Review](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7517016/)], who studied 
#an important field of research, which is the stock market return and 
#volatility analysis, through a systematic literature review. They found that in 
#summary, many scholars suggested that the GARCH (a statistical model to analyze 
#a time-series data set) family model provides better results in the volatility 
#analysis compared to other methods. The published work can be an example of the 
#different analysis methods that I can use or compare mine to. 

#The second published literature is by Gustavo S. Cortes, Angela Vossmeyer, and Marc D. Weidenmier^[[STOCK VOLATILITY AND THE WAR PUZZLE](https://www.nber.org/system/files/working_papers/w29837/w29837.pdf)], who 
#investigated the volatility in the U.S. stock market during war times. They found
#the volatility to be low during times the U.S. are in war. They justified this 
#result with three different reasons (I plan to dive into the paper in more detail 
#throughout my project), which I can use to explain the effect qualitative data 
#has on the changes of volatility. While the war times may not be necessarily
#relevant to this project, the effect qualitative data has on volatility is relevant
#(I plan to use the work as further proof for my conclusion). 

#Finally, the third published literature is by Rashmi Chaudhary, Priti Bakhshi, and Hemendra Gupta^[[Volatility in International Stock Markets: An Empirical Study during COVID-19](https://www.mdpi.com/1911-8074/13/9/208)], who conducted an 
#empirical study to attempt to analyze the impact of COVID-19 on the performance of 
#the top 10 stock indices of the global economy, which means the study can provide
#an international aspect on my study of volatility. They found that the new virus
#increased the volatility in these indices, which means the stock markets became
#more unstable. Therefore, I can use this study, which was based on a well-known 
#recession, to cross check my findings. 


# Possible Experts

#For the project, I have a few on-campus "experts" who can possibly give me feedback. 
#As of right now, I can possibly ask John Lord, an accounting professor, 
#Christopher Makler, an economics professor, or Markus Pegler, an investment 
#science professor. I will soon narrow down my options! 
  
  #Update: I just emailed Jonh Lord, requesting for his help.



# Limitations

#As previously stated, this project presents several challenges that require 
#careful consideration of limitations and complexities involved. One of the main 
#challenges is the availability and quality of volatility data, which can vary 
#significantly. To address this limitation, appropriate data sources will be 
#carefully selected, and data will be thoroughly cleaned and verified before 
#analysis. The credibility of sources will also be taken into account.

#Furthermore, volatility can be affected by various factors, such as economic, 
#political, and social factors. To address this limitation, confounding factors 
#will be identified and controlled for during statistical analysis. Qualitative 
#explanations will also be researched during the analysis to provide a 
#comprehensive understanding of the factors affecting volatility.

#Another limitation that can arise is the establishment of causality. Establishing 
#causality is difficult in any empirical project, including volatility studies. 
#It can be challenging to determine whether changes in volatility are caused by 
#a specific factor. To address this limitation, various causal inference 
#techniques will be considered to help establish causal relationships between 
#variables.



#Data Sets to Use 

#Volatility (Daily)

volatility_general = read.csv('Volatility1.csv') #CBOE Volatility Index: VIX 
apple_volatility = read.csv('Volatility_apple.csv') #CBOE Equity VIX on Apple
amazon_volatility = read.csv('Volatility_amazon.csv') #CBOE Equity VIX on Amazon
google_volatility = read.csv('Volatility_google.csv') #CBOE Equity VIX on Google

volatility_1 = right_join(volatility_general, apple_volatility)
volatility_2 = right_join(volatility_1, amazon_volatility)

volatility_final = right_join(volatility_2, google_volatility) 

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

econ_final = full_join(econ_2, gdp) #Final -------------------------------------
View(econ_final)

final_1 = right_join(volatility_final, SP500_stock)
final_2 = right_join(final_1, inflation)
final_3 = right_join(final_2, dollar_index)
colnames(final_3) = c('Date', 'Volatility', 'AppleVolatility', 'AmazonVolatility', 'GoogleVolatility', 'SP500Stock', 'Inflation', 'DollarIndex')

#Apple Info

apple_balance_sheet = read.csv('AAPL_quarterly_balance-sheet.csv') #Done Quarterly
apple_cash_flow = read.csv('AAPL_quarterly_cash-flow.csv') #Done Quarterly
apple_financials = read.csv('AAPL_quarterly_financials.csv') #Done Quarterly
apple_valuation_measures = read.csv('AAPL_quarterly_valuation_measures.csv') #Done Quarterly

#Combining Data Sets 

apple_finances_1 = full_join(apple_balance_sheet, apple_cash_flow)
apple_finances_2 = full_join(apple_finances_1, apple_financials)

apple_finances_final = full_join(apple_finances_2, apple_valuation_measures) #Final ------------
apple_stock = read.csv('AAPL_stock.csv') #Done Daily, Final --------------------

View(apple_finances_final)
View(apple_stock)

#Amazon Info

amazon_balance_sheet = read.csv('AMZN_quarterly_balance-sheet.csv') #Done Quarterly
amazon_cash_flow = read.csv('AMZN_quarterly_cash-flow.csv') #Done Quarterly
amazon_financials = read.csv('AMZN_quarterly_financials.csv') #Done Quarterly
amazon_valuation_measures = read.csv('AMZN_quarterly_valuation_measures.csv') #Done Quarterly

#Combining Data Sets

amazon_finances_1 = full_join(amazon_balance_sheet, amazon_cash_flow)
amazon_finances_2 = full_join(amazon_finances_1, amazon_financials)

amazon_finances_final = full_join(amazon_finances_2, amazon_valuation_measures) #Final ---------
amazon_stock = read.csv('AMZN_stock.csv') #Done Daily, Final -------------------

#Google Info

google_balance_sheet = read.csv('GOOG_quarterly_balance-sheet.csv') #Done Quarterly
google_cash_flow = read.csv('GOOG_quarterly_cash-flow.csv') #Done Quarterly
google_financials = read.csv('GOOG_quarterly_financials.csv') #Done Quarterly
google_valuation_measures = read.csv('GOOG_quarterly_valuation_measures.csv') #Done Quarterly

#Combining Data Sets

google_finances_1 = full_join(google_balance_sheet, google_cash_flow)
google_finances_2 = full_join(google_finances_1, google_financials)

google_finances_final = full_join(google_finances_2, google_valuation_measures) #Final ---------
google_stock = read.csv('GOOG_stock.csv') #Done Daily, Final -------------------

#More Combining

apple_stock_adj = subset(apple_stock, select = -c(Open, High, Low))
names(apple_stock_adj) = c('Date', 'Apple-Close', 'Apple-Adjusted-Close', 'Apple-Volume')
amazon_stock_adj = subset(amazon_stock, select = -c(Open, High, Low))
names(amazon_stock_adj) = c('Date', 'Amazon-Close', 'Amazon-Adjusted-Close', 'Amazon-Volume')
google_stock_adj = subset(google_stock, select = -c(Open, High, Low))
names(google_stock_adj) = c('Date', 'Google-Close', 'Google-Adjusted-Close', 'Goolge-Volume')

combine_stock_1 = full_join(apple_stock_adj, amazon_stock_adj)
combine_stock_2 = full_join(combine_stock_1, google_stock_adj)

final_data = right_join(final_3, combine_stock_2) #Final -----------------------

View(final_data)
#write.csv(final_data,file='/Users/Christian/Volatility.csv')
#write.csv(econ_final,file='/Users/Christian/Economics.csv')
#write.csv(apple_finances_final,file='/Users/Christian/Apple_financials.csv')
#write.csv(apple_stock,file='/Users/Christian/Apple_stock.csv')
#write.csv(amazon_finances_final,file='/Users/Christian/Amazon_financials.csv')
#write.csv(amazon_stock,file='/Users/Christian/Amazon_stock.csv')
#write.csv(google_finances_final,file='/Users/Christian/Google_financials.csv')
#write.csv(google_stock,file='/Users/Christian/Google_stock.csv')
