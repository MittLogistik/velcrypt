/**
 * Inline <head> script that applies a stored theme choice before first paint
 * (prevents a flash of the wrong theme). Its SHA-256 hash is whitelisted in
 * public/_headers (Content-Security-Policy script-src). If you change this
 * string, run `npm run csp-hash` and update the hash there.
 */
export const THEME_INIT =
  "try{var t=localStorage.getItem('velcrypt-theme');if(t==='light'||t==='dark')document.documentElement.dataset.theme=t}catch(e){}";
