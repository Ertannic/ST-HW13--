import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
    }
    
    func setupTabBarViewControllers() {
        
        // MediaLibary TABBAR
        let mediaLibrary = MediaLibaryTabBarViewController()
        mediaLibrary.title = "Медиатека"
        let mediaLibraryIcon = UITabBarItem(title: "Медиатека",
                                            image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
                                            selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        mediaLibrary.tabBarItem = mediaLibraryIcon
        
        // ForYou TABBAR
        let forYou = ForYouTabBarViewController()
        forYou.title = "Для Вас"
        let forYouIcon = UITabBarItem(title: "Для Вас",
                                      image: UIImage(systemName: "heart.text.square.fill"),
                                      selectedImage: UIImage(systemName: "heart.text.square.fill"))
        forYou.tabBarItem = forYouIcon
        
        // Albums TABBAR
        let albums = AlbumsTabBarViewController()
        albums.title = "Альбомы"
        let albumsIcon = UITabBarItem(title: "Альбомы",
                                      image: UIImage(systemName: "person.crop.rectangle.stack.fill"),
                                      selectedImage: UIImage(systemName: "person.crop.rectangle.stack.fill"))
        albums.tabBarItem = albumsIcon
        let nav3 = UINavigationController(rootViewController: albums)
        
        // Search TABBAR
        let search = SearchTabBarViewController()
        search.title = "Поиск"
        let searchIcon = UITabBarItem(title: "Поиск",
                                      image: UIImage(systemName: "magnifyingglass"),
                                      selectedImage: UIImage(systemName: "magnifyingglass"))
        search.tabBarItem = searchIcon
        
        let controllers = [mediaLibrary, forYou, nav3, search]
        self.setViewControllers(controllers, animated: true)
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Будет выбран контроллер - \(viewController.title ?? "")")
        return true
    }
}
