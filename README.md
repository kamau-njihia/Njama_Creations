# NJAMA Creations — Existing Website Source

This repository package preserves the recovered standalone HTML source for the existing NJAMA Creations photography and videography website.

## Files
- `index.html` — recovered website page. It includes the existing page styling, scripts, copy, WhatsApp links, and 22 embedded image data references.

## Hosting
This is a static HTML site. The site root is the repository root and the publish directory can be set to `.` in Netlify. No build command is required for this recovered baseline.

## Important preservation note
The original page references its Good Soil Conference reel through `/_blob/bc089cb5b70c669243774572dede33c5`. That platform-specific blob path is not included as a portable video file in this package. Before moving/redeploying this source through a new GitHub-linked Netlify workflow, obtain the original MP4 and place it in the repository (for example `assets/good-soil-conference.mp4`), then update the video source deliberately and test playback. Do not remove the existing live deployment while doing this.

## Planned work (not yet implemented)
- Preserve the current public site and existing assets/content.
- Add the approved wedding packages: KSh 50,000 (photography + a few short edited reels) and KSh 80,000 (photography + full-day long-form wedding film).
- Build the private business management features with Supabase, including role-based access for owner, authorised team members, and clients restricted to their own records.
- Test a separate preview before any production cutover.

This package is a source-recovery baseline only. It is not the completed upgrade and has not been deployed.
