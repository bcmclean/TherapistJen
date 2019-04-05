
import re


#Searchs the message for "negative thoughs" or "goals" ignoring case, and returns the first match it sees. If no match, it returns "normal"
def negativeThoughtsOrGoals(userMessage):
    #convert the user message to lower case
    userMessage = userMessage.lower()
    #tries and find "goals", "negative thoughts, or "end the conversation" in the lower cased message
    matchAsRegex = re.search("goal|negative|end the conversation|gratitude", userMessage)
    #if there is a match, return that match else return "normal"
    try:
        responce = matchAsRegex.group(0)
        return responce
    except AttributeError:
        return "normal"

#returns "question" if the user message is a question. Else, it returns "statement"
def questionOrStatement(userMessage):
    #search for a question mark
    matchAsRegex = re.search("\?", userMessage)
    #convert the regex to boolean. This will be true is there was a match
    isQuestion = bool(matchAsRegex)
    #if there was a match, return "question" else return "statement"
    if isQuestion:
        return "question"
    else :
        return "statement"

