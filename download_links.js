// script.js
console.log('Executing JavaScript from file...');
await (async function navigate() {
  const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));
  const downloadLinks = document.querySelectorAll('a.small.f-dl.dl-stub');
  console.log(`Found ${downloadLinks.length} download links on this page`);
  for (const link of downloadLinks) { await sleep(2000); link.click(); }
  const nextPageLink = Array.from(document.querySelectorAll('.nav a.pg')).find(link => link.textContent.trim() === 'След.');
  if (nextPageLink) { await sleep(7000); nextPageLink.click(); setTimeout(navigate, 7000); }
})();

