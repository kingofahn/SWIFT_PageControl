//
//  ViewController.swift
//  PageControl
//
//  Created by kingofahn on 14/06/2019.
//  Copyright © 2019 kingofahn. All rights reserved.
//

import UIKit

var images = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = images.count
        
        // 현재 페이지
        pageControl.currentPage = 0
        
        // 페이지 컨트롤의 페이지를 표시하는 부분의 색상
        pageControl.pageIndicatorTintColor = UIColor.green
        
        // 페이지 컨트롤의 현재 페이지를 표시하는 색상
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named : images[0])
        
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
        /*
         images(pageControl.currentPage) // 페이지 컨트롤의 현재 페이지를 가져온다.
         named: // 현재 페이지에 해당하는 이미지 파일의 이름을 images 배열에서 가져온다.
         UIImage // UIImage 타입의 이미지를 만든다.
         imgView.image // 만든 이미지를 이미지 뷰에 할당한다.
         */
    }
}

