@cloud
@mysql
Feature: MySql Connector
    In order to show you how to use Steeltoe for connecting to MySql
    You can run some MySql connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: MySql Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysql-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysql-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: MySql Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app mysql-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysql-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp2.1
    @win10-x64
    Scenario: MySql Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysql-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysql-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: MySql Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app mysql-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysql-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @net461
    @win10-x64
    Scenario: MySql Connector for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysql-connector -f net461 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysql-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"
