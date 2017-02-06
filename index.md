[![CI Status](http://img.shields.io/travis/Shashikant86/XCFit.svg?style=flat)](https://travis-ci.org/Shashikant86/XCFit)
[![Version](https://img.shields.io/cocoapods/v/XCFit.svg?style=flat)](http://cocoapods.org/pods/XCFit)
[![License](https://img.shields.io/cocoapods/l/XCFit.svg?style=flat)](http://cocoapods.org/pods/XCFit)
[![Platform](https://img.shields.io/cocoapods/p/XCFit.svg?style=flat)](http://cocoapods.org/pods/XCFit)

# XCFit : Full Stack BDD in Xcode

**XCFit a.k.a ([XCUI](https://developer.apple.com/videos/play/wwdc2015/406/0), [Cucumberish](https://github.com/Ahmed-Ali/Cucumberish) and [Fitnesse](https://github.com/paulstringer/OCSlimProject) Integrations Tests) is a full stack Xcode BDD framework for [Swift](https://swift.org) iOS apps. XCFit allows us to write BDD Style API/Contract level, UI and Acceptance Tests with Swift in human readable language using tools like [Cucumber](https://cucumber.io/) and [Fitnesse](http://fitnesse.org/) in Xcode. We can still use Apple's brand new UI Testing framework (XCUI) under the hood of XCFit and Cucumberish. XCFit is fully automated solution for Cucumberish and Fitnesse. You can use 80(Fitnesse):20(Cucumberish) formula to automate Acceptance and UI Testing for better coverage and faster feedback. XCFit is available on [Homebrew](http://brew.sh), [RubyGem](https://rubygems.org/gems/xcfit),  [CocoaPods](http://cocoadocs.org/docsets/XCFit), Carthage and Swift Package Manager.**

### XCFit 

* [XCFit : Full Stack BDD in Xcode](#xcfit--full-stack-bdd-in-xcode)
   * [XCFit Features](#xcfit-features)
   * [Tech &amp; Software Requirements](#tech--software-requirements)
   * [Installation](#installation)
   * [Setup Xcode Templates](#setup-xcode-templates)
   * [XCFit Swift Framework](#xcfit-swift-framework--xcui-page-object-pattern--pre-defined-steps)
   * [Setting Cucumberish BDD Scenarios in Xcode](#setting-cucumberish-bdd-scenarios-in-xcode)
   * [Fitnesse for iOS: Acceptance/Contract Tests](#fitnesse-for-ios-acceptancecontract-tests)
   * [Continuous Integration with Xcode Server](#continuous-integration-with-xcode-server)
   * [XCFit: Swift Package Manager](#xcfit-swift-package-manager)
   * [Quick Demo with Example App](#quick-demo-with-example-app)
   * [Acknowledgements](#acknowledgements)
   * [Author](#author)
   * [TODO](#todo)
   * [LICENSE](#license)
   * [Contributing](#contributing)

# XCFit Features
***
  -  You can now write Given When Then (Gherkin), Predefined BDD Steps and Decision Table in Xcode. In Short, you can do BDD in Xcode for your iOS app.   
  -  You can now write/Execute all your Acceptance Tests and UI Tests using Apple's brand new programming language "Swift" in Xcode. Goodbye Appium, Calabash, Frank, KIF and Goodbye Ruby,Java, Python. It's pure Swift !!
  -  XCFit provides automated Xcode Target Templates for Cucumberish, Fitnesse and Page Object Pattern(XCUI) targets which reduce hectic Xcode configuration steps. It also arrange code in Xcode groups. 
  - XCFit will setup Xcode Template with skeleton code and provide BDD Style Steps with Swift Framework which is available on Cocoapods, Carthage and Swift Package Manager.  

### XCFIT Templates & Related Frameworks 
  
  * **XCFit Swift Framework with Pre-defined BDD Steps and Page Object Pattern Templates**

  XCFit setup [Page Object Pattern](http://martinfowler.com/bliki/PageObject.html) for Apple's [XCUI Test](https://developer.apple.com/videos/play/wwdc2015/406/) using 'XCUI POM Test Bundle' Templates. We can get pre-defined BDD steps by using XCFit Swift Framework from [CocoaPods](http://cocoadocs.org/docsets/XCFit), Carthage and Swift Package Manager. 
  
  * **Cucumberish BDD Framework and Cucucmber Style Xcode Templates**

  XCFit setup [Cucumber](https://cucumber.io) style BDD framework with "[Cucumberish](https://github.com/Ahmed-Ali/Cucumberish) UI Test Bundle' Templates. 
  * **Fitnesse Acceptance Tests for iOS using OCSlim Project**

  XCFit allows us to setup [Fitnesse](http://fitnesse.org/) style decision table test framework with [OCSlimProject](https://github.com/paulstringer/OCSlimProject) using 'Acceptance Tests  Bundle' templates.


### Where to get XCFit

##### XCFit Swift Framework

* **CocoaPods** -- [XCFit-CocoaPods](http://cocoadocs.org/docsets/XCFit) : XCFit Swift Frameworks and BDD Style predefined steps for the iOS App. 
* **Carthage** -- You can install XCFit Swift Framework with Carthage as well for iOS Projects 
* **Swift Package Manager** -- Swift Package Manager doesn't support iOS projects yet but XCFit is compatible with Swift Package manager as well. 

##### XCFit Templates

* **Homebrew** - We can tap 'shashikant86/homebrew-taps' and Install XCFit to download Xcode Templates 

* **RubyGems**  -- [xcfit-RubyGem](https://rubygems.org/gems/xcfit) to get automated Xcode Templates



# Tech & Software Requirements

XCFit uses a number of open source projects to work properly. You need to have following

**Hardware**

You must have Mac Operating System with OSX/MacOS Sierra. 

**Software**


* **[Xcode 8.3](https://developer.apple.com/xcode/)**
   - Ideally Xcode 8 but works on Xcode 7 as well.
* **[Swift 3.1](https://swift.org/download/)**
   - Use  Swift 3.1-dev snapshot and toolchain.  
* **[Ruby](https://www.ruby-lang.org/en/)**
   - Use [RVM](https://rvm.io/) for GEM management. Ideally Ruby > 2.X. You can use system Ruby with sudo   
* **[Curl on Mac](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/curl.1.html)**
   - Might be pre-installed but worth double checking.
* **[Homebrew](http://brew.sh)**   
* **[iOS-Sim](https://www.npmjs.com/package/ios-sim)**
  - Node Package required to launch iOS app for Fitnesse Acceptance tests.
* [**Java**](https://www.java.com/en/)
  - Java should be installed on Mac, it is required for Fitnesse Acceptance Test
* **Ruby Packages(optional)**
  - Xcpretty, Fastlane(Optional), Rake, Bundler etc

---

# Installation

XCFit installtion has two steps. 

* **Xcode Template Installtion**

This will install Xcode Templates with skeloton code to support BDD in iOS app. The templates are XCUI Page Object Templates, Cucumberish BDD Templated and OCSlim Fitnesse Templates. The templates can be installed with [xcfit-RubyGem](https://rubygems.org/gems/xcfit) or [Homebrew](http://brew.sh). 

* **Framework Installtion** 

XCFit Swift Framework provided pre-defined BDD Style steps with XCUI and supporting Frameworks like Cucumberish and OCSlim used to write BDD Steps. XCFit Swift Framework is available on [XCFit-CocoaPods](http://cocoadocs.org/docsets/XCFit), Carthage and Swift Package manager. Cucumberish](https://github.com/Ahmed-Ali/Cucumberish) and [OCSlimProject](https://github.com/paulstringer/OCSlimProject) are available on Cocoapods. 

XCFit can be installed using [Homebrew](http://brew.sh) or using [RubyGems](https://rubygems.org/). 

## Template Installtion

XCFit templates can be installed using Homebrew or Rubygem.
### Homebrew Installtion 
Assuming you have already installed [Homebrew](http://brew.sh). Let's tap the formula

     brew tap shashikant86/homebrew-taps

Now, we can install XCFit brew package using

     brew install xcfit


This  will download XCFit templates.  

### XCFit RubyGem Installtion
If you can't use HomeBrew for some reason then XCFit can be installed using [RubyGems](https://rubygems.org/). This will set our Xcode for BDD

       $ gem install xcfit

You need to use with 'sudo' if you are using system (pre-installed) Ruby(2.0). XCFit gem will be used to set all the Xcode Templates for Xcode. 

You can choose any of the above method. Rubygems method is prefered. 


---

# Setup Xcode Templates

In existing app or brand new app, we have to enable the Xcode templates for targets to speed up the things.

##### Xcode 8

To setup Templates for Xcode 8.


```sh
$ xcfit set_xcode_templates

```


-  This will add couple of templates to your Xcode for iOS and macOS apps. In your app if you go to 'File--->New--->Target'

You will see new option for iOS i.e 'XCFit'. Once Clicked on it. You will see Cucumberish UI and Fitnesse Acceptance Tests. XCUI POM, Fitnesse Acceptance Unit Test bundles. As shown

![image](https://raw.githubusercontent.com/Shashikant86/XCFit-GIFS/master/Xcode8-Templates.png)

## Framework Installtion 

XCFit, Cucumberish or OCSlimProject Framework can be installed using Cocoapods. XCFit and Cuucmberish can be installed using Carthage as well but we will use Cocoapods as it's more automated than Carthage. We can create `Podfile` and add specific dependency for the target 

```ruby
    target '$_YOUR__TARGET' do
      pod 'XCFit'
    end
```
Same way we can get 'Cucumberish' and 'OCSlim' for the specific target. 

```sh
$ pod install
```

You need to close the existing Xcode session and Xcode Workspace .xcworkspace next time.


---

# XCFit Swift Framework : XCUI Page Object Pattern + Pre-Defined Steps 

XCFit templates gives an option to use very polular [Page Object Pattern](http://martinfowler.com/bliki/PageObject.html) with Apple's Xcode UI Testing framework. You can install templates and start using the code straight way, no need to use framework unless you want to use pre-defined BDD style tests. 


## Setup 'XCUI POM Test bundle' Target

- From Xcode, create a new app(Or use existing app) and selct File ---> New ----> Target

- Now Select 'XCFit' for iOS app and Click on 'XCUI POM Test Bundle'

- Once Clicked on the target e.g 'XCUI POM Test Bundle' Xcode will create UI testing target with properly structured Xcode Groups and required files. You can then make physical directories on Disk Or change the folder/group structure as per your need.

- You don't have to so any setting to run those demo XCUI tests. Just CMD+U and You are good to go !

![image](https://raw.githubusercontent.com/Shashikant86/xcfitgif/master/XCFitPOM_Templates.gif)

### What's in the XCUI POM Template ?

* **YOUR_CUCUMBERISH_TARGETPageObjectTests.swift**

This file is at the base of the target. It's exactly same file that Apple's XCUI Test generate at first. You may use it for recording the tests or simply delete it if not needed.

* **Screens**

This is groups where we can abstract logic of every screen in the app. Example file are 'HomeScreen.swift' and 'BaseScreen.swift' This assumes that your apps is made up of multiple screens. You can write individual screen class which extend BaseScreen. All the functionality related to screen can be included in this class.


* **Tests**

This group has all the test for our app. Currently demo template has two tests 'HomeScreenTest.swift' and 'ProtocolOrientedTest.swift'. This examples shows how XCUI test can be implemented in the Object Orinted way and Protocol oriented way.

* **TestBase**

Testbase is group where we can abstract all setup, teardown and common stuff in the base class. Every Screen then use this class as base. You can add more stuff as needed e.g Fixtures, Launch Arguments

## Getting XCFit Framework for pre-defined BDD Style steps 

### Cocoapods 
You can get XCFit Framework eaily.  Create `Podfile` and add specific dependency for the target 

```ruby
    target '$_YOUR__TARGET' do
      pod 'XCFit'
    end
```
Same way we can get 'Cucumberish' and 'OCSlim' for the specific target. 

```sh
$ pod install
```
Close existing Xcode Session and Open `.xcworkspace/`. Now in the 'testBase' class just `import XCFit` and extend the class to `XCFit` class. The predefined steps are ready to use. 

![image](https://raw.githubusercontent.com/Shashikant86/xcfitgif/master/Pod_install_XCFit.gif)

### Carthage 

If you are using Carthage then it's easy to install XCFit. Add following to `Cartfile` 

                  github "Shashikant86/XCFit"
                  
Now fetch dependency and build XCFit using. 

                  $ carthage update --platform iOS
 This will create 'Carthage' directory with built framework. We need to manually drag and drop this to our XCUIPoMTest' target build settings. On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk. On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: bin/sh), add the following contents to the script area below the shell:
 

        /usr/local/bin/carthage copy-frameworks

and add the paths to the frameworks you want to use under “Input Files”, e.g.:

         $(SRCROOT)/Carthage/Build/iOS/XCFit.framework                
                  
Here is Carthage looks like 
![image](https://raw.githubusercontent.com/Shashikant86/xcfitgif/master/XCFit_Carthage.gif)

You can choose any of the above method but Cocoapods is easy and less manual. 

### Import XCFit & Use Predefined Steps 

There are some predefined XCFit steps we can use by importing `XCFit` and extending out test base class to `XCFit`. Your test will read something like this: 

```
import XCTest
import XCFit

class XCFitTests: XCFit {
   override func setUp() {
     super.setUp()
     continueAfterFailure = false
      XCUIApplication().launch()
   }
   override func tearDown() {
     super.tearDown()
   }
    
  func testCheckAlertPresent() {
    givenILaunchedApplication()
    whenITap(on: HomeScreen().homeButtuon)
    thenIShouldSeeAnAlert()
  }
}
```

             
You will get access to lots of predefined BDD style human redable steps. It's not mandatory to use those steps unless you wish. 
![image](https://raw.githubusercontent.com/Shashikant86/xcfitgif/master/pre-defined_xcfit_steps.gif)


---

# Setting Cucumberish BDD Scenarios in Xcode

## Setup 'iOS UI Cucumberish Test Bundle' Target

- From Xcode, create a new app(Or use existing app) and selct File ---> New ----> Target

- Now Select 'XCFit' for iOS app and Click on 'Cucumberish UI Test Bundle'

- Once Clicked on the target e.g 'Cucumberish UI Test Bundle' Xcode will create UI testing target with all the required files with Bridging header for Cucumberish UI Testing. It create Page Object Pattern with all required files with screens, steps definitions and Cucumberish initialiser swift file.


### What's in the Cucumberish Template ?

* **YOUR_CUCUMBERISH_TARGET.swift**

This file is at the base of the target. This initiate Cucumberish for project. We need to register all step definitions in this file.
* **Screens**

This is groups where we can abstract logic of every screen in the app. Example file are 'HomeScreen.swift' and 'BaseScreen.swift'

* **Step_Definitions**

This groups has all the step definitions related to screen. Example file 'HomeScreenSteps.swift'. Once implemented we need to register it in the initialiser file mentioned above.

* **Common**

This group has common code like extensions and common steps. The example file 'CommonStepDefinitions.swift' has some steps that can be used in the feature file. It also has 'Hooks.swift' to ad cucumber hooks.

* **Supporting Files**

This groups all the Objective-C headers and Bridging headers needed to get Cucumberish working with Swift.

### What's not in the Cucumberish Template

* **Features Directory**

We don't have 'Features' directory in the template because it needs to have directory on the disk and should be added to Xcode as 'Folder Reference' not Group.

 - Create a Direcory called "Feature"

 - Now Add sample Gherkin Feature File to 'Features' directory either by File->New->Gherkin Or Just add it using your favourite text editor e.g demo.feature with content

```
Feature: Demo App Feature

Scenario: Demo Scenario

Given the app is running

```

- Now Drag and Drop 'Features' directory to Xcode Cucumberish target

- Select only '**Create folder references**' Option. ** Do Not Select 'Create groups' Or 'Copy items if needed**'


### Getting Cucumberish CocoaPod into our Target

In order to get [Cucumberish](https://github.com/Ahmed-Ali/Cucumberish/tree/master/Cucumberish) source content. There are few ways we can do that

- **Cocoapods**

Create a 'Podfile' if you don't have already. In your Podfile, add following Pod entry and update/install pod

```ruby
    target '$_YOUR_CUCUMBERISH_TARGET' do
      pod 'Cucumberish'
    end
```


```sh
$ pod install
```


Now close the existing Xcode session and Xcode Workspace `.xcworkspace` next time.

We now have everything we needed to run demo Cucumber demo test. Update Scheme if don't want to run unit test or other type of tests.
and press 'CMD+U'

![image](https://raw.githubusercontent.com/Shashikant86/xcfitgif/master/cucumberish_template.gif)

Congratulations !! You have just ran your first Cucumber BDD Scenario in the Xcode. Now add your own :)

#### Create Separate Scheme if needed

XCFit adds 'Cucumberish' target to existing Scheme. You can remove that target and run separate scheme to keep it independent from Unit tests. Make sure you make the new scheme executable for Running.

---


# Fitnesse for iOS: Acceptance/Contract Tests

[Fitnesse](http://fitnesse.org/) is fully integrated standalone wiki and acceptance testing framework for BDD Style testing. As of now we have seen Cucumber and Page Object pattern test frameworks. If you really wanted to get more information about Fitnnese for iOS, please follow documentation on [OCSlim](http://paulstringer.github.io/OCSlimProject/) project. XCFit adopted the framework as dependeny to make it full stack BDD. We will cover basic setup as part of this document.

## Setup 'Acceptance Test' Target template

- From Xcode, create a new app(Or use existing app) and selct File ---> New ----> Target

- Now Select 'XCFit' for iOS app and Click on 'iOS Acceptance Tests '

- Once Clicked on the target e.g 'OS Acceptance Tests' Xcode will create new target with all required files and groups for Acceptance testing

- Select 'Acceptance Test' Scheme from Xcode and try to build

- The build will fail as we need fix some **Swift3** related issue as well as we need to add **XCFit/OCSlimProject** Pod to the to the podfile.

** Watch it so far**

![image](https://raw.githubusercontent.com/Shashikant86/XCFit-GIFS/master/AcceptanceTestsTarget.gif)

1. To Fix Swift Issue : Just Click on ‘Edit-> Convert-> To Current Swift Syntax
2. To Fix Pod issue : Add 'XCFit' for AcceptanceTests target

```ruby
    target 'AcceptanceTests' do
      pod 'OCSlimProject'
    end
```



```sh
$ pod install
```

Now, You should be able to build 'Acceptance Tests" target.

You should also note that, the script 'Launch Fitnesse' has been created in the base of the project. Launch the fitness by exucuting that script from command line

       $ sh Launch Fitnesse

 The browser will popup with example test. You should be able to excute that suite and see then running and passing

 ![image](https://raw.githubusercontent.com/Shashikant86/XCFit-GIFS/master/AcceptanceTestsTargetPod.gif)

 If you get any errors at this stage, please confirm that you have Java as well as ios-sim node package installed.

 So, Congratulations again.. You have just executed Fitnesse test fro browser which is talking to your app.


## Setting up Fitnesse Acceptance Target with XCTest

You can also setup Fitnesse Acceptance Tests but you need to use Cocoapods for this target.

You can find detailed blog post on [Dzone](https://dzone.com/articles/integrate-fitnesse-with-xctest-using-xcode8)

#### Add Acceptance and Acceptance Unit Test Target to Project

We have all the predefined targets for FitNesse. Just add “Acceptance Tests” target from the template and “AcceptanceUnitTests” target from the bundle. You will need “FitNesse Suite page name” to create this target but just put “OCSlimProjectExamplePage” there for now . Add your ‘AcceptanceTests’ target as a ‘Target Dependancy’ of this new target in Build Phases. This ensures that it the latest code has been built prior to the tests being run.


#### Add Pod Dependencies
We need to create a “Podfile” at the root of the project with the following content.

```ruby
target 'AcceptanceUnitTests' do     
   pod 'OCSlimProjectTestBundleSupport'
end
```

Now, we can run ‘pod install’ at this stage and close the current Xcode session and open project workspace.

#### Build Acceptance Tests Target
At this stage, we should be able to build the “Acceptance Tests” target. If you are using Xcode8, you might see some warning related to the Swift3 Syntax. Just Click on ‘Edit-> Convert-> To Current Swift Syntax

Now you should be able to build an “Acceptance Tests” target. Once, build is successful, you should see “LaunchFitnesse” script is generated in the root of the project. We can launch and execute the fitness test as shown below.


#### Test AcceptanceUnitTests Target

Now if you select “AcceptanceUnitTarget” and press CMD+U.

![image](https://raw.githubusercontent.com/Shashikant86/XCFit-GIFS/master/FitnesseXCTest.gif)


Now we can see that FitNesse tests are running as shown above.  We can add this to main scheme to make sure we are running it after the unit tests to follow proper development workflow. We can build and run it as our normal unit tests.


# Continuous Integration with Xcode Server 

Coming Soon 

# XCFit: Swift Package Manager

XCFit will be having full on support for XCUI Test helpers so that we can use Apple's XCUI Test Framework painless to use. There is [sample swift package](https://github.com/Shashikant86/XCFitDemoSwiftPackage) on Github to test XCFit
Full Documetation and API implementation still in progress. You can grab it like this  

```
import PackageDescription

let package = Package(
    name: "XCFit",
    dependencies: [
  .Package(url: "https://github.com/Shashikant86/XCFit.git", majorVersion: 4.0.0),
]
)
```



# Quick Demo with Example App

You can clone the existing repo which has a demo app we can run Unit, Fitnesse and Cucumbertish Tests as XCTest

 ```
  $ git clone https://github.com/Shashikant86/XCFit
  
  $ cd XCFit/XCFit2Demo
  
  $ open XCFit2Demo.xcworkspace
  ```
 
 Run Unit, Fitnesse and Cucumberish test with Xcode. "cmd + U". We can execute it using Fastlane


  ```
  $ bundle install
  $ bundle exec fastlane xcfit_ui_test
```


# Acknowledgements

Big Thanks to
  - [Cucumberish](https://github.com/Ahmed-Ali/Cucumberish) : Provide native [Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin) parser for iOS Apps to enable BDD in Xcode using Given When Then. Yay!
  - [OCSlimProject](https://github.com/paulstringer/OCSlimProject) : Provide Xcode Templates to enable BDD with Decision Tables using Fitnesse


# Author

Shashikant86, shashikant.jagtap@icloud.com

# TODO

 * Add More Step Definitions for Cucumberish Projects
 * Improve Swift Package with additional XCUI test helpers
 * Setting up XCFit on Apple's own CI Xcode Server

# LICENSE

Copyright © 2014 Shashikant Jagtap, http://shashikantjagtap.net

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Contributing

1. Fork it ( https://github.com/Shashikant86/XCFit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
