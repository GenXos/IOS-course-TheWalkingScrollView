//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Todd Fields on 2015-12-21.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var scrollView: UIScrollView!

  let WIDTH: CGFloat = 223
  let HEIGHT: CGFloat = 294
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    for var x = 1; x < 5; x++ {
      let img = UIImage(named: "\(x)")
      let imgView = UIImageView(image: img)
      
      scrollView.addSubview(imgView)
      
      imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 320, WIDTH, HEIGHT)
    }
    
    scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
    
  }


}

