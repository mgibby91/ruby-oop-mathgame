class Question

  attr_reader :current_player, :current_answer, :current_question

  def initialize(current_player)
    @current_player = current_player
    @current_answer
    @current_question
  end

  def generate_random_number
    return rand(20) + 1
  end

  def display_question
    first_num = generate_random_number
    second_num = generate_random_number
    @current_answer = first_num + second_num

    question = "What does #{first_num} plus #{second_num} equal?"

    @current_question = "#{@current_player.name}: #{question}"
    return @current_question
  end

  def player_answer
    answer = gets.chomp.to_i

    if answer == @current_answer
      puts "#{@current_player.name}: YES! You are correct."
    else
      @current_player.lose_a_life
      puts "#{@current_player.name}: Seriously?! No!"
    end
  end

end