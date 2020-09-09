namespace :push do 
  desc "push_line"
  task push_line_message: :environment do # 以下にpush機能のタスクを書く。
    message = {
      type: 'text',
      text: '本日も頑張りましょう。目標は今週完成。'
    }
    client = Line::Bot::Client.new { |config|
      config.channel_secret = "2184e5fba4764e7c5cac844d54039c88"
      config.channel_token = "6kSgkG+I1o1bmCQ8ChGNBQ8YHuDkwyqDEIHkytFUDJgHE7m/eg4zlNbBzf08SfVobtT/r03VeItf1PqeXB2OXQ/GqLftlV0twUYv5KV90qFjyf459088efH0hePkJSSKhUKBkMCbXhYrnR8BwBvVywdB04t89/1O/w1cDnyilFU="
    }
    
    response = client.push_message("U28fd578f795cba360b1410dd5875e03d", message)
    p response
  end
end