from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

BINARY_LOCATION = "/opt/chrome/chrome"
EXECUTABLE_PATH = "/opt/chromedriver"


def handler(event=None, context=None):
    query = event.get("query")
    options = webdriver.ChromeOptions()
    service = webdriver.ChromeService(executable_path=EXECUTABLE_PATH)

    options.binary_location = BINARY_LOCATION
    options.add_argument("--headless")
    options.add_argument('--no-sandbox')
    options.add_argument("--disable-gpu")
    options.add_argument("--single-process")
    options.add_argument("--disable-dev-shm-usage")

    driver = webdriver.Chrome(options=options, service=service)
    driver.get(f"https://www.youtube.com/results?search_query={query}")

    wait = WebDriverWait(driver, 10)
    videos = wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "ytd-video-renderer")))

    results = []
    for video in videos:
        title = video.find_element(By.CSS_SELECTOR, "#video-title").text
        link = video.find_element(By.CSS_SELECTOR, "#video-title").get_attribute("href")
        video_id = link.split("v=")[-1].split("&")[0]
        results.append({"title": title, "link": link, "youtube_video_id": video_id})

    driver.quit()
    return results
