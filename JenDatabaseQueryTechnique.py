import pyodbc
import re
import spacy
import heapq
import sys
from spellchecker import SpellChecker
from operator import itemgetter


nlp = spacy.load('lg', disable=["parser", "ner", "sentencizer", "textcat", "entity_ruler", "merge_noun_chunks", "merge_entities"])

server = "sql04.ok.ubc.ca"
database = "db_jmclean"
username = "jmclean"
password = "34794354"

def getResponse(sOrQ, feeling, subject, questionNum):
    if questionNum <= 30:
        dbstring = ('{ODBC Driver 17 for SQL Server}', '{SQL Server}')[sys.platform == 'win32']
        cnxn = pyodbc.connect(driver="ODBC Driver 17 for SQL Server", host=server, database=database, user=username, password=password)
        cursor = cnxn.cursor()
        if sOrQ == "question":
            cursor.execute('SELECT response FROM ChatBot WHERE sOrQ = \'question\'')
        else:
            cursor.execute('SELECT response FROM ChatBot WHERE sOrQ = \'statement\' AND questionNum = \'' + str(questionNum) + '\'AND feeling = \'' + feeling + '\' AND subject = \'' + subject + '\'')
        for row in cursor:
            print(row[0])
            return row[0]

def checkSeverity(userMessage):

        warning1 = nlp("die")
        warning2 = nlp("kill")

        doc = nlp(userMessage)

        for token in doc:
            verb = nlp(token.text)
            print(token.text, token.pos_)
            if token.pos_ == "VERB" or token.pos_ == "NOUN":
                print(token.text)
                print(verb.similarity(warning2))
                print(verb.similarity(warning1))
                if verb.similarity(warning1) > 0.60 or verb.similarity(warning2) > 0.60:
                    return "true"
        return "false"


spell = SpellChecker()


# Checks to see if any of the words have spelling errors
# by breaking up user message and appending corrections onto new string
def checkForSpellingErrors(userMessage):
    # split user message into words in array
    array = userMessage.lower().split()
    new_user_message = ""
    # for each word in the array
    for word in array:
        if word == '':
            break
        word = word.lower()
        # if the word is spelled correctly, append word back to user message
        if word in spell:
            new_user_message += word
            new_user_message += " "
        # if the word is spelled incorrectly, add most likely corrected word
        else:
            cor = spell.correction(word)
            new_user_message += spell.correction(word)
            new_user_message += " "
    return ''.join(new_user_message)

def getFeeling(message):
    if checkSeverity(message) == "true":
        return "suicidal"

    # set default scores
    overwhelmed = 0
    sad = 0
    empty = 0
    suicidal = 0
    scared = 0
    angry = 0
    anxious = 0

    userMessage = nlp(message)

    # Feelings used for queries
    designated_words = ["overwhelmed", "sad", "empty", "suicidal", "scared", "angry", "anxious"]
    num_words = len(designated_words)

    # Create max heap to track similarity scores
    similarity_scores = []

    # Go through each token in userMessage that is an ADJ
    for token in userMessage:
        adj = "ADJ"
        if token.pos_ == adj:

            # compare each adjective against every feeling
            for i in range(0, num_words):
                word = nlp(token.text)

                # find similarity score for i-th word in list
                similarity = word.similarity(nlp(designated_words[i]))

                print(designated_words[i])
                print("similarity is: ")
                print(similarity)
                print("--------")

                # push word onto max heap
                heapq.heappush(similarity_scores, (similarity * -1, designated_words[i]))

                # return max heap
            matchedFeeling = heapq.heappop(similarity_scores)[1]
            print("****")
            print(matchedFeeling)

            # Add 1 to the best matched feeling
            if matchedFeeling == 'overwhelmed':
                overwhelmed += 1

            if matchedFeeling == "sad":
                sad += 1

            if matchedFeeling == "empty":
                empty += 1

            if matchedFeeling == "suicidal":
                suicidal += 1

            if matchedFeeling == "scared":
                scared += 1

            if matchedFeeling == "angry":
                angry += 1

            if matchedFeeling == "anxious":
                anxious += 1

    overall_scores = []

    print("overwhelmed score: ")
    print(overwhelmed)
    print("sad score: ")
    print(sad)
    print("empty score: ")
    print(empty)
    print("suicidal score: ")
    print(suicidal)
    print("scared score: ")
    print(scared)
    print("angry score: ")
    print(angry)
    print("anxious score: ")
    print(anxious)

    heapq.heappush(overall_scores, (overwhelmed * -1, "overwhelmed"))
    heapq.heappush(overall_scores, (sad * -1, "sad"))
    heapq.heappush(overall_scores, (empty * -1, "empty"))
    heapq.heappush(overall_scores, (suicidal * -1, "suicidal"))
    heapq.heappush(overall_scores, (scared * -1, "scared"))
    heapq.heappush(overall_scores, (angry * -1, "angry"))
    heapq.heappush(overall_scores, (anxious * -1, "anxious"))

    item = heapq.heappop(overall_scores)
    if item[0] == 0:
        return checkSynonyms(message)
    else:
        return item[1]


def checkSynonyms(userMessage):
    #if checkSeverity(userMessage) == "true":
     #   return "suicidal"
    for feeling in feelingType:
        synonyms = feelingType.get(feeling, "default")
        for synonym in synonyms:
            if searchStringFor(userMessage, synonym):
                if type(feeling) is str:
                    print(True)
                else:
                    print(False)
                return feeling
    newUserMessage = checkForSpellingErrors(userMessage)
    if newUserMessage == userMessage:
        return "nothing"
    else:
        for feeling in feelingType:
            synonyms = feelingType.get(feeling, "default")
            for synonym in synonyms:
                if searchStringFor(newUserMessage, synonym):
                    if type(feeling) is str:
                        print(True)
                    else:
                        print(False)
                    return feeling

        return "nothing"


def searchStringFor(userMessage, synonym):
        matchAsRegex = re.search(synonym, userMessage)
        if (matchAsRegex):
            return bool(matchAsRegex)


feelingType = {
        "overwhelmed": ["overwhelmed", "stressed", "grieve", "damage", "overwrought", "concern", "alarm", "astonish", "baffle"],
        "sad" : ["sad", "upset", "dismal", "heartbroken", "mournful", "somber", "sorry", "wistful", "despair", "distress", "down", "hurt", "glum", "gloomy", "grieve", "heartsick", "heavyheart", "morbid", "forlorn"],
        "empty" : ["bare", "blank", "depressed", "desert", "devoid", "dry", "hollow", "empty", "abandoned", "dead", "deflate", "deplete", "exhausted", "lacking", "lack", "vacate", "void"],
        "suicidal" : ["dangerous", "suicide", "suicidal", "destructive", "destruct", "kill myself", "kill me", "dead"],
        "scared" : ["scared", "scare", "afraid", "fearful", "fear", "startled", "petrified", "petrify", "shaken", "terrified", "terrify", "aghast"],
        "angry": ["angry", "annoyed", "bitter", "enraged", "exasperated", "furious", "heated", "indignant", "offend", "resent", "sullen", "uptight", "irritate", "irratable", "mad", "fuming", "huffy", "infuriate", "raging", "rage", "sulky", "sore", "incense"],
        "anxious" : ["anxious", "apprehensive", "concern", "concerned", "distressed", "distress", "fidget", "jittery", "nervous", "restless", "uneasy", "uptight", "aghast", "antsy", "disturb", "fretful", "hyper", "jumpy", "shaking", "shiver", "troubled", "wired"],
    }


