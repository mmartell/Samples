@cloud
@rabbitmq
Feature: RabbitMQ Connector
    In order to show you how to use Steeltoe for connecting to RabbitMQ
    You can run some RabbitMQ connection samples

    @netcoreapp3.0
    @win10-x64
    Scenario: Rabbit Connector for .Net Core 3.0 (win10-x64)
        When you run: st init -F
        And you run: st add-app rabbitmq-connector -f netcoreapp3.0 -r win10-x64
        And you run: st add-service rabbitmq myRabbitMQService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you post "Message=HEY THERE" to https://rabbitmq-connector.x.y.z/RabbitMQ/Send
        And you get https://rabbitmq-connector.x.y.z/RabbitMQ/Receive
        Then you should see "Message=HEY THERE"

    @netcoreapp3.0
    @ubuntu.16.04-x64
    Scenario: Rabbit Connector for .Net Core 3.0 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app rabbitmq-connector -f netcoreapp3.0 -r ubuntu.16.04-x64
        And you run: st add-service rabbitmq myRabbitMQService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you post "Message=HEY THERE" to https://rabbitmq-connector.x.y.z/RabbitMQ/Send
        And you get https://rabbitmq-connector.x.y.z/RabbitMQ/Receive
        Then you should see "Message=HEY THERE"

    @netcoreapp2.1
    @win10-x64
    Scenario: Rabbit Connector for .Net Core 2.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app rabbitmq-connector -f netcoreapp2.1 -r win10-x64
        And you run: st add-service rabbitmq myRabbitMQService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you post "Message=HEY THERE" to https://rabbitmq-connector.x.y.z/RabbitMQ/Send
        And you get https://rabbitmq-connector.x.y.z/RabbitMQ/Receive
        Then you should see "Message=HEY THERE"

    @netcoreapp2.1
    @ubuntu.16.04-x64
    Scenario: Rabbit Connector for .Net Core 2.1 (ubuntu.16.04-x64)
        When you run: st init -F
        And you run: st add-app rabbitmq-connector -f netcoreapp2.1 -r ubuntu.16.04-x64
        And you run: st add-service rabbitmq myRabbitMQService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you post "Message=HEY THERE" to https://rabbitmq-connector.x.y.z/RabbitMQ/Send
        And you get https://rabbitmq-connector.x.y.z/RabbitMQ/Receive
        Then you should see "Message=HEY THERE"

    @net461
    @win10-x64
    Scenario: Rabbit Connector for .Net Framework 4.6.1 (win10-x64)
        When you run: st init -F
        And you run: st add-app rabbitmq-connector -f net461 -r win10-x64
        And you run: st add-service rabbitmq myRabbitMQService
        And you run: st target cloud-foundry
        And you run: st deploy
        When you post "Message=HEY THERE" to https://rabbitmq-connector.x.y.z/RabbitMQ/Send
        And you get https://rabbitmq-connector.x.y.z/RabbitMQ/Receive
        Then you should see "Message=HEY THERE"
