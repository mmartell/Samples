@cloud
@mysql
Feature: MySqlEF6 Connector
    In order to show you how to use Steeltoe for connecting to MySql using EntityFramework 6
    You can run some MySql using EntityFramework 6 connection samples

    @net461
    @win10-x64
    Scenario: MySqlEF6 Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app mysqlef6-connector -f net461 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://mysqlef6-connector.x.y.z/Home/MySqlData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"
