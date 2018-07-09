use nba_hackathon_business;

# create tables
# Game Data
CREATE TABLE game_data(
	Season VARCHAR(45),
    Game_ID	VARCHAR(45),
    Game_Date VARCHAR(45),
    Team VARCHAR(45),
	Location VARCHAR(45),
	Wins_Entering_Gm VARCHAR(45),
	Losses_Entering_Gm VARCHAR(45),
	Team_Minutes VARCHAR(45),
	Final_Score VARCHAR(45),
	Lead_Changes VARCHAR(45),
	Ties VARCHAR(45),
	Largest_Lead VARCHAR(45),
    Full_Timeouts VARCHAR(45),
    Short_Timeouts VARCHAR(45),
    Qtr_4_Score VARCHAR(45),
    L2M_Score VARCHAR(45)
);

# Load game_data
LOAD DATA LOW_PRIORITY 
LOCAL INFILE "/Users/MP/Documents/Coding/NYU_git/NBA_Hackathon/data_business/game_data.csv"
REPLACE INTO TABLE game_data
CHARACTER SET utf8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Create Player Data
CREATE TABLE player_data(
	Season VARCHAR(45),
	Game_ID VARCHAR(45),
	Game_Date VARCHAR(45),
	Team VARCHAR(45),
	Person_ID VARCHAR(45),
	Name VARCHAR(45),
	ASG_Team VARCHAR(45),
	Active_Status VARCHAR(45),
	Minutes VARCHAR(45),
	Points VARCHAR(45),
	Defensive_Rebounds VARCHAR(45),
	Offensive_Rebounds VARCHAR(45),
	Assists VARCHAR(45),
	Steals VARCHAR(45),
	Blocks VARCHAR(45),
	Turnovers VARCHAR(45),
	Field_Goals VARCHAR(45),
	Field_Goals_Attempted VARCHAR(45),
	Three_Pointers VARCHAR(45),
	Three_Pointers_Attempted VARCHAR(45),
	Free_Throws VARCHAR(45),
	Free_Throws_Attempted VARCHAR(45),
	Personal_Fouls VARCHAR(45)
);

LOAD DATA LOW_PRIORITY 
LOCAL INFILE "/Users/MP/Documents/Coding/NYU_git/NBA_Hackathon/data_business/player_data.csv"
REPLACE INTO TABLE player_data
CHARACTER SET utf8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Create Training Set
CREATE TABLE training(
	Season VARCHAR(45),
	Game_ID VARCHAR(45),
    Game_Date VARCHAR(45),
	Away_Team VARCHAR(45),
	Home_Team VARCHAR(45),
	Country VARCHAR(45),
	Rounded_Viewers VARCHAR(45)
);

LOAD DATA LOW_PRIORITY 
LOCAL INFILE "/Users/MP/Documents/Coding/NYU_git/NBA_Hackathon/data_business/training_set.csv"
REPLACE INTO TABLE training
CHARACTER SET utf8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Create Test Set
CREATE TABLE test(
	Season VARCHAR(45),
	Game_ID VARCHAR(45),
    Game_Date VARCHAR(45),
	Away_Team VARCHAR(45),
	Home_Team VARCHAR(45),
	Total_Viewers VARCHAR(45)
);

LOAD DATA LOW_PRIORITY 
LOCAL INFILE "/Users/MP/Documents/Coding/NYU_git/NBA_Hackathon/data_business/test_set.csv"
REPLACE INTO TABLE test
CHARACTER SET utf8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT unique FROM game_data
WHERE Team_Minutes IS NULL;