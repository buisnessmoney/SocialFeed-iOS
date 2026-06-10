# SocialFeed-iOS

UIKit iOS social feed app created as a pet project for practicing Swift, UIKit, MVVM, modern collection views, networking, image caching, performance basics, unit tests and CI.

## About

SocialFeed-iOS is an educational iOS project that simulates a small social feed application.

The project is focused on clean UIKit development, testable architecture and practical iOS skills required for an iOS internship or junior iOS position.

## Planned Features

* Feed screen
* Post details screen
* User profile screen
* Comments list
* Search
* Pagination
* Pull to refresh
* Image loading and caching
* Image loading cancellation
* UICollectionView prefetching
* Loading / error / empty states
* MVVM architecture
* Coordinator navigation
* Unit tests
* Basic memory leak prevention
* GitHub Actions CI
* SwiftLint

## Tech Stack

* Swift
* UIKit
* UICollectionView
* DiffableDataSource
* CompositionalLayout
* MVVM
* Coordinator
* URLSession
* async/await
* NSCache
* XCTest
* GitHub Actions CI
* SwiftLint

## Architecture

The project will use MVVM with a separate service layer.

Main layers:

* View
* ViewModel
* Model
* FeedService
* NetworkService
* ImageLoader
* ImageCache
* Coordinator

This structure makes the code easier to test, extend and maintain.

## Project Status

In progress.

Current stage:

* Repository created
* Basic project structure planned
* UIKit implementation will be added next

## Roadmap

### Stage 1

* Create UIKit project without Storyboard
* Add AppCoordinator
* Add planned folder structure
* Add project documentation

### Stage 2

* Add Feed module
* Add Post and User models
* Add FeedServiceProtocol
* Add MockFeedService
* Add FeedViewModel
* Implement feed screen with UICollectionView

### Stage 3

* Add Post Details screen
* Add Profile screen
* Add Comments screen
* Add Search

### Stage 4

* Add real NetworkService
* Add ImageLoader
* Add ImageCache
* Add performance improvements
* Add unit tests
* Add GitHub Actions CI

## Author

Created as a pet project for iOS internship preparation.
