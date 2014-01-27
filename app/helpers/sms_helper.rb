module SmsHelper
  def process_text(from, message)
    message_parts = message.split
    user = User.find_by_phone(from)
    
    case message_parts[0].downcase
    when "weight"
      user.weights.build(weight: message_parts[1])
    end
    
  end
end
