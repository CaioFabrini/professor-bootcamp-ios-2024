//
//  ViewController.swift
//  SelectedImage
//
//  Created by Caio Fabrini on 03/12/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    private var screen: Screen?

    override func loadView() {
        screen = Screen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupActions()
    }

    // MARK: - Setup Actions
    private func setupActions() {
        screen?.selectImageButton.addTarget(self, action: #selector(selectImageTapped), for: .touchUpInside)
    }

    @objc private func selectImageTapped() {
        let alert = UIAlertController(title: "Selecionar Foto", message: "Escolha uma opção", preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Galeria", style: .default, handler: { _ in
            self.openImagePicker(sourceType: .photoLibrary)
        }))

        alert.addAction(UIAlertAction(title: "Câmera", style: .default, handler: { _ in
            self.openImagePicker(sourceType: .camera)
        }))

        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))

        present(alert, animated: true, completion: nil)
    }

    private func openImagePicker(sourceType: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(sourceType) else {
            print("Source type not available")
            return
        }

        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = sourceType
        present(imagePicker, animated: true, completion: nil)
    }

    // MARK: - UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            screen?.imageView.image = selectedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
