# バッテリーの%を表示する
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# Spotlight検索の表示ショートカット:⌥(option) + space
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "{enabled = 1; value = { parameters = (32, 49, 524288); type = standard; }; }"

# 入力ソースの設定を削除
defaults delete com.apple.HIToolbox AppleEnabledInputSources
# 入力ソースを設定する
defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add \
'(
        {
        InputSourceKind = "Keyboard Layout";
        "KeyboardLayout ID" = 2;
        "KeyboardLayout Name" = British;
    },
        {
        "Bundle ID" = "com.apple.inputmethod.Kotoeri.RomajiTyping";
        "Input Mode" = "com.apple.inputmethod.Japanese";
        InputSourceKind = "Input Mode";
    },
        {
        "Bundle ID" = "com.apple.inputmethod.Kotoeri.RomajiTyping";
        InputSourceKind = "Keyboard Input Method";
    },
        {
        "Bundle ID" = "com.apple.CharacterPaletteIM";
        InputSourceKind = "Non Keyboard Input Method";
    },
        {
        "Bundle ID" = "com.apple.50onPaletteIM";
        InputSourceKind = "Non Keyboard Input Method";
    }
)'

