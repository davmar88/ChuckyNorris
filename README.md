#Open VS2022 with this git repository
#We need to first run the database script file to build the database.
#So open up your SSMS 2018 and paste the script and run it
#Close you SSMS and locate your MDF and LDF file, copy it to this project's location
#Add the MDF file as new Data Connection, test the connection
#Alter the connection string in ChuckyNorris.Models/ChuckjokesMdfContext on line 13 - I have commented where.
#Make sure the nuget packages needed is included in the project
#Run the project. Please note I had some issues with passing the data from View to controller, I tried several ways to do it using ajax and
#just normal HTTP Post method. The data gets read from the database.
