@cloud
@redis
Feature: Redis Connector
    In order to show you how to use Steeltoe for connecting to Redis
    You can run some Redis connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: Redis Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app redis-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service redis myRedisService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://redis-connector.x.y.z/Home/CacheData
        Then you should see "Key1=Key1Value"
        And you should see "Key2=Key2Value"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: Redis Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app redis-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service redis myRedisService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://redis-connector.x.y.z/Home/CacheData
        Then you should see "Key1=Key1Value"
        And you should see "Key2=Key2Value"

    @netcoreapp2.1
    @win10-x64
    Scenario: Redis Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app redis-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service redis myRedisService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://redis-connector.x.y.z/Home/CacheData
        Then you should see "Key1=Key1Value"
        And you should see "Key2=Key2Value"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: Redis Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app redis-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service redis myRedisService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://redis-connector.x.y.z/Home/CacheData
        Then you should see "Key1=Key1Value"
        And you should see "Key2=Key2Value"

    @net461
    @win10-x64
    Scenario: Redis Connector for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app redis-connector -f net461 -r win10-x64
        And you run: st add-service redis myRedisService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you get https://redis-connector.x.y.z/Home/CacheData
        Then you should see "Key1=Key1Value"
        And you should see "Key2=Key2Value"
