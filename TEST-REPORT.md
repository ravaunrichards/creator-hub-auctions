# Test report — Creator Hub Auctions 0.1.0

Executed locally against a temporary SQLite database.

- `npm run check` — passed: server, browser app, and test file syntax checks.
- `npm test` — passed: 4/4 integration tests.
  1. Health endpoint and seeded catalogue/category filtering.
  2. Under-minimum bid rejected; valid increment accepted and current bid updated.
  3. Fixed-price order recorded as unpaid, duplicate purchase rejected, order lookup succeeds with matching code/email.
  4. Invalid listing rejected; valid listing persists and can be retrieved.

Node emits an experimental warning for its built-in SQLite API in this runtime. This is not a production security audit and does not verify external payment, shipping, email, identity, deployment or multi-process concurrency behaviour.
