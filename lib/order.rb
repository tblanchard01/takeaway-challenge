class Order 
  def show_bill 
     
end 
    def confirm_order 
    arrival_time = Time.new + (60 * 60)
    "Order is on it's way! ETA: #{arrival_time.strftime("%H:%M")}"
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    
    @client.messages.create(
      from: ENV['TWILIO_NUM'], 
      to: ENV['MY_NUM'],
      body: "Order is on it's way, your data is safe! ETA: #{arrival_time.strftime("%H:%M")}")
  end 
end 