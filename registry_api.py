import requests
import simplejson as json


registry = "https://user:1234@docker-hub.huawei.com/"
r = requests.get("https://user:1234@docker-hub.huawei.com/" + "v2/_catalog/", verify=False)
print r.text


r = requests.get("https://user:1234@docker-hub.huawei.com/" + "v2/xx/hello/manifests/1.0", verify=False)

manifest = r.headers['Docker-Content-Digest']
print manifest

data = json.loads(r.text)
for blob in data['fsLayers']:
    blob_digest = blob['blobSum']
    print blob_digest
    r = requests.delete("https://user:1234@docker-hub.huawei.com/" + "v2/xx/hello/blobs/" + blob_digest, verify=False)
    print r

r = requests.delete("https://user:1234@docker-hub.huawei.com/" + "v2/xx/hello/manifests/" + manifest, verify=False)
print r
