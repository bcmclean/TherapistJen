DROP TABLE if exists ChatBot;

CREATE TABLE ChatBot (
	feeling VARCHAR(10) NOT NULL,
	response VARCHAR(500) NOT NULL,
	sOrQ VARCHAR(9),
	subject VARCHAR(8) NOT NULL,
	questionNum INT NOT NULL,
	PRIMARY KEY (sOrQ, feeling, response)
);


INSERT ChatBot VALUES('nothing', 'I think you"ve entered a question. Please rephrase this as a statement.', 'question', 'normal', 1)

INSERT ChatBot VALUES('nothing', 'Welcome to the chat! My name is Jen. What brings you here today?', 'statement', 'normal', 1)


INSERT ChatBot VALUES('overwhelmed', 'It seems as though you are feeling overwhelmed. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('sad', 'It seems as though you are feeling sad. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('angry', 'It seems as though you are feeling angry. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('empty', 'It seems as though you are feeling empty. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('suicidal', 'It seems as though you are feeling suicidal. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('scared', 'It seems as though you are feeling scared. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('anxious', 'It seems as though you are feeling anxious. Is this correct?', 'statement', 'normal', 2)

INSERT ChatBot VALUES('nothing', 'Can you elaborate on that?', 'statement', 'normal', 2)


INSERT ChatBot VALUES('overwhelmed', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('sad', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('angry', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('empty', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('suicidal', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('scared', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('anxious', 'Tell me more about that.', 'statement', 'normal', 3)

INSERT ChatBot VALUES('nothing', 'Tell me more about that.', 'statement', 'normal', 3)


INSERT ChatBot VALUES('overwhelmed', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('sad', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('angry', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('empty', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('suicidal', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('scared', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('anxious', 'This must be hard for you. Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)

INSERT ChatBot VALUES('nothing', 'Any thoughts on what led to feeling like this?', 'statement', 'normal', 4)


INSERT ChatBot VALUES('overwhelmed', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('sad', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('angry', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('empty', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('suicidal', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('scared', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('anxious', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)

INSERT ChatBot VALUES('nothing', 'I understand how this must make you feel. Have you tried to seek out help?', 'statement', 'normal', 5)


INSERT ChatBot VALUES('overwhelmed', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('sad', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('angry', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('suicidal', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('scared', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('anxious', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)

INSERT ChatBot VALUES('nothing', 'I"d like to help you, but first, I must as you a question. Have you been having any suicidal thoughts? Answer "yes, I am suicidal" if yes', 'statement', 'normal', 6)


INSERT ChatBot VALUES('overwhelmed', 'I"m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('sad', 'I"m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('angry', 'I"m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('suicidal', 'I"m sorry to hear that. I can still help you, but I encourage you to call the suicide prevention line in Canada - 1.833.456.4566. If you"d still like help, there are two different strategies we can try. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to do?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('scared', 'I"m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('anxious', 'I’m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)

INSERT ChatBot VALUES('nothing', 'I’m glad to hear that. There are two different strategies we can try today. We can focus on your goals or we can work on challenging some of the negative thoughts you are having. What would you like to try?
', 'statement', 'normal', 7)


INSERT ChatBot VALUES('overwhelmed', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('sad', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('angry', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('suicidal', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('scared', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('anxious', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)

INSERT ChatBot VALUES('nothing', 'No problem, we can continue with our conversation. Tell me more about the problem you"ve been having.
', 'statement', 'normal', 8)


INSERT ChatBot VALUES('overwhelmed', 'That sounds like it could be very overwhelming. Please continue.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('sad', 'That sounds like it could be very upsetting. Please continue.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('angry', 'That sounds like it could be very aggravating. Please continue.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('suicidal', 'That sounds like it could be very problematic. Please call 1.833.456.4566.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('scared', 'That sounds like it could be very frightening. Please continue.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('anxious', 'That sounds like it could be very debilitating. Please continue.', 'statement', 'normal', 9)

INSERT ChatBot VALUES('nothing', 'That sounds like it could be okay. Please continue.', 'statement', 'normal', 9)


INSERT ChatBot VALUES('overwhelmed', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('sad', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('angry', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('suicidal', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('scared', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('anxious', 'I"m sorry you still feel this way. Maybe take a day or two to breathe.', 'statement', 'normal', 10)

INSERT ChatBot VALUES('nothing', 'I can see this getting better for you.', 'statement', 'normal', 10)


INSERT ChatBot VALUES('overwhelmed', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('sad', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('angry', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('suicidal', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('scared', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('anxious', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)

INSERT ChatBot VALUES('nothing', 'I"d like to ask your feedback very quickly. How are you feeling now?', 'statement', 'normal', 11)


INSERT ChatBot VALUES('overwhelmed', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)

INSERT ChatBot VALUES('sad', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)

INSERT ChatBot VALUES('angry', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)

INSERT ChatBot VALUES('suicidal', 'Please call the Suicide Prevention Hotline 1.833.456.4566.', 'statement', 'normal', 12)

INSERT ChatBot VALUES('scared', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)

INSERT ChatBot VALUES('anxious', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)

INSERT ChatBot VALUES('nothing', 'Would you say this has been helpful for you?', 'statement', 'normal', 12)


INSERT ChatBot VALUES('overwhelmed', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('sad', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('angry', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('suicidal', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('scared', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('anxious', 'Thank you for chatting with us today.', 'statement', 'normal', 13)

INSERT ChatBot VALUES('nothing', 'Thank you for chatting with us today.', 'statement', 'normal', 13)


INSERT ChatBot VALUES('overwhelmed', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('sad', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('angry', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('suicidal', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('scared', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('anxious', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)

INSERT ChatBot VALUES('nothing', 'Great. Negative thoughts are normal when we are feeling down. Being aware of our negative thoughts can help us change them. Can you identify one negative thought you are having? You can write it out now.', 'statement', 'negative', 1)


INSERT ChatBot VALUES('overwhelming', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('sad', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('angry', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('suicidal', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('scared', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('anxious', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)

INSERT ChatBot VALUES('nothing', 'Thank you for sharing. What emotion do you experience when you say this thought out loud?', 'statement', 'negative', 2)


INSERT ChatBot VALUES('overwhelmed', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('sad', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('angry', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('suicidal', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('scared', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('anxious', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)

INSERT ChatBot VALUES('nothing', 'What kind of evidence do you have that does not support this statement? For example, if you feel you"re a failure, what successes can you mention?', 'statement', 'negative', 3)


INSERT ChatBot VALUES('overwhelmed', 'Sometimes it can be hard to break our negative thinking patterns, but it may help if you try. Please attempt to write your negative thought in a more positive tone.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('sad', 'Sometimes it can be hard to break our negative thinking patterns, but it may help if you try. Please attempt to write your negative thought in a more positive tone.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('angry', 'Sometimes it can be hard to break our negative thinking patterns, but it may help if you try. Please attempt to write your negative thought in a more positive tone.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('suicidal', 'Some of the things you are saying are worrying me. I"d like you to call the suicide prevention hotline at 1.833.456.4566.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('scared', 'Sometimes it can be hard to break our negative thinking patterns, but it may help if you try. Please attempt to write your negative thought in a more positive tone.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('anxious', 'Sometimes it can be hard to break our negative thinking patterns, but it may help if you try. Please attempt to write your negative thought in a more positive tone.', 'statement', 'negative', 4)

INSERT ChatBot VALUES('nothing', 'That"s great! Thank you for sharing. How can youo write your negative thought in a more realistic and positive tone? You can write it out now.', 'statement', 'negative', 4)


INSERT ChatBot VALUES('overwhelmed', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('sad', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('angry', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('suicidal', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('scared', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('anxious', 'I"m sorry to hear that. Remember that you can always try again later when you are ready. How do you feel when you say this out loud?', 'statement', 'negative', 5)

INSERT ChatBot VALUES('nothing', 'Awesome! What type of emotions do you feel when you say this out loud?', 'statement', 'negative', 5)


INSERT ChatBot VALUES('overwhelmed', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('sad', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('angry', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('suicidal', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('scared', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('anxious', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)

INSERT ChatBot VALUES('nothing', 'Good work. Sometimes when we are feeling low we can sink into negative thinking patterns. If we are aware of our negative thoughts, we can challenge them and start training ourselves to think more positively. Would you like to challenge another thought? Please say "negative thoughts" if you"d like to try another, or "goals" if you"d like to chat about your goals, or "end the conversation" if you"d like to end the chat.', 'statement', 'negative', 6)


INSERT ChatBot VALUES('overwhelmed', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('sad', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('angry', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('suicidal', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('scared', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('anxious', 'What"s one goal you have right now?', 'statement', 'goal', 1)

INSERT ChatBot VALUES('nothing', 'What"s one goal you have right now?', 'statement', 'goal', 1)


INSERT ChatBot VALUES('overwhelmed', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('sad', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('angry', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('suicidal', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('scared', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('anxious', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)

INSERT ChatBot VALUES('nothing', 'That"s a great goal. What obstacles have you been facing lately regarding this goal?', 'statement', 'goal', 2)


INSERT ChatBot VALUES('overwhelmed', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('sad', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('angry', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('suicidal', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('scared', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('anxious', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)

INSERT ChatBot VALUES('nothing', 'Can you think of some things that could help you overcome these obstacles?', 'statement', 'goal', 3)


INSERT ChatBot VALUES('overwhelmed', 'That doesn"t sound like something that could help your situation. What first step could you take in order to reach your goal?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('sad', 'That doesn"t sound like something that could help your situation. What first step could you take in order to reach your goal?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('angry', 'That doesn"t sound like something that could help your situation. What first step could you take in order to reach your goal?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('suicidal', 'That doesn"t sound like something that could help your situation. What first step could you take in order to reach your goal?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('scared', 'The things you are saying worry me. Please considere calling the suicide prevention hotline at 1.866.456.4566. If you want to continue talking about goals, what first step could you take?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('anxious', 'That doesn"t sound like something that could help your situation. What first step could you take in order to reach your goal?', 'statement', 'goal', 4)

INSERT ChatBot VALUES('nothing', 'Good job! What"s the first step you could take to reach your goal?', 'statement', 'goal', 4)


INSERT ChatBot VALUES('overwhelmed', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('sad', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('angry', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('suicidal', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('scared', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('anxious', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)

INSERT ChatBot VALUES('nothing', 'That sounds like a good first step. To make our goals more realistic, sometimes it"s helpful to schedule it in or plan a time to do it. When could you take that first step?', 'statement', 'goal', 5)


INSERT ChatBot VALUES('overwhelmed', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('sad', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('angry', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('suicidal', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('scared', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('anxious', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)

INSERT ChatBot VALUES('nothing', 'Great. I wish you the best of luck in achieving your goal! It"s not always easy, but if you continue to work at it you"ll get there eventually. Would you like to work on another goal, challenge a negative thought, or end the conversation?', 'statement', 'goal', 6)












