//
//  CaptureImageView.swift
//  ImagePicker-SwiftUI
//
//  Created by Arie May Wibowo on 01/09/20.
//  Copyright © 2020 Arie May Wibowo. All rights reserved.
//

import SwiftUI
import UIKit

struct CaptureImageView {
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
}


extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<CaptureImageView>) {
        // Do something
    }
}

