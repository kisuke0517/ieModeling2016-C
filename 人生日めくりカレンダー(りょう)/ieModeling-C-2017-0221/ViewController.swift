//  ViewController.swift
//  UIPageViewControllerSample
//
//  Copyright © 2015年 CrossBridge. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {
    
    // ContainerView に Embed した UIPageViewController のインスタンスを保持する
    var pageViewController: UIPageViewController?
    
    // ページングして表示させる ViewControllerを保持する
    var m: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //a()
        // Storyboard 上に配置した ViewController(StoryboardID = DataViewController) をインスタンス化して配列に追加する
        // 最初に表示する画面として配列の先頭の ViewController を設定する
        pageViewController = childViewControllers[0] as? UIPageViewController
        pageViewController!.dataSource = self
        pageViewController!.setViewControllers([getFirst()], direction: .forward, animated: false, completion: nil)
    }
    
    func getFirst() -> DataViewController {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        vc.labelStr = m.description
        return vc
    }
    
    func getSecond() -> DataViewController {
        m = m + 1
        
        if(m == 31){
            m = 1
            //let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            //self.present(next,animted: true, completion: nil)
            //m = 1
        }
        if(m == 5){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou1"
            self.present(next,animated: true, completion: nil)
        }else if(m == 10){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou2"
            self.present(next,animated: true, completion: nil)
        }else if(m == 15){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou3"
            self.present(next,animated: true, completion: nil)
        }else if(m == 20){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou4"
            self.present(next,animated: true, completion: nil)
        }else if(m == 25){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou5"
            self.present(next,animated: true, completion: nil)
        }else if(m == 30){
            let next = storyboard!.instantiateViewController(withIdentifier: "NextViewController")
            AppDelegate.dir = "ryou6"
            self.present(next,animated: true, completion: nil)
        }
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        vc.labelStr = m.description
        return vc
    }
    
    func getThird() -> DataViewController {
        m = m + 1
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        vc.labelStr = m.description
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

