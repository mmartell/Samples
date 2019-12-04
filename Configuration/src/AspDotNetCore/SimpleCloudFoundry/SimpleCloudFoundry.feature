@cloud
@configserver
Feature: Simple CloudFoundry Configuration
    In order to show you how to use Steeltoe for simple CloudFoundry configurations
    You can run some simple CloudFoundry configuration samples

    @netcoreapp3.0
    @win10-x64
    Scenario: Simple CloudFoundry Configuration for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app foo -f netcoreapp3.0 -r win10-x64
        And you run: st add-service config-server myConfigServer
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://foo.x.y.z/Home/ConfigServerSettings
        Then you should see "spring:cloud:config:name = foo"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: Simple CloudFoundry Configuration for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app foo -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service config-server myConfigServer
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://foo.x.y.z/Home/ConfigServerSettings
        Then you should see "spring:cloud:config:name = foo"

    @netcoreapp2.1
    @win10-x64
    Scenario: Simple CloudFoundry Configuration for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app foo -f netcoreapp2.1 -r win10-x64
        And you run: st add-service config-server myConfigServer
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://foo.x.y.z/Home/ConfigServerSettings
        Then you should see "spring:cloud:config:name = foo"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: Simple CloudFoundry Configuration for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app foo -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service config-server myConfigServer
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://foo.x.y.z/Home/ConfigServerSettings
        Then you should see "spring:cloud:config:name = foo"

    @net461
    @win10-x64
    Scenario: Simple CloudFoundry Configuration for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app foo -f net461 -r win10-x64
        And you run: st add-service config-server myConfigServer
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://foo.x.y.z/Home/ConfigServerSettings
        Then you should see "spring:cloud:config:name = foo"
