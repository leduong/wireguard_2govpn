# Định nghĩa các biến cho các lệnh build
FLUTTER_BUILD_IOS = flutter build ios --release
FLUTTER_BUILD_IPA = flutter build ipa
FLUTTER_BUILD_ANDROID = flutter build apk --release
FLUTTER_BUILD_WEB = flutter build web --release
FLUTTER_BUILD_MACOS = flutter build macos --release

# Định nghĩa các targets
.PHONY: all ios ipa android web macos clean

# Target để build tất cả các nền tảng
all: ios android web macos

commit:
	git commit -m "🍻 Updated `date`"

push:
	git push
	
# Target để build iOS
ios:
	$(FLUTTER_BUILD_IOS)

# Target để build IPA
ipa:
	$(FLUTTER_BUILD_IPA)

# Target để build Android
android:
	$(FLUTTER_BUILD_ANDROID)

# Target để build Web
web:
	$(FLUTTER_BUILD_WEB)

# Target để build macOS
macos:
	$(FLUTTER_BUILD_MACOS)

# Target để dọn dẹp dự án
clean:
	flutter clean
