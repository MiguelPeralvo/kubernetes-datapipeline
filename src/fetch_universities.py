import requests
r = requests.get("https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json")
print(r.json())