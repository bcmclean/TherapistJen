/*settings.js creates the interface where all messages are displayed*/
var canvasHeight = 0;
var messages = []

function setup() {
    canvasHeight = windowHeight; // set canvasHeight equal to the window height
    // its current in
    createCanvas(windowWidth, windowHeight);
    textSize(txtSize);//DO NOT CHANGE THE POSITION OF THIS LINE
    textLeading(spaceBetweenLines);
    textAlign(LEFT, TOP);
}

function draw() {
    background(255);
    var messagesHeight = printMessages();
    updateCanvas(messagesHeight);
}

/*Adds a message to the global variable for messages*/
function addMessage(isBot, message) {
    var messageObject = {isBot: isBot, message: message};
    messages.push(messageObject);
}

/*Adds a user message to the global variables for messages*/
function addUserMessage(message) {
    addMessage(false, message);
}

/*Adds a bot message to the global variables for messages*/
function addBotMessage(message) {
    addMessage(true, message);
}

// Prints the messages stored in the global array called messages
function printMessages() {
    var currentHeight = 0;
    messages.forEach(messageObject => {
        currentHeight += printMessage(messageObject.isBot, messageObject.message, currentHeight);
    });
    return currentHeight; // This will return the height required to print all
                          // messages
}

function printMessage(isBot, message, y) {

    textStyle(BOLD);
    textAlign(RIGHT, TOP);

    /*
       * Coordinates for all text printed. Note that the label is aligned right
       * while the message is aligned left. Thus they both have the same starting
       * coordinates
       */
    xCoordinate = textWidth("Therapist Jen: ") + hPadding;
    yCoordinate = y + vPadding;

    // Print the name label
    if (isBot) {
        changeTextColorToBotColor()
        text("Therapist Jen: ", xCoordinate, yCoordinate);
    } else {
        changeTextColorToPersonColor()
        text("You: ", xCoordinate, yCoordinate);
    }
    // Print the message
    textStyle(NORMAL);
    textAlign(LEFT, TOP);
    changeTextColorToDefaultColor();
    text(message, xCoordinate, yCoordinate, windowWidth - xCoordinate - hPadding)
    return getTextHeight(message);
}


//If the height of text goes ooff the screen, set canvas height to new text height plus some buffer
function updateCanvas(newHeight) {
    if (newHeight > canvasHeight) {
        canvasHeight = newHeight + 40;
        resizeCanvas(windowWidth, canvasHeight);
    }

}

/*Returns the height of the block of text passed. If the text is long, the text could span more than 1 line,
 and this function takes care of that*/
function getTextHeight(txt) {
    textHeight = getLineHeight();
    // Split the text by spaces
    wordsInTxt = txt.split(" ", 100);
    // Take the word at the beginning of the array
    currentWord = wordsInTxt.shift();

    // array to contain all lines. The first line contains the first word.
    lines = [currentWord];

    // While there are words left in the array
    while (wordsInTxt.length != 0) {

        currentWord = wordsInTxt.shift();
        // take the line at the end of the array
        currentLine = lines.pop();
        // If the word cannot fit at the end of the current line, create a new
        // line. Else, append it
        if (textWidth(currentLine + "     " + currentWord) > windowWidth - textWidth("Therapist Jen: ") - hPadding - 2) {
            lines.push(currentLine);
            lines.push(currentWord);
            textHeight += getLineHeight() + spaceBetweenLines;
        } else {
            currentLine = currentLine + " " + currentWord;
            lines.push(currentLine);
        }
    }

    return lines.length * getLineHeight();
}

// Return the height of text based on the current font size
function getLineHeight() {
    return textAscent() + textDescent();
}

// Functions for setting the text color the name labels and reverting to default
function changeTextColorToBotColor() {
    fill(botNameColorR, botNameColorG, botNameColorB);
}

function changeTextColorToPersonColor() {
    fill(personNameColorR, personNameColorG, personNameColorB);
}

function changeTextColorToDefaultColor() {
    fill(0);
}