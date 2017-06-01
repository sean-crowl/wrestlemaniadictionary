//
//  MainViewController.swift
//  Wrestlemania
//
//  Created by Sean Crowl on 5/31/17.
//  Copyright © 2017 Interapt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var yearPicker: UIPickerView!
    @IBOutlet weak var championNameLabel: UILabel!
    
    var yearsArray = ["Select a Year", "1985", "1986", "1987", "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"]
    
    var championsDictionary = ["1985":"Hulk Hogan", "1986":"Hulk Hogan", "1987":"Hulk Hogan", "1988":"'Macho Man' Randy Savage", "1989":"Hulk Hogan", "1990":"The Ultimate Warrior", "1991":"Hulk Hogan", "1992":"'Macho Man' Randy Savage", "1993":"Hulk Hogan", "1994":"Bret 'The Hitman' Hart", "1995":"'Big Daddy Cool' Diesel", "1996":"Shawn Michaels", "1997":"The Undertaker", "1998":"'Stone Cold' Steve Austin", "1999":"'Stone Cold' Steve Austin", "2000":"Triple H", "2001":"'Stone Cold' Steve Austin", "2002":"Triple H", "2003":"Brock Lesnar", "2004":"Chris Benoit", "2005":"Batista", "2006":"John Cena", "2007":"John Cena", "2008":"Randy Orton", "2009":"Triple H", "2010":"John Cena", "2011":"The Miz", "2012":"CM Punk", "2013":"John Cena", "2014":"Daniel Bryan", "2015":"Seth Rollins", "2016":"Roman Reigns", "2017":"Randy Orton"]

    override func viewDidLoad() {
        super.viewDidLoad()

        yearPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return yearsArray[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return yearsArray.count
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedValue = yearsArray[pickerView.selectedRow(inComponent: 0)]
        if (championsDictionary.index(forKey: selectedValue) != nil) {
            championNameLabel.text = championsDictionary[selectedValue]
        } else {
            championNameLabel.text = ""
        }
    }
    

}
