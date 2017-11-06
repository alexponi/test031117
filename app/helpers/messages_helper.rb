module MessagesHelper
  def number_of_requests
    a = Message.count.to_s
    size = a.size

    if size == 1
      number = "0" + a[size - 1]
    elsif size > 1
      number = a[size - 2] + a[size - 1]
    else
      number = "0"
    end
    number
  end

  def request_string
    req_array = ["запросов", "запрос", "запроса"]
    number = number_of_requests
    if number[0] == "1"
      string = req_array[0]
    elsif number[1] == "1"
      string = req_array[1]
    elsif number[1] == "2" || number[1] == "3" || number[1] == "4"
      string = req_array[2]
    else
      string = req_array[0]
    end
  end

  def request_num
    Message.count.to_s
  end
end