//  Christopher Galdi
//  2299616
//  10/13/20
//  USING TWO OF MY LATE DAYS BECAUSE I COULDN'T FIGURE OUT HOW TO GET THE INPUT FROM THE TEXT FIELD TO UPDATE THE SLIDER, WHICH WAS THE FIRST THING WE TALKED ABOUT ON WEDNESDAY'S CLASS
//  Assignment 2
//  ViewController.swift
//  SliderAssignment
//
//  Created by Christopher Galdi on 10/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSliderInput: UITextField! //red slider text
    @IBOutlet weak var redSlider: UISlider!  //red slider
    @IBOutlet weak var redSliderLabel: UILabel! //red label
    
    @IBOutlet weak var greenSliderInput: UITextField!  //green slider text
    @IBOutlet weak var greenSlider: UISlider!  //green slider
    @IBOutlet weak var greenSliderLabel: UILabel!  //green slider label
    
    @IBOutlet weak var blueSliderInput: UITextField! //blue slider text
    @IBOutlet weak var blueSlider: UISlider!  //blue slider
    @IBOutlet weak var blueSliderLabel: UILabel!  // blue slider label
    
    @IBOutlet var backgroundView: UIView!
    
    
   // @IBAction func rSliderInput(_ sender: Any) {
     //   let rSliderInput.text = ;
        
      //  redSlider.value = rSliderInput;
    
    
    @IBAction func rSliderText(_ sender: Any) {
        let rSliderValue = Int(redSlider.value);
        redSliderInput.text = String(rSliderValue);
        
    }
    
    @IBAction func gSliderText(_ sender: Any) {
        let gSliderValue = Int(greenSlider.value);
        greenSliderInput.text = String(gSliderValue);
        
    }
    
    @IBAction func bSliderText(_ sender: Any) {
        let bSliderValue = Int(blueSlider.value);
        blueSliderInput.text = String(bSliderValue);
        
        
    }
/* Wasn't able to figure out how to get the input value to update the slider
    @IBAction func redSliderInput(_ sender: Any) {
        let rSliderInput = String(redSliderInput.text!);
        redSlider.value = rSliderInput;
        
    
    }
    @IBAction func greenSliderInput(_ sender: Any) {
        let gSliderInput = greenSliderInput.text;
        greenSlider.value = Float(Int(gSliderInput));
        
    }
    @IBAction func blueSliderInput(_ sender: Any) {
        let bSliderInput = blueSlider.value;
        
    }
 */
    
    
    @IBAction func sliderAdjust(_ sender: Any) {
      
        let inputRed = CGFloat(redSlider.value) / 255;
        let inputGreen = CGFloat(greenSlider.value) / 255;
        let inputBlue = CGFloat(blueSlider.value) / 255;
        let backColor = UIColor(red: inputRed, green: inputGreen, blue: inputBlue, alpha: 1.0);
        
        backgroundView.backgroundColor = backColor;
        
    }
    
    @IBAction func textfieldInput(_ sender: Any) {
        guard let redInputVal = Float(redSliderInput.text ?? "255")
        else {
            return
        }
        
        redSlider.value = redInputVal;
        sliderAdjust(self);
        
        guard let greenInputVal = Float(greenSliderInput.text ?? "255")
        else {
            return
        }
        greenSlider.value = greenInputVal;
        sliderAdjust(self);
        
        guard let blueInputVal = Float(blueSliderInput.text ?? "255")
        else {
            return
        }
        blueSlider.value = blueInputVal;
        sliderAdjust(self);
    }
    
    

    override func viewDidLoad() {
       super.viewDidLoad() // Do any additional setup after loading the view.
        
       // rSliderText.addTarget(self, selector: #selector(ViewController.textFieldDidChange(_ :)), for: .editingChanged);
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(ViewController.didTapView))
        self.view.addGestureRecognizer(tapRecognizer)
        
        redSliderInput.text = "255";
        redSlider.value = 255
        redSliderLabel.text = "Red";
        
        greenSliderInput.text = "255";
        greenSlider.value = 255
        greenSliderLabel.text = "Green" ;
        
        blueSliderInput.text = "255";
        blueSlider.value = 255
        blueSliderLabel.text = "Blue";
      
        
      //  rSliderText.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged);
        
    }
    
    
    
    
    
    
    @objc func keyboardWillShow(notification:NSNotification){
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?NSValue)?.cgRectValue else{
            return
        }
        
        self.view.frame.origin.y = 0 - keyboardSize.height
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        self.view.frame.origin.y = 0
    }
    @objc func didTapView(){
        self.view.endEditing(true)
    }
    
    //@objc func textFieldDidChange(_ redSliderInput: UITextField){}
    
 



    



}
