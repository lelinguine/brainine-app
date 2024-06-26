'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "58b947e54aa3da97e6c4d00440ec80e8",
"assets/AssetManifest.bin.json": "9e738c41eac1db0b1cafb0f74a90b815",
"assets/AssetManifest.json": "ebed8b377a2afbf7df931df41af4b5e9",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/lib/assets/dark/chrono.png": "60391a04a0367fb1511a01e67f033f24",
"assets/lib/assets/dark/crown.png": "89c0dde78bdf21d47c29875e4f49158e",
"assets/lib/assets/dark/emptyheart.png": "ae129e4ad24b497caad1387da9e061b1",
"assets/lib/assets/dark/graph.png": "e28bd20507661e7302fa313b5d12b351",
"assets/lib/assets/dark/heart.png": "48b72f81eab1a8d63110b5f15012ef39",
"assets/lib/assets/dark/more.png": "f96bd728e0779018c585fbd2ddcccc6f",
"assets/lib/assets/dark/run.png": "3e557f5b5803a7e7af3cb30d63382a6c",
"assets/lib/assets/dark/skull.png": "6c423f61f352f4ceb7e595288a9b27e6",
"assets/lib/assets/dark/star.png": "92371a33d8e975f4feb4fe95f705eb83",
"assets/lib/assets/dark/trophy.png": "4fb390fb4e99449deb353511839d81a1",
"assets/lib/assets/light/chrono.png": "0878008083350f5f4a806df4eacececa",
"assets/lib/assets/light/crown.png": "ee206a36d3e3d2ae2bce20356eada70d",
"assets/lib/assets/light/emptyheart.png": "30c9fbcd4a3a7a3a0a5a7fdcb493d153",
"assets/lib/assets/light/graph.png": "7e9dcc8dd8e6455186dc95f86f35ee61",
"assets/lib/assets/light/heart.png": "de40f8563c34038a8291765c3f16cb8e",
"assets/lib/assets/light/more.png": "462f7996d1363f262d91dca34e013bff",
"assets/lib/assets/light/run.png": "2e0243b641aa61cfb7ac03179abec3f3",
"assets/lib/assets/light/skull.png": "90b24a7461183ca6b234884f274ece0b",
"assets/lib/assets/light/star.png": "b91bfc4ad3fcb6df869f63e91824d9b7",
"assets/lib/assets/light/trophy.png": "df713c26492eb2ebf1eb73c753e3e592",
"assets/lib/packs.json": "2b3c6c2be7a25971aae3d94f4134679b",
"assets/NOTICES": "ce92084bdd639c2cd407b599f04d7aef",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "7737f5fc722b6a040ac15271ea8d92fb",
"canvaskit/canvaskit.js.symbols": "ee28c743c79cf9fe910e61b7fd95b93c",
"canvaskit/canvaskit.wasm": "97f0f58b59576116cea6338ff17fd1fc",
"canvaskit/chromium/canvaskit.js": "2f82009588e8a72043db753d360d488f",
"canvaskit/chromium/canvaskit.js.symbols": "24907d700736ef0810e19bdf1cb84c22",
"canvaskit/chromium/canvaskit.wasm": "0e4b52c4ab1be1280ef35144ae0817df",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "cc728537b31d099870b80e82c164775b",
"canvaskit/skwasm.wasm": "ce8b3e20606f87265c0c0d14d8968068",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4af2b91eb221b73845365e1302528f07",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2dc258f4b303459352ffeb88907bc37a",
"/": "2dc258f4b303459352ffeb88907bc37a",
"main.dart.js": "758ce67550ff1c8d2917ad07035dca22",
"manifest.json": "a320c7f7da342fddf6ece851e6bb3e8c",
"version.json": "f4da74dfa51ef325abaa24175875b537"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
