import secrets

def generate_secret_key():
    return secrets.token_urlsafe(50)

if __name__ == "__main__":
    print(generate_secret_key())