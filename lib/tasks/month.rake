require "google_drive"

namespace :test do 
  desc "month"
  task message: :environment do 
    session = GoogleDrive::Session.from_config("config.json")
    # ここにpush.rakeの23行目を挿入するとできる
    sum = sheet[1,1]
    average = sum.to_i / 3
      message = {
        type: 'text',
        text: "今月の生産量も報告致します。
今月の生産量は#{sum}です。
日産平均は#{average}です。" 
      }
  end
end