import urllib.request
import json
import os
import time

locations = {
    "crete_chania": "Chania",
    "crete_balos": "Balos_Lagoon",
    "crete_falassarna": "Phalasarna",
    "crete_elafonisi": "Elafonisi",
    "crete_imbros": "Imbros_Gorge",
    "crete_seitan": "Seitan_Limania",
    "crete_kournas": "Lake_Kournas",
    "albania_himara": "Himara",
    "albania_gjipe": "Gjipe_Canyon",
    "albania_porto_palermo": "Porto_Palermo_Castle",
    "albania_ksamil": "Ksamil",
    "albania_butrint": "Butrint",
    "albania_llogara": "Llogara_Pass",
    "albania_blue_eye": "Syri_i_Kalt%C3%ABr",
    "madeira_sao_lourenco": "Ponta_de_S%C3%A3o_Louren%C3%A7o",
    "madeira_porto_moniz": "Porto_Moniz",
    "madeira_fanal": "Laurisilva_of_Madeira",
    "madeira_arieiro": "Pico_do_Arieiro",
    "mallorca_soller": "Port_de_S%C3%B3ller",
    "mallorca_sa_calobra": "Torrent_de_Pareis",
    "mallorca_valldemossa": "Valldemossa",
    "mallorca_formentor": "Cap_de_Formentor",
    "sardinia_goloritze": "Cala_Goloritz%C3%A9",
    "sardinia_gorropu": "Su_Gorropu"
}

target_dir = r"C:\Users\sergi\.gemini\antigravity\worktrees\vacation-planner\budget-sea-vacation-planner\images"

headers = {
    'User-Agent': 'VacationPlannerApp/1.0 (contact@vacationplanner.org)'
}

for filename, wiki_title in locations.items():
    api_url = f"https://en.wikipedia.org/w/api.php?action=query&titles={wiki_title}&prop=pageimages&format=json&pithumbsize=800"
    req = urllib.request.Request(api_url, headers=headers)
    try:
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            pages = data['query']['pages']
            page = next(iter(pages.values()))
            if 'thumbnail' in page:
                img_url = page['thumbnail']['source']
                out_path = os.path.join(target_dir, f"{filename}.jpg")
                img_req = urllib.request.Request(img_url, headers=headers)
                with urllib.request.urlopen(img_req) as img_resp, open(out_path, 'wb') as f:
                    f.write(img_resp.read())
                print(f"Downloaded official wiki photo for {filename}: {img_url}")
            else:
                print(f"No thumbnail found for {wiki_title}")
    except Exception as e:
        print(f"Error fetching {wiki_title}: {e}")
    time.sleep(0.5)
