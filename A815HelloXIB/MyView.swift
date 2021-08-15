//
//  MyView.swift
//  A815HelloXIB
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class MyView: UIView {
    var view:UIView!
        override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
        }
        required init?(coder aDecoder: NSCoder) { //一定要寫的建構器
            super.init(coder: aDecoder)
            setup()
        }
        func setup() {
            view = loadViewFromNib()
            view.frame = bounds
            view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
                UIView.AutoresizingMask.flexibleHeight ]
            addSubview(view)
        }
        
        func loadViewFromNib() -> UIView {
            let nib = UINib(nibName: "MyView", bundle: nil )
            let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
            return view
        }

}
