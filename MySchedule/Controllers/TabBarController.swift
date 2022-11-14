//
//  ViewController.swift
//  MySchedule
//
//  Created by Oleg Popov on 13.11.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super .init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = .systemCyan
        tabBar.barTintColor = .gray
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = UIColor.darkGray.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let sheduleViewController = SheduleViewController()
        let tasksViewController = TasksViewController()
        let contactsViewController = ContactsViewController()
      
        
        let sheduleViewCNavigation = NavBarController(rootViewController: sheduleViewController)
        let tasksViewNavigation = NavBarController(rootViewController: tasksViewController)
        let contactsViewNavigation = NavBarController(rootViewController: contactsViewController)
       
        
        sheduleViewCNavigation.tabBarItem = UITabBarItem(title: "Schedule",                                                image: UIImage(systemName: "calendar.badge.clock"),
                                                     tag: 0)
        tasksViewNavigation.tabBarItem = UITabBarItem(title: "Tasks",                                                 image: UIImage(systemName: "text.badge.checkmark"),
                                                     tag: 1)
        contactsViewNavigation.tabBarItem = UITabBarItem(title: "Contacts",                                                image: UIImage(systemName: "rectangle.stack.person.crop"),
                                                     tag: 2)
     
        
        setViewControllers([sheduleViewCNavigation, tasksViewNavigation, contactsViewNavigation], animated: true)
    }
}
