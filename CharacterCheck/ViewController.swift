import UIKit

extension String {
    func isNumber() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","[0-9]+" ).evaluate(with:self)
    }
    
    func isHiragana() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","^[ぁ-ゞ]+$" ).evaluate(with:self)
    }
    
    func isKatakana() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","^[ァ-ヾ]+$" ).evaluate(with:self)
    }
    
    func isKanji() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","^[\u{3005}\u{3007}\u{303b}\u{3400}-\u{9fff}\u{f900}-\u{faff}\u{20000}-\u{2ffff}]+$").evaluate(with:self)
    }
    
    func isHiraganaAndKatakana() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","^[ぁ-ゞァ-ヾ]+$" ).evaluate(with:self)
    }
    
    func isHiraganaAndKatakanaAndKanji() -> Bool {
        return NSPredicate(format: "SELF MATCHES %@","^[ぁ-ゞァ-ヾ\u{3005}\u{3007}\u{303b}\u{3400}-\u{9fff}\u{f900}-\u{faff}\u{20000}-\u{2ffff}]+$" ).evaluate(with:self)
    }
    
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var alfabet = "abc"
        var japanse = "123えお"
        var number = "123"
        var hiragana = "あいうえお"
        var katakna = "アイウエオ"
        var kanji = "亜衣雨"
        var hiraganaAndKatakana = "あいうエオ"
        var hiraganaAndKatakanaAndKanji = "あイ雨"
        var str = "aあイ2"
        
        
        if alfabet.isNumber() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        if japanse.isNumber() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        
        if number.isNumber() {
            print("数字やん")
        } else {
            print("数字じゃないやん")
        }
        
        if hiragana.isNumber() {
            print("平仮名やん")
        } else {
            print("平仮名じゃないやん")
        }
        
        if katakna.isHiragana() {
            print("平仮名やん")
        } else {
            print("平仮名じゃないやん")
        }
        
        if katakna.isKatakana() {
            print("カタカナやん")
        } else {
            print("カタカナじゃないやん")
        }
        
        if kanji.isKanji() {
            print("漢字やん")
        } else {
            print("漢字じゃないやん")
        }
        
        
        
        
        if katakna.isKanji() {
            print("漢字やん")
        } else {
            print("漢字じゃないやん")
        }
        
        if hiraganaAndKatakana.isHiraganaAndKatakana() {
            print("平仮名とカタカナやん")
        } else {
            print("カタカナじゃないやん")
        }
        
        
        
        if number.isHiraganaAndKatakana() {
            print("平仮名とカタカナやん")
        } else {
            print("平仮名とカタカナじゃないやん")
        }
        
        
        if number.isHiraganaAndKatakanaAndKanji() {
            print("平仮名とカタカナと漢字やん")
        } else {
            print("平仮名とカタカナと漢字じゃないやん")
        }
        
        if hiraganaAndKatakanaAndKanji.isHiraganaAndKatakanaAndKanji() {
            print("平仮名とカタカナと漢字やん")
        } else {
            print("平仮名とカタカナと漢字じゃないやん")
        }
        
        if str.isHiraganaAndKatakanaAndKanji() {
            print("平仮名とカタカナと漢字やん")
        } else {
            print("平仮名とカタカナと漢字じゃないやん")
        }

    }
    
    
}




