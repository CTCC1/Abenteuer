# Abenteuer

## Inspiration

There are always times in your life when you don't know what to do and where to go. Why don't explore the secret neighborhood recommended by Abenteur? Your only goal is to reach the destination and win absolutely nothing. Just like what happens in life. 

## How to play

Press "Start" on the title page to enter the game. Press "Let's go!" to let the app randomly generate a location coordinate near you and present you its panorama Street View. Simply walk around and look for that place, and once you arrive at the correct location, you win lol. If you cannot find the place, click the "I can't find it >_<" button so a map will pop up and the destination will be pointed out to you. You can keep playing by pressing "Let's go!"


## How we built it

We first implemented the framework of standard location service in our iOS app. Then we implemented an algorithm to generate random location coordinates within a designated distance from the user. We embedded the Google Panorama View from Google Maps SDK for iOS into our app. By receiving location updates from the user, the app is configured to show winning message when the user is within a given small distance of the generated destination. 

## Challenges we ran into

Learning Swift from scratch. 

## Accomplishments that we're proud of

This is the first App we built.

## What we learned

How to develop iOS App using Swift. Implement module APIs  and SDKs. 

## What's next for Abenteur

We will work on a scoreboard and a timer mode for each spot generated, so you can compete with other players on how familiar you are with your surroundings! We will also implement a "share button" to let the world see all the cool places our players have discovered!



[![A Video Demo](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=gdFPyDS5Ioo)
