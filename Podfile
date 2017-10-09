# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

target 'bit-flyer-chart-mvvm' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'RxSwift', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'
  pod 'RxCocoa', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'

  target 'bit-flyer-chart-mvvmTests' do
    inherit! :search_paths
    pod 'RxBlocking', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'
    pod 'RxTest', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'
    pod 'Quick'
    pod 'Nimble'
  end

  target 'bit-flyer-chart-mvvmUITests' do
    inherit! :search_paths
    pod 'RxBlocking', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'
    pod 'RxTest', git: 'https://github.com/ReactiveX/RxSwift.git', branch: 'rxswift4.0-swift4.0'
    pod 'Quick'
    pod 'Nimble'
  end

end
