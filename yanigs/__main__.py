import config
import database

class Application:

    def __init__(self):
        print(config.settings.name)
        print(config.secrets.username)
        print(config.secrets.password)

if __name__ == '__main__':
    app = Application()
