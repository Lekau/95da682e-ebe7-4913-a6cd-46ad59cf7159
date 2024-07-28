//
//  ProfileView.swift
//  About-You
//
//  Created by Lekau on 2024/07/27.
//

import UIKit

class ProfileView: UIView {

  let profileImageView: UIImageView = {
    let imageView = UIImageView(image: UIImage(systemName: "person")?.withRenderingMode(.alwaysTemplate))
    imageView.tintColor = .white
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  let nameLabel: UILabel = {
    let label = UILabel()
      label.text = "Lekau Mamabolo"
    label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
    label.textColor = .white
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  let titleLabel: UILabel = {
    let label = UILabel()
      label.text = "New Engineer"
    label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    label.textColor = .gray
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  let statsContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.layer.cornerRadius = 10
    view.layer.borderWidth = 2
    view.layer.borderColor = UIColor.black.cgColor
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  let mainContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .black
    view.layer.cornerRadius = 10
    view.layer.borderWidth = 2
    view.layer.borderColor = UIColor.black.cgColor
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setupView() {
    addSubview(mainContainerView)
    mainContainerView.addSubview(profileImageView)
    mainContainerView.addSubview(nameLabel)
    mainContainerView.addSubview(titleLabel)
    setupConstraints()
  }

  private func setupConstraints() {
    NSLayoutConstraint.activate([
      mainContainerView.topAnchor.constraint(equalTo: topAnchor),
      mainContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
      mainContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
      mainContainerView.bottomAnchor.constraint(equalTo: bottomAnchor)])
      }
      }
      
