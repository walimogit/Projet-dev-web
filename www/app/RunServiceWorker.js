if('serviceWorker' in navigator){
    navigator.serviceWorker.register('ServiceWorker.js')
    .then( (sw) => console.log('Le Service Worker a été enregistré', sw))
    .catch((err) => console.log('Le Service Worker est introuvable !!!', err));
}