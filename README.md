# Instructions

This sprint challenge is designed to ensure that you are competent with the concepts taught during this first sprint. Please read this entire README to make sure you understand what is expected of you. Failure to read and follow the instructions and requirements will be reflected in your results.

In your solution, it is especially important that you follow best practices such as MVC and good, consistent code style. You will be scored on these aspects as well as the project requirements below.

Begin by forking this repository. Clone your fork to your local computer. Commit as appropriate while you work. Push your final project to GitHub, then send a link to your GitHub fork to your Project Manager.

**You will have 3 hours to complete this sprint challenge**

Please view the screen recording so you will know what your finished project should look like:

Good luck!

### Screen Recording

![](https://user-images.githubusercontent.com/16965587/43304324-e4699a52-9130-11e8-90ae-48616fa9e7bf.gif)

### Requirements

1. A tab bar controller that displays two view controllers:
	- A view controller that allows the user to add new movies
	- A view controller that shows all the movie that have been created. This movie list view controller is implemented using a subclass of `UIViewController`, **not** `UITableViewController`.
2. The view controller that shows the list of movies uses a custom `UITableViewCell` that displays the movie's title and has a button to toggle whether the user has seen the movie or not. The button's text reflects whether the movie is seen or not.
3. User can swipe to delete movies.

#### Extra Challenges

- Add functionality to let the user to search for movies.
- Sort the movies alphabetically.
