#!/bin/bash
echo "This is not recommended as the certificate will not be trusted. You should head over to a LetsEncrypt provder\nor run LetsEncrypt locally to generate a certificate.\n===============================\nThis isn't meant for production, just testing. It won't harm anything but whatever you may use this certificate\nwith will appear as untrusted."
openssl req -newkey rsa:4096 -new -nodes -x509 -days 30 -keyout key.pem -out cert.pem
