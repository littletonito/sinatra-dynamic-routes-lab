require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
      @name = params[:name].reverse
      "#{@name}"
    end

    get '/square/:number' do
      @square = params[:number].to_i ** 2
      "#{@square}"
    end

    get '/say/:number/:phrase' do
      say = ""
      params[:number].to_i.times do
        say += params[:phrase]
      end
      say
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i


      if params[:operation] == "add"
          (@num1 + @num2).to_s
          # "#{answer}"
        elsif params[:operation] == "subtract"
          (@num1 - @num2).to_s
          # "#{answer}"
        elsif params[:operation] == "multiply"
          answer = (@num1 * @num2).to_s
          # "#{answer}"
        elsif params[:operation] == "divide"
          answer = @num1 / @num2
          "#{answer}"
      end
    end
end