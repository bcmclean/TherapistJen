import os
import cherrypy
import JenDatabaseQueryTechnique
import parsingStringFunctions
import random
from gensim.summarization import summarize

PATH = os.path.abspath(os.path.dirname(__file__))


sOrQ = "statement"
feeling = "nothing"
subject = "normal"
questionNum = 1

class Root(object):
    @cherrypy.expose
    def index(self):
        return open('static/index.html')

    # Method that is invoked on a post request. The .ajax in index.html points to this method
    @cherrypy.expose
    @cherrypy.tools.allow(methods=('POST'))
    def therapistJenResponce(self, **data):
        #declare theses as global variables. I would think there is another way to do this
        global sOrQ
        global feeling
        global subject
        global questionNum
        text2 = ""

        #if this isnt the first message, check if the user asked a question
        if questionNum != 1 or subject != "normal":
            userInput = data.get("userInput")
            isQuestion = parsingStringFunctions.questionOrStatement(userInput)
            #if the user asked a question, reset
            if(isQuestion == "question"):
                for x in range(1):
                   number = random.randint(1,5)

                if number == 1:
                    return "I think you have entered a question. Please rephrase this as a statement."
                elif number == 2:
                    return "Sorry, I do not understand questions."
                elif number == 3:
                    return "Oops. I am not programmed to handle questions."
                elif number == 4:
                    return "I wish I knew how to answer that."
                elif number == 5:
                    return "Sorry, I am not able to answer questions."

            else:
                sOrQ = "statement"

        if (questionNum > 2):
            userInput = data.get("userInput")

            if len(userInput) > 320:
                text = summarize(userInput)
                text = text.replace("I am", "you are")
                text = text.replace("I was", "you were")
                text = text.replace("I’m", "you're")
                text = text.replace("I", "you")
                text = text.replace(" my", " your")
                text = text.replace(" me.", " you")
                text = text.replace(" me ", " you")
                text = text.replace(" me,", " you")

                text = text.replace("fucking", "really")
                text = text.replace("shitty", "awful")
                text = text.replace("fuck", "care")
                text = text.replace("shit", "bad")

                text2 = "I see that " + text + " "

        #if its after greetings,  if you are being asked if you a suicidial, check the user feeling, or if its the start of a new distinct topic
        if (questionNum == 2) or (questionNum == 7 and subject == "normal") or (questionNum == 3 and subject != "normal"):
            userInput = data.get("userInput")
            print(userInput)
            feeling = JenDatabaseQueryTechnique.getFeeling(userInput)

            #if you are being asked to change topics, check what the user wants
        if (subject == "normal" and questionNum == 8) or (subject == "goal" and questionNum == 7) or (subject =="negative" and questionNum == 7) or (questionNum == 5 and subject == "gratitude"):
            userInput = data.get("userInput")
            #if the subject changed, go back to question 1 for that subject
            oldSubject = subject
            subject = parsingStringFunctions.negativeThoughtsOrGoals(userInput)
            if subject != oldSubject:
                questionNum = 1
        #if the user enters end the conversation, go to the end of normal
        if subject == "end the conversation":
            questionNum = 11
            subject = "normal"

        print("(" + sOrQ + ", " + subject + ", " + feeling + ", " + str(questionNum) + ")")
        response = JenDatabaseQueryTechnique.getResponse(sOrQ, feeling, subject, questionNum)

        questionNum += 1
        #print("(" + sOrQ + ", " + subject + ", " + feeling + ", " + str(questionNum) + ")")

        if (len(text2) < 13):
            text2 = ""

        return text2 + response


if __name__ == '__main__':
    config={
        '/': {
                'tools.staticdir.on': True,
                'tools.staticdir.dir': PATH,
                'tools.staticdir.index': 'index.html',
            },
    }
    cherrypy.quickstart(Root(), '/', config)