//
//  GreenViewController.swift
//  kadai8
//
//  Created by 堤健二 on 2024/06/09.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   //画面が表示された時の処理を行う場所を設定する
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //AppDelegateとGreenViewControllerを連携する
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        //Appdelegateのsliderの値を呼びだして、greenSliderの値に入れる
        greenSlider.value = delegate.sliderValue
        
        //greenSliderの値をgreenLabelに入れる
        greenLabel.text = String("\(delegate.sliderValue)")
        
    }
    

    //greenSliderButtonを動かした時の値をApdelegateのsliderに入れる
    @IBAction func greenSliderButton(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
 
        //greenSliderの値をgreenLabelに入れる（表示する）
        greenLabel.text = String("\(greenSlider.value)")
        
        //AppdelegateのsliderValueにgreenSliderの値を代入する ※「＝」は代入するという意味であり、イコールではない。greenSlider.value = delegate.sliderValueでは意味が異なる。（挙動が異なる）
        delegate.sliderValue = greenSlider.value
        

    }
    
    
    

}
