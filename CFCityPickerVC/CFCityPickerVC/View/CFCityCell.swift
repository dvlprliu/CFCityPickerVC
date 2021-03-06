//
//  CFCityCell.swift
//  CFCityPickerVC
//
//  Created by 冯成林 on 15/7/30.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

class CFCityCell: UITableViewCell {

    var cityModel: CFCityPickerVC.CityModel! {didSet{dataFill()}}
    
}



extension CFCityCell{
  
  static var rid: String {return "CFCityCell"}
  
  class func cityCellInTableView(tableView: UITableView) -> CFCityCell {
    
    //取出cell
    var cityCell = tableView.dequeueReusableCellWithIdentifier(rid) as?CFCityCell
    
    if cityCell == nil {
      cityCell = CFCityCell(style: UITableViewCellStyle.Default, reuseIdentifier: rid)
      cityCell?.backgroundColor = UIColor(red: CGFloat(0x17)/CGFloat(0xff), green: CGFloat(0x17)/CGFloat(0xff), blue: CGFloat(0x17)/CGFloat(0xff), alpha: CGFloat(1))
      cityCell?.textLabel?.textColor = UIColor.whiteColor()
    }
    
    return cityCell!
  }
  
  
  /** 数据填充 */
  func dataFill(){
    
    self.textLabel?.text = "\(cityModel.name)"
    
  }
  
}
