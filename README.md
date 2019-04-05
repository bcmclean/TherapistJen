# 310-Software-Engineering

Welcome to the world enriched by the wonderful TherapistJen!
Therapist Jen is here as a companion to help you work through negative feelings and thoughts, and help you work towards your positive goals!

Disclaimer: TherapistJen is a tool meant to help encourage positive behaviour and is designed to work alongside other methods such as professional therapy.

# Compiling and Running TherapistJen

To compile and run TherapistJen, one must first be either on the UBC Okanagan campus and connected to an official UBC network, or connected to myvpn.ok.ubc.ca. This will allow TherapistJen to access her database or responses. 

When running TherapistJen, first run the "TherapistJen.py" file and then follow the hyperlink address that is generated in the terminal. This will bring you to TherapistJens's chatroom.

Proceed to use TherapistJen to aid you in the maintenance of your mental health.

# Dependencies:
re, cherrypy, pyodbc, spacy, random, heapq, spellchecker, itemgetter, summarize

# Components:
The functionality of the program is divided into five sections:

Web-based Platform Use - located in the "static" folder

Summarization - located in the "TherapistJen.py", summarization is used to create summaries in the second person to create the appearance of active listening skills.

Spell Checker - located in the "JenDatabaseQueryTechniques.py" file, spellchecker is used to correct spelling errors in user input.

Natural Language Processing - located in the "JenDatabaseQueryTechniques.py" file, POS tagging, semantic similarity, and synonym recognition are used to match user input to the most appropriate feeling.

SQL Database Queries - located in the "JenDatabaseQueryTechniques.py" file, this is used to access the database of responses that TherapistJen has available.

# Classes:
TherapistJen.therapistJenResponce(self, data) - acts as main method, finds response by obtaining result from database and generates summary for long user messages. 

parsingStringFunction.negativeThoughtsOrGoals(userMessage) - returns 'negative' or 'goals' as the user responds to TherapistJen.

parsingStringFunction.questionOrStatement(userMessage) - determines if the userMessage is a question or a statement and returns 'question' or 'statement'.

JenDatabaseQueryTechniques.getResponse(sOrQ, feeling, subject, questionNum) - uses input to query the SQL database for the appropriate response.

JenDatabaseQueryTechniques.searchStringFor(userMessage, synonym) - searches userMessage for synonym and returns true if the synonym is contained within userMessage. Return false otherwise.

JenDatabaseQueryTechniques.checkSeverity(userMessage) - POS tagging and semantic similarity are used to determine whether the user input contains language that indicates serious thoughts of hurting themselves or others.

JenDatabaseQueryTechniques.checkForSpellingErrors(userMessage) - uses spellchecker to find and correct spelling errors within the user input.

JenDatabaseQueryTechniques.getFeeling(userMessage) - associates userMessage with a category of feeling. Calls on checkSeverity to ensure message isn't problematic, then filters userMessage by using tokenization and uses results to calculate similarity scores. If no appropriate match is found for feeling via similarity scores, the method will then connect a feeling by calling on checkSynonyms.

JenDatabaseQueryTechniques.checkSynonym(userMessage) - attempts to match userMessage with category of feeling by calling on searchStringFor to check for synonyms of feelings. Defaults to "nothing" if no match is found.

# New Features Implemented
(1) A spell checker was added to the system, which improved the program by being able to recognize important key words even when they have been misspelled. This improves the flow of the conversation.

<img src="https://ibb.co/XSHWG6N" alt="My cool logo"/>
# My cool project and above is the logo of it

[Recognizes spelling error](https://ibb.co/XSHWG6N)

(2) Natural Language Processing, POS Tagging. By adding this to the system, the program is then able to preprocess user input by filtering out adjectives.

This example recognizes "miserable" as sad, even though it's not in the list of synonyms.
![Recognizes similarity](https://ibb.co/gtB62RK)

(3) Similarity scores. Similarity scores are used on the text that is filtered by POS tagging. Adding this feature allows similar words to be recognized that may not be included in the synonym recognition list. With this feature, the system is able to better connect the feeling to the users input and thus, improve the flow of the conversation.


This example calculates the scores for all matching words. Results: angry (2), sad (1). Angry has the highest similarity score.
![Similarity scores](https://ibb.co/Rj2gTXx)

(4) Various responses for off-topic input. If user input is unable to be recognized or acknowledged by the system, the program will then randomly select one of five responses. This improves the system by avoiding repetition and allowing the conversation to appear more natural.

![Off-Topic](https://ibb.co/jTxBh8J)

(5) New topic - Gratitude. A new topic has been added to allow users to practice gratitude. This improves the system by adding another strategy for improving a user's mood and well-being.

![Gratitude](https://ibb.co/Z8Cck0g)

(6) Summarization. Added to the system is the capability to rephrase user input and change it into the second person. This summary is added to the database response and returned to the user. This improves the system by showing that the ChatBot is practicing "active listening skills" and knows what the user is saying. It improves the overall flow of the conversation and adds meaning to the interaction.   

![Active Listening](https://ibb.co/D8wH2Sd)
