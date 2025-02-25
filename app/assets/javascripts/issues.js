document.addEventListener("DOMContentLoaded", function () {
  const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

  document.querySelectorAll(".favorite-checkbox").forEach((checkbox) => {
    checkbox.addEventListener("click", function () {
      const issueNumber = this.dataset.issueNumber;
      const title = this.dataset.title;
      const url = this.dataset.url;
      const author = this.dataset.author;
      const repoName = this.dataset.repoName;

      fetch("/save_favorite", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": csrfToken,
        },
        body: JSON.stringify({
          issue_number: issueNumber,
          title: title,
          url: url,
          author: author,
          repo_name: repoName,
        }),
      })
        .then((response) => response.json())
        .then((data) => {
          alert(data.message || "Error saving favorite");
        })
        .catch(() => alert("Error saving favorite"));
    });
  });
});
