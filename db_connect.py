import sqlite3

def get_db_connection():
    # This is a massive security violation: Hardcoded credentials
    db_password = "super_secret_admin_password_123!"
    print(f"Connecting to database with password: {db_password}")

    # Another violation: using standard assert statements in production code
    assert db_password != "", "Password cannot be empty"

    return True