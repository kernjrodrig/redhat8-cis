#!/usr/bin/env bash
#auditor 5.5.4
# Verificar si crypt_style = sha512 en /etc/libuser.conf
if grep -Ei '^\s*crypt_style\s*=\s*sha512\b' /etc/libuser.conf; then
    echo "El parámetro crypt_style = sha512 está configurado en /etc/libuser.conf"
else
    echo "El parámetro crypt_style = sha512 no está configurado en /etc/libuser.conf"
fi

# Verificar si ENCRYPT_METHOD SHA512 en /etc/login.defs
if grep -Ei '^\s*ENCRYPT_METHOD\s+SHA512\b' /etc/login.defs; then
    echo "El parámetro ENCRYPT_METHOD SHA512 está configurado en /etc/login.defs"
else
    echo "El parámetro ENCRYPT_METHOD SHA512 no está configurado en /etc/login.defs"
fi

# Verificar si el algoritmo de hash sha512 está configurado con pam_unix.so en /etc/pam.d/system-auth y /etc/pam.d/password-auth
if grep -P -- '^\h*password\h+(requisite|required|sufficient)\h+pam_unix\.so(\h+[^#\n\r]+)?\h+sha512\b.*$' /etc/pam.d/system-auth && grep -P -- '^\h*password\h+(requisite|required|sufficient)\h+pam_unix\.so(\h+[^#\n\r]+)?\h+sha512\b.*$' /etc/pam.d/password-auth; then
    echo "El algoritmo de hash sha512 está configurado con pam_unix.so en /etc/pam.d/system-auth y /etc/pam.d/password-auth"
else
    echo "El algoritmo de hash sha512 no está configurado con pam_unix.so en /etc/pam.d/system-auth y /etc/pam.d/password-auth"
fi
