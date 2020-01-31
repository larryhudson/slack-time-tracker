class Say < SlackRubyBot::Commands::Base
    command 'say' do |client, data, match|
        puts match['expression']
        client.say(text: match['expression'], channel: data.channel)
    end
end

class Start < SlackRubyBot::Commands::Base
    command 'start' do |client, data, match|
        @user = User.first
        @user.jobs.create(name: match['expression'])
    end
end