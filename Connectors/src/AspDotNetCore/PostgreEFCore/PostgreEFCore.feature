@cloud
@postgresql
Feature: PostgreEFCore Connector
    In order to show you how to use Steeltoe for connecting to PostgreSql using EntityFramework Core
    You can run some PostgreSql using EntityFramework Core connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: PostgreEFCore Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app postgresefcore-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgresefcore-connector.x.y.z/Home/PostgresData
        Then you should see "1: Test Data 1 - EF Core TestContext"
        And you should see "2: Test Data 2 - EF Core TestContext"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: PostgreEFCore Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app postgresefcore-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgresefcore-connector.x.y.z/Home/PostgresData
        Then you should see "1: Test Data 1 - EF Core TestContext"
        And you should see "2: Test Data 2 - EF Core TestContext"

    @netcoreapp2.1
    @win10-x64
    Scenario: PostgreEFCore Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app postgresefcore-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgresefcore-connector.x.y.z/Home/PostgresData
        Then you should see "1: Test Data 1 - EF Core TestContext"
        And you should see "2: Test Data 2 - EF Core TestContext"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: PostgreEFCore Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app postgresefcore-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgresefcore-connector.x.y.z/Home/PostgresData
        Then you should see "1: Test Data 1 - EF Core TestContext"
        And you should see "2: Test Data 2 - EF Core TestContext"
