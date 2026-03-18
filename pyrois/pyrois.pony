"""
A web application framework for Pony.

## Signed Cookies

Use `SignedCookie` to sign and verify cookie values with HMAC-SHA256.
The value is readable (not encrypted); the signature proves integrity.

Create a `CookieSigningKey` with `generate` (random) or `create`
(existing key material, must be at least 32 bytes), then pass it to
`SignedCookie.sign` and `SignedCookie.verify`.

```pony
let key = CookieSigningKey.generate()?
let signed = SignedCookie.sign(key, "user=alice")
match SignedCookie.verify(key, signed)
| let value: String => // "user=alice"
| let err: SignedCookieError => // tampered or wrong key
end
```
"""
