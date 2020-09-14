class Question

  attr_reader :display_question

  def initialize(current_player)
    @current_player = current_player
    @current_answer
  end

  def generate_random_number
    rand(20) + 1
  end

  def display_question
    first_num = generate_random_number
    second_num = generate_random_number
    @current_answer = first_num + second_num

    question = "What does #{first_num} plus #{second_num} equal?"

    return "#{current_player}: #{question}"
  end

  def player_answer
    answer = gets.chomp.to_i

    if answer == @current_answer
      return "#{current_player}: YES! You are correct."
    else
      @current_player.lose_a_life
      return "#{@current_player}: Seriously?! No!"
    end
  end

end