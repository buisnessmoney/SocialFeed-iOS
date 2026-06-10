# SocialFeed-iOS Project Plan

## Goal

Create a small UIKit-based social feed application that demonstrates practical iOS development skills.

The project should show:

* UIKit without Storyboard
* Modern collection views
* MVVM architecture
* Coordinator navigation
* Protocol-based service layer
* Networking with async/await
* Image loading and caching
* Performance basics for feed scrolling
* Memory management basics
* Testable services
* Unit tests
* GitHub Actions CI

## Main Screens

1. Feed
2. Post Details
3. User Profile
4. Comments
5. Search

## Core Features

### Feed

* Display list of posts
* Show author avatar
* Show author name
* Show post date
* Show post text
* Show post image
* Show likes count
* Show comments count
* Support pagination
* Support pull to refresh
* Support loading state
* Support error state
* Support empty state

### Post Details

* Display full post
* Display post image
* Display comments preview
* Navigate to comments screen
* Navigate to user profile

### Comments

* Display list of comments
* Show comment author
* Show comment text
* Show comment date
* Support empty state

### Profile

* Display user avatar
* Display user name
* Display user bio
* Display user posts

### Search

* Search posts by text
* Show search results
* Show empty state
* Show error state

## Technical Features

### UI

* UIKit without Storyboard
* UICollectionView
* DiffableDataSource
* CompositionalLayout
* Auto Layout in code
* Custom cells
* Reusable UI components

### Architecture

* MVVM
* Coordinator
* Dependency Injection
* Service layer
* Protocol-oriented design

### Feed Service

* FeedServiceProtocol
* MockFeedService
* FeedViewModel depends on protocol from the first implementation stage
* Real network service can replace mock service without rewriting ViewModel logic

### Networking

* NetworkServiceProtocol
* NetworkService
* MockNetworkService
* URLSession
* async/await
* Codable
* Network error handling

### Image Loading

* ImageLoader
* ImageCache
* NSCache
* Image request cancellation
* Safe image loading for reusable cells
* Image downsampling before displaying large images

### Performance

* UICollectionViewDataSourcePrefetching
* Image loading cancellation on cell reuse
* Prioritization of visible cells
* Avoid unnecessary UI updates during scrolling
* Image downsampling before displaying large images

### Memory Management

* Avoid retain cycles in closures
* Use weak references in coordinators and delegates where needed
* Add basic deallocation tests for ViewModels and Coordinators

### Testing

* Unit tests for FeedViewModel
* Unit tests for SearchViewModel
* Unit tests for FeedService
* Unit tests for NetworkService
* Unit tests for ImageLoader
* Unit tests for ImageCache
* Basic deallocation tests for ViewModels and Coordinators

### CI

* GitHub Actions workflow
* Build project
* Run unit tests
* Run SwiftLint

## Planned Folder Structure

```text
SocialFeed-iOS
├── App
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   └── AppCoordinator.swift
│
├── Core
│   ├── Network
│   │   ├── NetworkService.swift
│   │   ├── NetworkServiceProtocol.swift
│   │   ├── MockNetworkService.swift
│   │   ├── APIEndpoint.swift
│   │   └── NetworkError.swift
│   │
│   ├── ImageLoading
│   │   ├── ImageLoader.swift
│   │   ├── ImageLoaderProtocol.swift
│   │   └── ImageCache.swift
│   │
│   ├── Cache
│   └── Extensions
│
├── Features
│   ├── Feed
│   │   ├── FeedViewController.swift
│   │   ├── FeedViewModel.swift
│   │   ├── FeedServiceProtocol.swift
│   │   ├── MockFeedService.swift
│   │   ├── FeedCell.swift
│   │   ├── Post.swift
│   │   └── User.swift
│   │
│   ├── PostDetails
│   │   ├── PostDetailsViewController.swift
│   │   └── PostDetailsViewModel.swift
│   │
│   ├── Profile
│   │   ├── ProfileViewController.swift
│   │   └── ProfileViewModel.swift
│   │
│   ├── Comments
│   │   ├── CommentsViewController.swift
│   │   └── CommentsViewModel.swift
│   │
│   └── Search
│       ├── SearchViewController.swift
│       └── SearchViewModel.swift
│
├── Resources
├── Tests
└── UITests
```

## Development Stages

### Stage 1: Repository Setup

* Create repository
* Add README
* Add project plan
* Add planned folder structure

### Stage 2: UIKit Project Setup

* Create Xcode project
* Remove Storyboard
* Configure root view controller in code
* Add AppCoordinator
* Add basic Feed screen

### Stage 3: Feed Module + Mock Service

* Add Post model
* Add User model
* Add FeedServiceProtocol
* Add MockFeedService
* Add FeedViewModel
* Inject FeedServiceProtocol into FeedViewModel
* Add UICollectionView
* Add DiffableDataSource
* Add FeedCell
* Add loading / error / empty states

### Stage 4: Navigation

* Add Post Details screen
* Add Profile screen
* Add Comments screen
* Add Search screen
* Add Coordinator navigation

### Stage 5: Real Network Layer

* Add NetworkServiceProtocol
* Add NetworkService
* Add MockNetworkService
* Add APIEndpoint
* Add error handling
* Add async/await data loading
* Replace mock data source with network-based implementation where needed

### Stage 6: Image Loading and Performance

* Add ImageLoader
* Add ImageCache
* Add NSCache
* Add image loading cancellation
* Add UICollectionViewDataSourcePrefetching
* Add prioritization of visible cells
* Add image downsampling
* Add safe image handling for reusable cells

### Stage 7: Search

* Add Search screen
* Add SearchViewModel
* Add filtering logic
* Add empty state
* Add error state

### Stage 8: Tests and Memory Management

* Add FeedViewModelTests
* Add SearchViewModelTests
* Add FeedServiceTests
* Add NetworkServiceTests
* Add ImageLoaderTests
* Add ImageCacheTests
* Add basic deallocation tests for ViewModels
* Add basic deallocation tests for Coordinators

### Stage 9: CI

* Add GitHub Actions workflow
* Run build
* Run tests
* Add SwiftLint
* Add CI badge to README

### Stage 10: Final Polish

* Add screenshots
* Improve README
* Add architecture description
* Add demo GIF
* Prepare project for resume
