require 'roo'
require "google_drive"

namespace :month do 
  desc "month_line"
  task month_message: :environment do 
    session = GoogleDrive::Session.from_config("config.json")
    sheet = session.spreadsheet_by_key("1dQN10PQpo2EWcXZNEUswEzU89xpfuIKUQopUKAZxsmA").worksheets[0]
    sum = sheet[1,1]
      message = {
        type: 'text',
        text: "お疲れ様です。今月の生産量を報告致します。
今月の生産量は#{sum}です。
日産平均は#{average}です。" 
      }
  end
end