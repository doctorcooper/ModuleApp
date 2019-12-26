platform :ios, '11.0'
use_frameworks!

def ui
	pod 'Kingfisher'
	pod 'SnapKit'
end

def rx
	pod 'RxSwift'
	pod 'RxCocoa'
	pod 'ReactorKit'
end

def network
	pod 'Moya/RxSwift', '14.0.0-beta.6'
	pod 'ReachabilitySwift'
end

def di 
	pod 'Swinject'
end

def all_pods 
	ui
	rx
	network
	di
end

target 'ModuleApp' do 
	rx
	di
end

target 'DI' do
	di
end

target 'MainCore' do
	di
	rx
	ui
end

target 'NetworkUtils' do
	network
	rx
end

target 'WeatherCore' do
	rx
	di
	ui
end

target 'WeatherAPI' do
	network
	rx
end
