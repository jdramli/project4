# project4
Make Table Widgets and multiple screens
Progress log:

10/16: Created repository and start screen with button to get to "Hello World" game.
            Researching how to make the second screen not swipable
            Experimented with programmatic scene showing (not effectively so far)
   
10/18: Added multiple 'fullscreen' screens using the Interface Builder dropdown menu 'Presentation'
                            (changed from "Automatic" to "FullScreen")
            Added transition buttons to "push" (show) back and forth between each of the scenes
            Added a counter to store information to potentially pass across views later

10/20: Did multiple trial/error tests to get the StartScene to run, to make a second game.
            Added Sprite and copied many features of the GameScene.
            Got a lot added but presentScene doesn't work. 

10/22: Finally, found that the error is that the GKScene should have been an SKScene
            Found that multiple GameView Controllers is not preferred/functional
            Shifting focus to creating a TableView.
            Confirmed that only UIKit Actions can be used on ViewController, and that is was causing the many previous bugs/lack of display.

10/23: Followed Tutorial for Objective C add TableView to ViewController
            Researched and attempted to implement TableView controller in Swift

10/24: Experimented with TableView Controller class in InterFace Builder
            Adjusted Background colors and added cells via interface builder
            Researched but could not find how to use interface builder to modify cells with program data

10/25:  Deleted and redid swift UIViewController with added tableView
            Added buttons to StartViewController to change background and link to various scenes
            Shifting focus to just get some changes and see if the changes to the data of the StartViewController can be passed to a functional tableview on ViewController
            Failed to use Interface Builder to get a fully functional tableview added
            Used multiple programmatic examples together to get a basic framework for a tableview with constraints that are programmatically adjusted  and can accept the data from a hardcoded/loop-generated array.  
            Used an emoji table as demonstration that the String array can handle many data types as long as it is typecast to String

10/26: Adjusted Background color cycler button, changed programmatic tableview constraints
            Made a total counter on StartViewController to try to pass into items array
            Made changes to display different data in the TableView.
            

