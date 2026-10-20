# Creator Hub Auctions — Version 0.1.0

A separate, original-brand marketplace starter inspired by common online auction and fixed-price marketplace patterns. It is not affiliated with eBay and does not use eBay branding.

## Run locally

**Requirements:** Node.js 22.5 or newer (uses the built-in `node:sqlite` module; Node currently labels this module experimental).

1. Extract the ZIP.
2. Open the `creator-hub-auctions` folder in a terminal.
3. Run `npm run check` and `npm test`.
4. Run `npm start`.
5. Open `http://localhost:3000` on that computer. For phone testing on the same Wi-Fi, open the computer's LAN IP and port 3000, if its firewall permits it.

Windows users can double-click `START-WINDOWS.bat`. macOS/Linux users can run `./start-mac-linux.sh`.

The SQLite database is created at `data/auctions.sqlite`. Keep that file backed up; it contains listing, bid and order records. Set `DATABASE_PATH` to move it. The server binds to `0.0.0.0` by default to permit local-network testing; do not expose it to the public internet without production hardening.

## Included

- Responsive storefront for phone and desktop
- Search, category filters and sorting
- Sample auction and fixed-price listings
- Server-side bid minimum and auction-close checks, with transactional bid updates
- Fixed-price order request with duplicate purchase prevention
- SQLite persistence for listings, bids and orders
- Order lookup by reference plus checkout email
- New listing form with input validation
- Read-only operations summary endpoint
- Basic security headers and JSON request-size limit
- Automated integration tests

## API outline

- `GET /api/health`
- `GET /api/listings?q=&category=&type=&sort=`
- `GET /api/listings/:id`
- `POST /api/listings`
- `POST /api/bids`
- `POST /api/orders`
- `GET /api/orders/track?code=&email=`
- `GET /api/admin/summary` (read-only metrics only; not an admin console)

## Important launch limitations

This is a development starter, **not a production-ready marketplace**. Sample listings and externally hosted sample images are placeholders; replace them with accurate listings and images you are authorised to use. New listings are immediately public and the seller name is not authenticated. There is no customer/seller login, verified identity, listing ownership control, admin authentication/moderation UI, messaging, escrow, dispute workflow, shipping-label integration, tax calculation, or real payment processing. Anyone with access to the local server can submit listings and bids. Order records are explicitly unpaid and no money is collected.

Before public launch, implement and security-test account authentication, seller ownership/permissions, admin role enforcement, abuse/rate limiting, anti-sniping/auction close policy, winner notification, payment-provider webhooks, refunds/chargebacks, buyer protection, privacy/terms, prohibited-item policy, fulfilment and support. A bid currently updates the high bid but the app does not automatically close an auction and award the winner; the listed close time is enforced when new bids are placed, and finalisation/winner settlement needs a dedicated workflow. Do not treat a top bid as a completed sale.

No deployment has been performed. This project does not modify Creator Hub Fashion, Creator Hub Market, or any existing repository or deployment.
