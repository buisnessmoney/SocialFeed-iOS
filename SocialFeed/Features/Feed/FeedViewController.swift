import UIKit

final class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Feed"
        view.backgroundColor = .systemBackground

        setupLabel()
    }

    private func setupLabel() {
        let label = UILabel()
        label.text = "SocialFeed-iOS"
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
