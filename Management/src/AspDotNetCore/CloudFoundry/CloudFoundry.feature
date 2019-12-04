@cloud
@mysql
Feature: Cloud Foundry Samples
    In order to show you how to use Steeltoe Management Endpoint
    You can run some Steeltoe Management Endpoint samples

    @netcoreapp3.0
    @win10-x64
    Scenario: CloudFoundry Management for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app actuator -f netcoreapp3.0 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        Then you should be able to access CloudFoundry app actuator management endpoints

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: CloudFoundry Management for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app actuator -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        Then you should be able to access CloudFoundry app actuator management endpoints

    @netcoreapp2.1
    @win10-x64
    Scenario: CloudFoundry Management for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app actuator -f netcoreapp2.1 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        Then you should be able to access CloudFoundry app actuator management endpoints

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: CloudFoundry Management for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app actuator -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        Then you should be able to access CloudFoundry app actuator management endpoints

    @net461
    @win10-x64
    Scenario: CloudFoundry Management for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app actuator -f net461 -r win10-x64
        And you run: st add-service mysql myMySqlService
        And you run: st target cloud-foundry
        And you run: st deploy
        Then you should be able to access CloudFoundry app actuator management endpoints
