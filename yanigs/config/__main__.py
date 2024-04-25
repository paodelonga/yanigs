from dynaconf import Dynaconf

settings = Dynaconf(settings_files="settings.toml", environments=True, default_env="APP")
secrets = Dynaconf(settings_file=".secrets.toml", environments=True, default_env="APP")
