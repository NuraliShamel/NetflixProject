import UIKit
import SnapKit

class ViewController: UITabBarController {

   
    override func viewDidLoad() {
        super.viewDidLoad()


        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: AccountViewController())
        let vc5 = UINavigationController(rootViewController: DownloadViewController())

        vc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        
        vc2.tabBarItem = UITabBarItem(title: "Upcoming", image: UIImage(systemName: "play.circle"), selectedImage: UIImage(systemName: "play.circle"))
        
        vc3.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        
        vc4.tabBarItem = UITabBarItem(title: "Downloads", image: UIImage(systemName: "arrow.down.to.line"), selectedImage: UIImage(systemName: "arrow.down.to.line"))
        
        vc5.tabBarItem = UITabBarItem(title: "My Netflix", image: UIImage(systemName: "person.crop.circle"), selectedImage: UIImage(systemName: "person.crop.circle"))
        

        tabBar.tintColor = .label

        setViewControllers([vc1, vc2, vc3, vc4,vc5], animated: true)

       
    }
}
