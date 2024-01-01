import logging
from os import environ


logging.basicConfig(
    level=environ.get("LOG_LEVEL", "DEBUG"),
    format="%(asctime)s - %(levelname)s - %(message)s",
)


def main():
    print("Hello World!")


if __name__ == "__main__":
    main()
