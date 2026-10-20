# Deployment checklist — Creator Hub Auctions

Do not deploy publicly until the following are addressed.

- [ ] Use a supported Node.js release and review the stability status of `node:sqlite`.
- [ ] Add authenticated accounts, secure session management, email verification and password reset.
- [ ] Enforce listing ownership, seller permissions and administrator role checks on the server.
- [ ] Add authenticated bid identity, bid audit logs, rate limiting, bot/abuse controls and a clear auction close/tie/anti-sniping policy.
- [ ] Implement auction settlement and winner notification; define reserve price and cancellation rules.
- [ ] Integrate a supported payment provider, server-side payment verification and signed webhooks. Never mark orders paid from a browser redirect alone.
- [ ] Implement refunds, chargebacks, seller payout rules, buyer protection and dispute handling.
- [ ] Add image upload/storage with content checks, size limits and moderation rather than accepting arbitrary URLs.
- [ ] Add shipping, delivery tracking, taxes/fees, seller returns policies and Jamaican/international fulfilment rules.
- [ ] Add terms, privacy notice, cookies/session notice, prohibited-item policy, contact/support and data-retention controls.
- [ ] Add rate limits, CSRF/origin strategy, request logging, monitoring, backups and tested database restore.
- [ ] Use HTTPS, secure environment secrets, least-privilege hosting, and separate staging from production.
- [ ] Run security, accessibility, mobile, load and end-to-end tests against the intended deployment environment.

The current starter has no real payment integration and should not be used to collect real customer payments or promise escrow/buyer protection.
