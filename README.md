# GitHub Issues Finder

This is a **Ruby on Rails 7.0.8.7** application that interacts with the GitHub API to fetch and display issues from a given repository. Users can search for issues by providing a repository name (`user/repo` format), and save favorite issues to a separate page.

## Features

- Search for GitHub repository issues by entering `user/repo` format.
- Display a list of issues with titles, authors, and links.
- Save issues as favorites.
- View favorite issues on a separate page.

## Getting Started

### Prerequisites

- Ruby **3.1.2**
- Rails **7.0.8.7**
- Bundler installed (`gem install bundler`)

### Installation

1. **Clone the repository**

   ```sh
   git clone https://github.com/umersani47/github-issues-finder.git
   cd github-issues-finder
   ```

2. **Install dependencies**

   ```sh
   bundle install
   ```

3. **Set up the database**

   ```sh
   rails db:setup
   ```

4. **Start the Rails server**

   ```sh
   rails server
   ```

### Usage

1. **Visit the homepage** (`http://localhost:3000/`).
2. **Enter a repository name** in `user/repo` format.
3. Click `Search` to fetch and display issues.
4. Click on the checkbox to save an issue as a favorite.
5. Click `View Favorites` to see saved issues.

### Example Search Query

To test, search for:

```
github/codeql-action
```

## Technologies Used

- **Ruby on Rails 7.0.8.7**
- **Octokit (GitHub API Client for Ruby)**
- **PostgreSQL (or SQLite in development)**
- **Stimulus.js for frontend interactions**
- **Tailwind CSS for styling**

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Add new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License

This project is open-source and available under the MIT License.

## Contact

For any questions, feel free to reach out!


