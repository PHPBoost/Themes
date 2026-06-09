#!/usr/bin/env python3
"""
themes.json generator
"""

import json
import os
import re
import sys
import configparser


def parse_ini(filepath: str) -> dict:
    parser = configparser.RawConfigParser()
    parser.optionxform = str
    try:
        with open(filepath, encoding="utf-8") as f:
            content = "[root]\n" + f.read()
        parser.read_string(content)
        return {k: v.strip('"') for k, v in dict(parser["root"]).items()}
    except Exception:
        return {}


def parse_pictures(value: str) -> list:
    if not value:
        return []
    return [item.strip().strip('"') for item in value.split(",") if item.strip().strip('"')]


def generate_themes_json(addons_dir: str) -> list:
    entries = []

    for addon_id in os.listdir(addons_dir):
        addon_path = os.path.join(addons_dir, addon_id)
        if not os.path.isdir(addon_path):
            continue

        config_file = os.path.join(addon_path, "config.ini")
        if not os.path.isfile(config_file):
            continue

        config = parse_ini(config_file)
        if not config or config.get("addon_type") != "theme":
            continue

        names = {}
        descriptions = {}

        lang_dir = os.path.join(addon_path, "lang")
        if os.path.isdir(lang_dir):
            for locale in os.listdir(lang_dir):
                desc_file = os.path.join(lang_dir, locale, "desc.ini")
                if not os.path.isfile(desc_file):
                    continue
                desc = parse_ini(desc_file)
                if not desc:
                    continue
                names[locale] = desc.get("name", "")
                descriptions[locale] = desc.get("desc", "")

        thumbnail = parse_pictures(config.get("pictures", ""))
        thumbnail = [f for f in thumbnail if os.path.basename(f) == "theme.webp"]

        entries.append({
            "id": addon_id,
            "addon_type": config.get("addon_type", "theme"),
            "compatibility": config.get("compatibility", ""),
            "version": config.get("version", ""),
            "author": config.get("author", ""),
            "author_mail": config.get("author_mail", ""),
            "author_website": config.get("author_website", ""),
            "creation_date": config.get("creation_date", ""),
            "last_update": config.get("last_update", ""),
            "html_version": config.get("html_version", ""),
            "css_version": config.get("css_version", ""),
            "main_color": config.get("main_color", ""),
            "width": config.get("width", ""),
            "parent_theme": config.get("parent_theme", ""),
            "name": names,
            "description": descriptions,
            "thumbnail": thumbnail,
        })

    entries.sort(key=lambda e: e["id"].lower())
    return entries


def main():
    addons_dir = os.path.dirname(os.path.abspath(__file__))

    if not os.path.isdir(addons_dir):
        print(f"Dossier '{addons_dir}' introuvable.", file=sys.stderr)
        sys.exit(1)

    entries = generate_themes_json(addons_dir)
    output_file = os.path.join(addons_dir, "themes.json")

    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(entries, f, ensure_ascii=False, indent=4)

    print(f"Généré : {output_file}")
    print(f"{len(entries)} addon(s) indexé(s).")


if __name__ == "__main__":
    main()