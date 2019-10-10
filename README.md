![App Brewery Banner](https://github.com/londonappbrewery/Images/blob/master/AppBreweryBanner.png)

# Mi Card

## Extra features that I implemented

Instead of using `ImageAssets` across the application, I found an external dependency, [flutter_svg](https://pub.dev/packages/flutter_svg), to instead use SVGs since they offer more flexibility. I didn't use all the available features but it's a powerful resource for future projects. Within this project, I just created an additional SVG resources folder and just added a bunch of logos for the platforms that I'm proficient in.

Another external dependency I used was [url_launcher](https://pub.dev/packages/url_launcher), I just wanted to add some extra functionality in terms of the information I was showing. So I wrapped the relevant widgets with an `Inkwell` widget and made three asynchronous methods to be called `onPressed`. I've never had the chance to do this on Android yet, but for the phone number, I opened up the phone application with the number keyed in, for my GitHub the app opens my profile in the default browser, and for email address I open the default mail app with email and subject.

This project was mostly about learning to work with layout widgets in Flutter, this was relatively easy for me to grasp due to my background in Android and web development. But it was quite enjoyable to design an interface using Flutter, it's very refined and easy to get used to. I've included a demo below for the functionality of my application.

#### Demo

<img src="demo.gif" height="500" />

*Note: The buttons are a bit different because the project first taught making a custom layout for the phone and email containers. And then it did Cards.*

*I had already implemented the InkWell widget around the initial containers, plus done some customization to their theming and I didn't want to lose the code for that so both are shown in the application.*

## Our Goal

Now that you've seen how to create a Flutter app entirely from scratch, we're going to go further and learn more about how to design user interfaces for Flutter apps.

## What you will create

Mi Card is a personal business card. Imagine every time you wanted to give someone your contact details or your business card but you didn't have it on you. Well, now you can get them to download your business card as an app.

## What you will learn

* How to create Stateless Widgets
* What is the difference between hot reload and hot refresh and running an app from cold
* How to use Containers to lay out your UI
* How to use Columns and Rows to position your UI elements
* How to add custom fonts
* How to add Material icons
* How to style Text widgets
* How to read and use Flutter Documentation



>This is a companion project to The App Brewery's Complete Flutter Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)

![End Banner](https://github.com/londonappbrewery/Images/blob/master/readme-end-banner.png)
