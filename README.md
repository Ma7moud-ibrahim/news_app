# News Cloud

A Flutter news app that shows top US headlines by category, powered by the NewsAPI.

## Features

- Top headlines feed (general category) on the home screen
- Horizontal category cards: Business, Entertainment, Technology, Health, Science, Sports, General
- Per-category news lists
- Article cards with image (including AVIF support), title and description
- Loading indicator while fetching

## Tech Stack

- **Networking:** dio
- **Images:** flutter_avif
- **API:** [NewsAPI](https://newsapi.org) `top-headlines` endpoint

## Project Structure

```
lib/
├── main.dart
├── module/     # Article model, category lists
├── service/    # NewsService (NewsAPI requests)
├── views/      # Home page
└── widgets/    # Category cards, news list views, article tiles
```

## Getting Started

1. Install Flutter (SDK ^3.11.1).
2. Get a free API key from [newsapi.org/account](https://newsapi.org/account).
3. Fetch dependencies and run, passing the key at build time (no key is stored in the code):
   ```bash
   flutter pub get
   flutter run --dart-define=NEWS_API_KEY=<your_api_key>
   ```

## Future Work

This app is under active development, and the remaining features can be completed in the future. Planned next steps:

- Open the full article in a web view
- Search across all articles
- Country and language selection
- Pull-to-refresh and pagination
- Saved articles with local storage
