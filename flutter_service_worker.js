'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"splash/img/light-1x.gif": "9295a77c7916c8b63c1a6d79d3150227",
"splash/img/dark-1x.gif": "9295a77c7916c8b63c1a6d79d3150227",
"splash/img/light-4x.gif": "32daa81d937e0b63f5926bd1381f1716",
"splash/img/dark-2x.gif": "939a1396cee5bcfcee37af660a8d176e",
"splash/img/dark-4x.gif": "32daa81d937e0b63f5926bd1381f1716",
"splash/img/dark-3x.gif": "77f84490f817d7e758e8487a3d44f104",
"splash/img/light-3x.gif": "77f84490f817d7e758e8487a3d44f104",
"splash/img/light-2x.gif": "939a1396cee5bcfcee37af660a8d176e",
"index.html": "557e0d5d12f25f85e70ae64b06421918",
"/": "557e0d5d12f25f85e70ae64b06421918",
"assets/NOTICES": "4609b5ece0cf2ef4c2736ff583805f8e",
"assets/assets/images/grid3.png": "a9fe33dae4b78f61e69afabae96bc80c",
"assets/assets/icons/electroMall.png": "37b73b18ec6793acf3f51a90d9ed6ef9",
"assets/assets/icons/sellAnyAd.png": "d490491eeca3539426028f259787960d",
"assets/assets/icons/app_store.png": "249939a3c985dedbab4f4b93362a8b56",
"assets/assets/icons/education.svg": "2b0317e36d7bd9084e6d01b074312672",
"assets/assets/icons/maidsCC.png": "6e32b1d53b331f491aba464d80bf16e0",
"assets/assets/icons/datum.png": "0b92cb81eb22dbf3d83881ddd1a9b2db",
"assets/assets/icons/android.png": "61f9d257d2793560129382b1e16c4420",
"assets/assets/icons/experience.svg": "bec593f8edb1b196c8494859468d36ef",
"assets/assets/icons/mich_logo.svg": "0cecbfeb6638934eb54bb85d9aa52bd7",
"assets/assets/icons/tecomsa.png": "8979bee8653f53000257098643f975a8",
"assets/assets/icons/flutter.png": "2aaf8f7045948a1557e0f7751f156e93",
"assets/assets/icons/figma.png": "2f4585853d8a93d8ff24b6aa73bbdd4e",
"assets/assets/icons/scit.png": "76bc234668b14c41c68da819c98941b0",
"assets/assets/icons/mkGroup.png": "2774af50023c76fd519a03b079fde58e",
"assets/assets/icons/waving.svg": "fcc5f30d9d1221235464383a9e7d878e",
"assets/assets/icons/facebook.png": "aed3c5d820d3d0c762847ee596cc23be",
"assets/assets/icons/download.png": "6b8afa1d2070543abbadd6583cf81aab",
"assets/assets/icons/arrow_right.png": "df890201f81adfa102470942f110ad2b",
"assets/assets/icons/linkedin.png": "ae123244ff3a0dfb88b3eeafc645f30b",
"assets/assets/icons/spring_boot.png": "ae735aa7f4b93df32f5ef916abd35f26",
"assets/assets/icons/appsgate.png": "0df724b285c4f4d7b6e7ae3adca62711",
"assets/assets/icons/apple.png": "0328928b05c2708bd4daddad2587efa8",
"assets/assets/icons/google_play.png": "8412cc2c8fb288c9c3cb9063e2e2aa11",
"assets/assets/icons/rs4it.png": "e7e85cc641f6ae1bfb3d3f5cb58d2444",
"assets/assets/icons/loading.gif": "ef2e49a0f54f0b0cb4606c73fe4b8127",
"assets/assets/icons/github.png": "3056432ae3a0f706e1fad9fd3eaba8fe",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e4b5889b793139805e1e26227d0fd286",
"assets/fonts/MaterialIcons-Regular.otf": "bae3e78a30eff0d8ebfccd166a9e3c46",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "be7a1906a0ff18941f22403944f48781",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.json": "25fa851f269a1165891da92ef971e909",
"version.json": "6c04642a546032b022360478ca32f6f8",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"main.dart.js": "52dc67238e25f287940126cc776715a0",
"icons/Icon-maskable-512.png": "b9e01ea65a68248cdf9afe487a44958d",
"icons/Icon-192.png": "f8273f73d32dca9bd5540ea8e854cdf8",
"icons/Icon-512.png": "b9e01ea65a68248cdf9afe487a44958d",
"icons/Icon-maskable-192.png": "f8273f73d32dca9bd5540ea8e854cdf8",
"manifest.json": "2d54fec2b113294210ebcb3670da6042",
"favicon.png": "eebdeff357e1d203a077fbc665fe60d4",
"flutter_bootstrap.js": "283d7a8dfc19343a26e0b0831df91117"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
