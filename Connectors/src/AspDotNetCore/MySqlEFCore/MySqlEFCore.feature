@cloud
@mysql
Feature: MySqlEFCore Connector
    In order to show you how to use Steeltoe for connecting to MySql using EntityFramework Core
    You can run some MySql using EntityFramework Core connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: MySqlEFCore Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysqlefcore-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app mysqlefcore-connector is started
        When you get https://mysqlefcore-connector.x.y.z/Home/MySqlData
        Then you should see "1: Test Data 1 - EF Core TestContext A"
        And you should see "2: Test Data 2 - EF Core TestContext B"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: MySqlEFCore Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app mysqlefcore-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app mysqlefcore-connector is started
        When you get https://mysqlefcore-connector.x.y.z/Home/MySqlData
        Then you should see "1: Test Data 1 - EF Core TestContext A"
        And you should see "2: Test Data 2 - EF Core TestContext B"

    @netcoreapp2.1
    @win10-x64
    Scenario: MySqlEFCore Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysqlefcore-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app mysqlefcore-connector is started
        When you get https://mysqlefcore-connector.x.y.z/Home/MySqlData
        Then you should see "1: Test Data 1 - EF Core TestContext A"
        And you should see "2: Test Data 2 - EF Core TestContext B"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: MySqlEFCore Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app mysqlefcore-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app mysqlefcore-connector is started
        When you get https://mysqlefcore-connector.x.y.z/Home/MySqlData
        Then you should see "1: Test Data 1 - EF Core TestContext A"
        And you should see "2: Test Data 2 - EF Core TestContext B"
