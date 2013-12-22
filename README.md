# TabBarFromCode

iOS Project that shows how to create and populate a UITabBarController in code

### MasterTabBarController
This class creates four ViewControllers and sets them as four tabbed views under viewDidLoad

### ViewController
has one property (backgroundColor) which the Master Tab Bar sets during creation. It also populates the UILabel (set in the storyboard) and takes uses its title property (also set from Master Tab Bar)

To show that reconfigurations can happen on the fly, the initial four tabs are replaced with two tabs after 5 seconds.

Experiment and enjoy!
