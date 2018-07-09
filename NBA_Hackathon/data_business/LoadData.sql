use nba_hackathon_business;

# Load game_data
LOAD DATA LOW_PRIORITY INFILE "/Users/MP/Documents/Coding/NYU_git/NBA_Hackathon/data_business/game_data.csv"
INTO TABLE game_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n';