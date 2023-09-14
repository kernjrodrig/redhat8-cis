#!/bin/bash
#5.5.4  Verify password hashing algorithm is sha512:
# Verificar y agregar crypt_style en /etc/libuser.conf
if ! grep -q "crypt_style = sha512" /etc/libuser.conf; then
    echo "crypt_style = sha512" >> /etc/libuser.conf
    echo "Se agregó 'crypt_style = sha512' en /etc/libuser.conf"
fi

# Verificar y agregar ENCRYPT_METHOD en /etc/login.defs
if ! grep -q "ENCRYPT_METHOD SHA512" /etc/login.defs; then
    echo "ENCRYPT_METHOD SHA512" >> /etc/login.defs
    echo "Se agregó 'ENCRYPT_METHOD SHA512' en /etc/login.defs"
fi

echo "Verificación y actualización completadas."
