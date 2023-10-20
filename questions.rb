@questions = [
  {
    id: 1,
    problem: '1 + 5',
  answer: 6
   
  },
	{
    id: 2,
    problem: '11 * 5',
  answer: 55
   
  },
	{
    id: 3,
    problem: '493 - 45',
  answer: 448
   
  },
	{
    id: 4,
    problem: '60 * 353',
  answer: 21180
   
  },
	{
    id: 5,
    problem: '4 * 5 + 3',
  answer: 23
   
  },
	{
    id: 6,
    problem: '14 * 5',
  answer: 70
   
  },
	{
    id: 7,
    problem: '(40 /5) + (10/2)',
  answer: 13
   
  },
	{
    id: 8,
    problem: '5689 - 55',
  answer: 5634
   
  },
	{
    id: 9,
    problem: '70 * 34',
  answer: 2380
   
  },
	{
    id: 10,
    problem: '13110 / 69',
  answer: 190
   
  },
	{
    id: 11,
    problem: '4 ^ 5',
  answer: 1024
   
  },
	{
    id: 12,
    problem: '2 ^ 5',
  answer: 32
   
  },
  {
    id: 13,
    problem: '895 ^ 0',
  answer: 1
  },
  
  {
    id: 14,
    problem: '8 * 5',
  answer: 40
  },
  
  {
    id: 15,
    problem: '(18 * 5)^2',
  answer: 8100
  },
  
  {
    id: 16,
    problem: '18 - 5',
  answer: 13
  },
  
  {
    id: 17,
    problem: '111 * 111',
  answer: 12321
  },
  
  {
    id: 18,
    problem: '11 * 11',
  answer: 121
  },
  
  {
    id: 19,
    problem: '0 * 5 + 6 - 3',
  answer: 3
  },
  
  {
    id: 20,
    problem: '0 ^ 0',
  answer: 1
  }
  
]


def get_question(id)
	result = @questions.find{ |question| question[:id]==id}
	result
end

def check_answer(v)
 if question[:answer]==v
	 true
 else 
	false
 end
end
