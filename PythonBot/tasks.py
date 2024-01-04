# from robocorp.tasks import task
# https://robocorp.com/docs/development-guide/getting-started/simple-example-robot#the-robot-written-in-python  two Examples


from RPA.Browser.Selenium import Selenium
from RPA.FileSystem import FileSystem

browser = Selenium()


def store_web_page_content():
    browser.open_available_browser("https://robotframework.org/")
    text = browser.get_text("css:body")
    FileSystem().create_file("PythonBot/output/text.txt", text, overwrite=True)
    browser.screenshot("css:h1", "PythonBot/output/screenshot.png")


def main():
    try:
        store_web_page_content()
    finally:
        browser.close_browser()


if __name__ == "__main__":
    main()