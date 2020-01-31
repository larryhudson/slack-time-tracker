class Start < SlackRubyBot::Commands::Base
    command 'start' do |client, data, match|
        @user = User.first
        @job_name = match['expression']
        @user.jobs.create(name: @job_name)
        client.say(text: "started job #{@job_name}", channel: data.channel)
    end
end