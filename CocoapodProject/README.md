1. Create a Flutter module with the following code
```
flutter create --template module my_flutter
```

2. Create a SwiftUI project in Xcode

3. Run `pod init` for this new iOS project

4. Open Podfile and write the following code:

```
flutter_application_path = '../flutter_cocoapod_module/'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'ios_project2' do
  install_all_flutter_pods(flutter_application_path)
end

post_install do |installer|
  flutter_post_install(installer) if defined?(flutter_post_install)
end
```

5. Run `pod install` and open `.xcworskpace`

6. If you are using Xcode 15 disable sandbox script (ENABLE_USER_SCRIPT_SANDBOXING)
