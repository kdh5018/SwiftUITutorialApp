//
//  UIKitView.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI
import UIKit

struct UIKitView: UIViewRepresentable {
    
    @Binding var speed: CGFloat
    
    func makeUIView(context: Context) -> MyUIView {
        print(#fileID, #function, #line, "- ")
        return MyUIView()
    }
    func updateUIView(_ uiView: MyUIView, context: Context) {
        print(#fileID, #function, #line, "- ")
        uiView.speed = speed
    }
    
    
}

//#Preview {
//    UIKitView()
//}

class MyUIView: UIView {
    
    var speed: CGFloat = 0.0 {
        didSet {
            print(#fileID, #function, #line, "- speed: \(speed)")
            self.speedLabel.text = "speed: \(Int(speed))"
        }
    }
    
    lazy private var speedLabel: UILabel = {
        let label = UILabel()
        label.setContentHuggingPriority(.required, for: .vertical)
        label.font = .boldSystemFont(ofSize: 34)
        label.text = "speed: \(speed)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.systemYellow
        print(#fileID, #function, #line, "- ")
        
        self.addSubview(speedLabel)
        
        NSLayoutConstraint.activate([
            speedLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            speedLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
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
