with hotels as( select * from hotel_revenue_historical_full union select * from hotel_2019 union select * from hotel_2020) 
SELECT * from hotels left join market_segment on hotels.market_Segment=market_segment.market_segment left join meal_cost on meal_cost.meal=hotels.meal
  
