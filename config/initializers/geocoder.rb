Geocoder.configure(
  # Geocoding options
  # timeout: 3,                 # geocoding service timeout (secs)
  lookup: :nominatim,         # name of geocoding service (symbol)
  # ip_lookup: :ipinfo_io,      # name of IP address geocoding service (symbol)
  # language: :en,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  # api_key: nil,               # API key for geocoding service
  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
  # cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],

  # Calculation options
<<<<<<< HEAD
<<<<<<< HEAD
  # units: :mi,                 # :km for kilometers or :mi for miles
=======
  units: :km                 # :km for kilometers or :mi for miles
>>>>>>> 529fbadbc5772b84cb49b1aaec5e9789e5d4efb3
=======
  units: :km,                 # :km for kilometers or :mi for miles
>>>>>>> c64c77d121ee56316d1f5b48a0b39d21fcb46ca9
  # distances: :linear          # :spherical or :linear
)
