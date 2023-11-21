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
        
    }
    
    
}

#Preview {
    UIKitVCView()
}

//class MyViewController: UIViewController {
//    static var previews: some View {
//        UIKitView()
//    }
//}

class MyViewController: UIViewController {
    override func loadView() {
        super.loadView()
        print(#fileID, #function, #line, "- ")
        self.view.backgroundColor = .systemPink
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "- ")
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
