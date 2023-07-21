class Questionsz
    attr_accessor :prompt,:answer
    def initialize(prompt,answer)
    @prompt = prompt
    @answer = answer
    end
end

p1= "Who is the current president of the United states of america?\n (a)Osama bin laden\n (b)Putin\n (c)Biden"
p2= "What is the longest river in Africa?\n (a)River Nile\n (b)River victoria\n (c)River Egypt"
p3= "Which is the highest mountain in the world\n (a)Mt Kenya\n (b)Mt Everest\n (c)Mt Kilimanjaro"


questions =[
    mcq1= Questionsz.new(p1,"c"),
    mcq2= Questionsz.new(p2,"a"),
    mcq3= Questionsz.new(p3,"b")
]

def startQuiz(questions)
   user_answer = ""
   score = 0
  for question in questions do
    puts question.prompt
    user_answer = gets.downcase.chomp()
   
    if user_answer == question.answer
     score = score + 1
      #  there is a bug ,because users can enter answers other than 'a' or 'b' or 'c'
 end 
 end    
  puts "You have scored #{score} / #{questions.length}"
end
startQuiz(questions)