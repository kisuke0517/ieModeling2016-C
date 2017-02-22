//  ViewController.swift
//  UIPageViewControllerSample
//
//  Copyright © 2015年 CrossBridge. All rights reserved.
//
import UIKit

class ViewController2: UIViewController, UIPageViewControllerDataSource {

    
    // ContainerView に Embed した UIPageViewController のインスタンスを保持する
    var pageViewController2: UIPageViewController?
    
    // ページングして表示させる ViewControllerを保持する
    var day: Int = 1
    var month : Int = 1
    var year : Int = 2000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //a()
        // Storyboard 上に配置した ViewController(StoryboardID = DataViewController) をインスタンス化して配列に追加する
        // 最初に表示する画面として配列の先頭の ViewController を設定する
        pageViewController2 = childViewControllers[0] as? UIPageViewController
        pageViewController2!.dataSource = self
        pageViewController2!.setViewControllers([getFirst()], direction: .forward, animated: false, completion: nil)
    }
    
    func getFirst() -> DataViewController2 {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController2") as! DataViewController2
        vc.labelStr = day.description
        vc.labelStr2 = month.description
        vc.labelStr3 = year.description
        return vc
    }
    
    func getSecond() -> DataViewController2 {
        day = day + 1
        
        if(day == 31){
            day = 1
            month = month + 1
            
            if(month == 13){
                year = year + 1
            }
            //let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            //self.present(next,animated: true, completion: nil)
            //m = 1
        }
        
        if(day == 5){
            //let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            //self.present(next,animated: true, completion: nil)
        }
        
        if(day == 16){
            
        }
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController2") as! DataViewController2
        vc.labelStr = day.description
        vc.labelStr2 = month.description
        vc.labelStr3 = year.description
        return vc
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // 逆方向にページ送りした時に呼ばれるメソッド
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    // 順方向にページ送りした時に呼ばれるメソッド
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return getSecond()
    }
}

