# Introduction
Welcome to clean collection or table view for iOS. The goal that I want to achieve is to make a cleaner collection or tableview using DataSourceKit library which you can found here [here](https://github.com/ishkawa/DataSourceKit). 

# Memory Leak Free VIPER
In this repo, I'm implementing VIPER as an architecture. VIPER is used with so many separation layer so it makes easier to test using TDD, because the more separation and single responsibility the easier TDD is done. Because VIPER use so many classes, memory leak may occur if you don't bind the classes correctly (as retain cycle often occur). It's also because iOS Framework keep its objects as strong on the View Controller. This code ensure you can have memory leak free VIPER because it's presenter is kept on View Controller. You can test and log the `deinit` for every each class.

# TDD
In this repo, I use TDD for my development. TDD, in short `a development environment where you write test cases first of your code first, not implementation`. You can find more [here](https://www.tutorialspoint.com/software_testing_dictionary/test_driven_development.htm). 

In this part of example, you can learn how TDD itself is written on VIPER.

# Environment
This code is built on `Xcode 10` with minimum iOS Requirement is `10.0`, and written in `Swift 4`

# Author
Created by [Benedict Lukas]. Contact me at bentahyar@gmail.com
