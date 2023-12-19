Generate private key and certificate, like this:
- `openssl req -x509 -newkey rsa:4096 -keyout example.key -out 
-sha256 -days 365 -nodes 
-subj '/CN=*.example.com' 
-addext 'subjectAltName= DNS:*.example.com'`


- After that you must create secret in commandline, like that:
  `kubectl create secret tls name-of-secret --cert=path_to_certicate.cert --key=path_to_key.key`


- If you want to see you secret, you can type this command:

  `kubectl get secret name-of-secret -o yaml | yq`


NB: I create secret on commandline because I don't want, to keep a repository
history for this kind of file, it's must be secret (-_-)
