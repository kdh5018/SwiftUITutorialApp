//
//  UIKitView.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct UIKitVCView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> MyViewController {
        return MyViewController()
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        print(#fileID, #function, #line, "- ")
    }
    
    
}

#Preview {
    UIKitVCView()
}



class MyViewController: UIViewController {
    override func loadView() {
        super.loadView()
        print(#fileID, #function, #line, "- ")
        self.view.backgroundColor = .systemPink
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "- ")
        applySimpleSwiftUIView()
    }
    
    func applySimpleSwiftUIView() {
        let hostingVC = UIHostingController(rootView: SimpleSwiftUIView())
        hostingVC.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.addChild(hostingVC)
        self.view.addSubview(hostingVC.view)
        hostingVC.didMove(toParent: self)
        NSLayoutConstraint.activate([
            hostingVC.view.topAnchor.constraint(equalTo: self.view.topAnchor),
            hostingVC.view.heightAnchor.constraint(equalToConstant: 100),
            hostingVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60),
            hostingVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -60)
        ])
    }
    
}

//extension UIViewController {
//    
//    private struct VCRepresentable: UIViewControllerRepresentable {
//        let vc: UIViewController
//        
//        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//            
//        }
//        
//        func makeUIViewController(context: Context) -> some UIViewController {
//            return vc
//        }
//    }
//    
//    func getRepresentable() -> some View {
//        VCRepresentable(vc: self)
//    }
//}
