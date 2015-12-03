//
//  ViewController.swift
//  worldCapApp
//
//  Created by  Parvez shaikh on 12/3/15.
//  Copyright © 2015  Parvez shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var image1: UIImageView!
    
    
    @IBOutlet weak var image2: UIImageView!
    
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var message: UILabel!
    
    //populate pickerView using array inside array array = [[array1 text], [array2 text]]
    var data = [["USA","Italy","China","England","Brazil","Sweden","India"], ["Bejing","London","Rome","Delhi","WAshington D.C","BrazilCap","SwedenCap"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // returns the number of 'columns' to display. //There are two pickerView in this App(One is for country's name and other is for capital's name)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return data.count // => 2 (thinking programatically)
        //data refers to array
        //count refers to element inside the array i.e 2
    }
    
    // returns the # of rows in each component..
    //How many rows i.e Option we will be needing in both the picker view
    //depends on the array's elements inside the array
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //print(data[component].count) => CONSOLE
        return data[component].count
        //data => master array
        //component => ["USA","Italy","China","England","Brazil","Sweden","India"] && ["Bejing","London","Rome","Delhi","WAshington D.C","BrazilCap","SwedenCap"]
        //Count => count of component's elements i.e 7 elements are there
    }
    
    //Returns a string
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print(data[component][row]) => CONSOLE
        return data[component][row]
    }
    
    
    //Which row(PICKER) got selected
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let item1 = data[0][pickerView.selectedRowInComponent(0)]
        //data array
        //[0] left hand side pickerView
        
        
        let item2 = data[1][pickerView.selectedRowInComponent(1)]
        //data array
        //[1] right hand side pickerView
        
        //Create variables to call out our images
        //Country
        let usa = UIImage(named: "us.png")
        let italy = UIImage(named: "it.png")
        let china = UIImage(named: "cn.png")
        let england = UIImage(named: "gb.png")
        let brazil = UIImage(named: "br.png")
        let sweden = UIImage(named: "se.png")
        let india = UIImage(named: "in.png")
        
        //Capital
        let usaCap = UIImage(named: "usCap.jpeg")
        let italyCap = UIImage(named: "itCap.jpeg")
        let chinaCap = UIImage(named: "chiCap.jpeg")
        let englandCap = UIImage(named: "engCap.jpeg")
        let brazilCap = UIImage(named: "brCap.jpeg")
        let swedenCap = UIImage(named: "seCap.jpeg")
        let indiaCap = UIImage(named: "inCap.jpeg")
        
        let mess = "Match The flags to capitals"
        
        let correctMess = "The capitals of \(item1) is \(item2)."
        
        switch(item1) {
            
            //Country
            case "USA":
                image1.image = usa
                label1.text = "United States Of America"
                break
            
            case "Italy":
                image1.image = italy
                label1.text = "Italy"
                break
            
            case "China":
                image1.image = china
                label1.text = "CHINA"
                break
            
            case "England":
                image1.image = england
                label1.text = "UNITED KINGDOM"
                break
            
            case "Brazil":
                image1.image = brazil
                label1.text = "Brazil"
                break
            
            case "Sweden":
                image1.image = sweden
                label1.text = "SWEDEN"
                break
            
            case "India":
                image1.image = india
                label1.text = "INDIA"
                break
            
            default:
                image1.image = usa
                label1.text = "United States Of America"
            
        }//End of first switch statement
        
        switch(item2) {
            
            
            //Capitals
            case "WAshington D.C":
                image2.image = usaCap
                label2.text = "WASHINGTON D.C"
                
                if(label1.text == "United States Of America") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "London":
                image2.image = englandCap
                label2.text = "LONDON"
                
                if(label1.text == "UNITED KINGDOM") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "Bejing":
                image2.image = chinaCap
                label2.text = "THE REPUBLIC CHINA"
                
                if(label1.text == "CHINA") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "BrazilCap":
                image2.image = brazilCap
                label2.text = "Brazil Capital"
                
                if(label1.text == "Brazil") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                
                break
            
            case "Rome":
                image2.image = italyCap
                label2.text = "ROME"
                
                if(label1.text == "Italy") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "SwedenCap":
                image2.image = swedenCap
                label2.text = "SWEDEN CAPITAL"
                
                if(label1.text == "SWEDEN") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "Delhi":
                image2.image = indiaCap
                label2.text = "DELHI"
                
                if(label1.text == "INDIA") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            default:
                image2.image = usaCap
                label2.text = "WASHINGTON D.C"
        
        }//End of second switch statement
        
        
        
    }//End of didSelect function

}

