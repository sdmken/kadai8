//
//  RedViewController.swift
//  kadai8
//
//  Created by 堤健二 on 2024/06/09.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //画面が表示された時に行うことを入力する
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //AppDelegateとRedViewControllerを連携する
        let delegate = UIApplication.shared.delegate as! AppDelegate

        //APPDelegateのsliderValueの値をredSliderに入れる
        redSlider.value = delegate.sliderValue

        //redSliderの値をredLabelに入れる（表示する）
        redLabel.text = String("\(redSlider.value)")
        
    }
    
    //redSliderButtonを動かした時の値の処理
    @IBAction func redSliderButton(_ sender: Any) {
        
        //AppDelegateと連携する
        let delegate = UIApplication.shared.delegate as! AppDelegate

        //redSliderの値をredLabelに入れる（表示させる）
        redLabel.text = String("\(delegate.sliderValue)")
        
        //redSliderValueの値をAppDelegateのsliderValueに入れる
        delegate.sliderValue = redSlider.value
        

    }
    
}
