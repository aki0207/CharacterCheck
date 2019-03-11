import UIKit

extension String {
    func isAlphanumeric() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","[0-9]+" ).evaluate(with:self)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var alfabet = "abc"
        var japanse = "123えお"
        var number = "123"
        
        
        if alfabet.isAlphanumeric() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        if japanse.isAlphanumeric() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        
        if number.isAlphanumeric() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        
        
        
    }


}

