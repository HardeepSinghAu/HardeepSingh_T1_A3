# Calorie Counter 

## About the App

The aim of this Calorie Counter app is to allow the user to calculate their BMI and their minimum daily calorie intake requirements. This is a useful app for people who want to loose weight but also those he want to gain weight.

## Functionality

On running this application, the user will be prompted to select one of four options from a main menu. These options as shown in the diagram below are:

1. Calculate BMI
2. Calculate minimum required calories per day
3. Calculate my calorie intake for today
4. Finished

I planned an intial and more detailed flow chart for the application to start getting an idea of how the application would commence.

![Initial detailed flow chart of app](src/images/flowchart1.png)

I settled on a less detailed flowchart to show a clear overview of the application to assist in organising how the application with link and loop.

![Complete overview flow chart of app](src/images/flowchart2.png)

## Walk through the application


![Welcome menu](src/images/welcome.png)

Options 1 to 3 will eventually bring you back to the main menu. Whereas option 4 will exit the application.

### Option 1

Option 1 will take the user to bmi.rb where they will be prompted to enter their weight and height to calculate their BMI. This will estimate if they are under weight, normal weight, over weight or obese along with a disclaimer and warning.

![Calculate User BMI](src/images/option1.png)

### Option 2

Options 2 will take the user to calories_required.rb, where the user will be prompted to enter their weight, height, age and gender to calculate and print their minimum calories required per day.

![Minimum calories required](src/images/reqcalories.png)

### Option 3

Option 3 will take the user to counter.rb, where the user will be prompted to enter what they ate, how much of that food item they consumed and how many calories one of those food items is. This will tally the users calorie consumption and ask if they want to add another food item. If the user selects yes, they will be prompted to add another food item, its calories and quanitiy consumed. However, if the user selects no, they will be directed to the main menu.

![Calorie Counter](src/images/counter.png)

### Option 4

Upon choosing option 4, the app will bid the user farewell.

![Goodbye](src/images/goodbye.png)

## Run this application in 5 steps

1. To install Ruby on your machine, please [follow this guide carefully.](https://www.ruby-lang.org/en/documentation/installation/)

2. You will need to [clone or fork](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop) this repository.

3. You will also need to use the [Bundler](https://rubygems.org/gems/bundler) [Gem](https://rubygems.org/).

4. Once you have opened the repository in your editor, open a terminal and locate the /src folder. Type in the command
> bundle install

5. Open a terminal in your editor and run the app with the command  
> ./run_app.sh

## Troubleshooting

Should you have any troubles with step 5, type in
> chmod +x
This gives you executive permission and will allow you to run the application. If this fails then the next step is to type in
> sudo chmod 755 run_app.sh

# Planning

I embarked on creating this app by planning the application first. I decided it would have 3 features which would be:

- BMI calculator, which took in the users details and and produced their body mass index (BMI) to determine if they are in a healthy weight range.

- Calories required, which took in the users details and produced a figure for the minimum calories that user needs to consume per day.

- Daily Calorie intake, took in the user details and produced a total of calories consumed that day.

# Trello

I used a [Trello board](https://trello.com/b/ygtzi0lY/terminal-app) to plan and organise my tasks, starting with the main requirements for the terminal app. Working up to include ideas that may have been out of my reach initially and were noted to be added at a later date. I also used a Trello to mark completed tasks and continuously add tasks as they came up.

![Trello board 1](src/images/Trello1.png)
![Trello board 2](src/images/Trello2.png)

## Gems

### Gem TTY-Prompt
I chose to use tty-prompt as this keeps the code dry and tidy, as it allowed me to store the users input aswell as prompt them to answer a query all in one neat line. For example;

> food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

### TTY-Progressbar

Another gem the app utilizes is the TTY-Progressbar which shows progress in a bar format as week as estimated time to completion.

### Colorize
I added the Colorize gem to provide the application with some colour and improve the users experience in an attempt to make the output more attractive.

## App Limitations 
The application has a number of limitations, it is for use by a single user for a single session as there is no presistance of data. 