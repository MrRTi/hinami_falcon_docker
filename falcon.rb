#!/usr/bin/env -S falcon host
# frozen_string_literal: true

load :rack, :lets_encrypt_tls, :supervisor

hostname = File.basename(__dir__)
rack hostname, :lets_encrypt_tls do
	cache true

  endpoint do
    Async::HTTP::Endpoint.for(scheme, '0.0.0.0', port: '80', ssl_context: ssl_context)
  end

  ssl_certificate_path { './.ssl/certificate.pem' }
  ssl_private_key_path { './.ssl/private.key' }
end

supervisor
