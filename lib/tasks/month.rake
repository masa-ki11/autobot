require 'roo'


namespace :month do 
  desc "month_line"
  task month_message: :environment do 
    xlsx = Roo::Excelx.new('./month.xlsx')
      @sum = 0
      xlsx.each_row_streaming(offset: 0) do |row|
        row.each do |cell|
          next if cell.value.nil?
          @sum += cell.value
        end
      end
      average = @sum / 5
      message = {
        type: 'text',
        text: "お疲れ様です。今月の生産量を報告致します。
今月の生産量は#{@sum}です。
日産平均は#{average}です。" 
      }
  end
end