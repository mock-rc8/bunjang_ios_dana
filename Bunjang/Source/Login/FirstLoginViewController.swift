//
//  FirstLoginViewController.swift
//  Bunjang
//
//  Created by 김민 on 2022/08/24.
//

import UIKit
import ImageSlideshow
import PanModal

class FirstLoginViewController: UIViewController {
    @IBOutlet weak var loginBannerSlideShow: ImageSlideshow!
    
    var isTapLogin = false
    var bannerImages = [ImageSource(image: UIImage(named: "LoginBanner1")!),
                        ImageSource(image: UIImage(named: "LoginBanner2")!),
                        ImageSource(image: UIImage(named: "LoginBanner3")!),
                        ImageSource(image: UIImage(named: "LoginBanner4")!)]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if isTapLogin {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondLoginViewController") as! SecondLoginViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBannerImage()
    }
    
    private func setBannerImage() {
        //create page indicator
        let pageIndicator = UIPageControl()
        pageIndicator.currentPageIndicatorTintColor = .black
        pageIndicator.pageIndicatorTintColor = .lightGray
        self.loginBannerSlideShow.pageIndicator = pageIndicator
        self.loginBannerSlideShow.circular = false
        
        //set image
        self.loginBannerSlideShow.setImageInputs(bannerImages)
    }
    
    
    @IBAction func tapAnotherLogin(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginOptionViewController") as! LoginOptionViewController
        vc.delegate = self
        self.presentPanModal(vc)
    }
}

extension FirstLoginViewController: LoginOptionDelegate {
    func sendComplete(_ loginComplete: Bool) {
        self.isTapLogin = loginComplete
    }
}