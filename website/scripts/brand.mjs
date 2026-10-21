// Shared SVG snippets for icon / OG generation.
export const SHIELD_PATH = 'M32 4.5 53.5 12v17.6c0 13.6-9 24.3-21.5 29.9C19.5 53.9 10.5 43.2 10.5 29.6V12L32 4.5Z';
export const V_PATH = 'M21.5 22.5 32 43.5l10.5-21';

/** Standalone logo SVG (transparent background unless bg given). */
export function logoSvg({ size = 64, bg = null, pad = 0 } = {}) {
  const vb = 64 + pad * 2;
  return `<svg xmlns="http://www.w3.org/2000/svg" width="${size}" height="${size}" viewBox="${-pad} ${-pad} ${vb} ${vb}">
  <defs>
    <linearGradient id="o" x1="10" y1="6" x2="54" y2="60" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#4F8CFF"/><stop offset="1" stop-color="#75D8FF"/></linearGradient>
    <linearGradient id="v" x1="22" y1="22" x2="42" y2="44" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#FFFFFF"/><stop offset="1" stop-color="#75D8FF"/></linearGradient>
  </defs>
  ${bg ? `<rect x="${-pad}" y="${-pad}" width="${vb}" height="${vb}" fill="${bg}"/>` : ''}
  <path d="${SHIELD_PATH}" fill="#0B1220" stroke="url(#o)" stroke-width="3.4" stroke-linejoin="round"/>
  <path d="${V_PATH}" fill="none" stroke="url(#v)" stroke-width="5.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>`;
}
