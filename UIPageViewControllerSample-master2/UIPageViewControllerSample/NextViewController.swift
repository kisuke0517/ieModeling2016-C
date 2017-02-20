import UIKit

class NextViewController: UIViewController,UIGestureRecognizerDelegate {
    
    
    @IBOutlet weak var web1: UIWebView!
    
    var n: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //web1.delegate = self
        let path : String = Bundle.main.path(forResource:"index", ofType: "html", inDirectory: "scriptsample")!
        web1.loadRequest(URLRequest(url: URL(string: path)! as URL) as URLRequest)
        
        
        // シングルタップ
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(NextViewController.tapSingle(_:))) //Swift2.2以前
        //let singleTap = UITapGestureRecognizer(target: self, action: #selector(NextViewController.tapSingle(sender:)))  //Swift3
        singleTap.numberOfTapsRequired = 1
        //singleTap.numberOfTouchesRequired = 2  //こう書くと2本指じゃないとタップに反応しない
        
        //これを書かないとダブルタップ時にもシングルタップのアクションも実行される
        //singleTap.requireGestureRecognizerToFail(doubleTap)  //Swift2.2
        //singleTap.require(toFail: doubleTap)  //Swift3
        
        view.addGestureRecognizer(singleTap)
    }
    
    func tapSingle(_ sender: UITapGestureRecognizer) {
        n = n + 1;
        //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //vc.m = 2
        
        if(n == 5){
            //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            //vc.m = vc.m + 1
            //performSegue(withIdentifier: "nextSegue", sender: nil)
            self.dismiss(animated: true, completion: nil)
            //let before = storyboard!.instantiateViewController(withIdentifier: "PageViewController")
            //self.present(before,animated: true, completion: nil)
            //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            //vc.m = vc.m + 1
        }
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
