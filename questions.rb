@questions = [
  {
    id: 5,
    problem: '4 * 5',
  answer: 20
   
  },
  {
    id: 6,
    problem: '8 * 5',
  answer: 40
  }
  
]


def get_question(id)
	result = @questions.find{ |question| question[:id]==id}
	# question = result[:problem]
	# puts "question #{question}"
	result
end

def check_answer(v)
 if question[:answer]===v
	 true
 else 
	false
 end
end
