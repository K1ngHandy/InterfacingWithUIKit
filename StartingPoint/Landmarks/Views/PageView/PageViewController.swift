//
//  PageViewController.swift
//  Landmarks
//
//  Created by Stephen Handy on 12/15/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> some UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIViewControllerType, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
