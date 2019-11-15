@cloud
Feature: CloudFoundry Configuration
    In order to show you how to use Steeltoe for CloudFoundry configurations
    You can run some CloudFoundry configuration samples

    @netcoreapp3.0
    @win10-x64
    Scenario: CloudFoundry Configuration for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app cloud -f netcoreapp3.0 -r win10-x64
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app cloud is started
        When you get https://cloud.x.y.z/Home/CloudFoundry
        Then you should see "vcap:application:application_name = cloud"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: CloudFoundry Configuration for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app cloud -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app cloud is started
        When you get https://cloud.x.y.z/Home/CloudFoundry
        Then you should see "vcap:application:application_name = cloud"

    @netcoreapp2.1
    @win10-x64
    Scenario: CloudFoundry Configuration for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app cloud -f netcoreapp2.1 -r win10-x64
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app cloud is started
        When you get https://cloud.x.y.z/Home/CloudFoundry
        Then you should see "vcap:application:application_name = cloud"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: CloudFoundry Configuration for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app cloud -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app cloud is started
        When you get https://cloud.x.y.z/Home/CloudFoundry
        Then you should see "vcap:application:application_name = cloud"

    @net461
    @win10-x64
    Scenario: CloudFoundry Configuration for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app cloud -f net461 -r win10-x64
        And you run: st target cloud-foundry
        And you run: st deploy
        And you wait until CloudFoundry app cloud is started
        When you get https://cloud.x.y.z/Home/CloudFoundry
        Then you should see "vcap:application:application_name = cloud"
