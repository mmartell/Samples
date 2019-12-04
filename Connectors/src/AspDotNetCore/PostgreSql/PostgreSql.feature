@cloud
@postgresql
Feature: PostgreSql Connector
    In order to show you how to use Steeltoe for connecting to PostgreSql
    You can run some PostgreSql connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: PostgreSql Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app postgres-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgres-connector.x.y.z/Home/PostgresData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: PostgreSql Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app postgres-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgres-connector.x.y.z/Home/PostgresData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp2.1
    @win10-x64
    Scenario: PostgreSql Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app postgres-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgres-connector.x.y.z/Home/PostgresData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: PostgreSql Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app postgres-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgres-connector.x.y.z/Home/PostgresData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"

    @net461
    @win10-x64
    Scenario: PostgreSql Connector for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app postgres-connector -f net461 -r win10-x64
        And you run: st add-service postgresql myPostgres
        And you run: st args -t cloud-foundry myPostgres -- -c \{\"db_name\":\"postgresample\",\"db_username\":\"steeltoe\",\"owner_name\":\"myowner\",\"owner_email\":\"demo@steeltoe.io\"\}
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://postgres-connector.x.y.z/Home/PostgresData
        Then you should see "Key 1 = Row1 Text"
        And you should see "Key 2 = Row2 Text"
