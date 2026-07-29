import json

new_keys = {
    "zh": {"navAppGuide": "软件指南", "appGuideTitle": "RapidEFI 使用指南"},
    "en": {"navAppGuide": "App Guide", "appGuideTitle": "RapidEFI User Guide"},
    "pt": {"navAppGuide": "Guia do App", "appGuideTitle": "Guia do Usuário RapidEFI"},
    "ja": {"navAppGuide": "アプリガイド", "appGuideTitle": "RapidEFI ユーザーガイド"}
}

for lang, data in new_keys.items():
    arb_file = f"lib/l10n/app_{lang}.arb"
    with open(arb_file, "r", encoding="utf-8") as f:
        existing = json.load(f)
    existing.update(data)
    with open(arb_file, "w", encoding="utf-8") as f:
        json.dump(existing, f, ensure_ascii=False, indent=2)

print("Updated arb with app guide keys.")
