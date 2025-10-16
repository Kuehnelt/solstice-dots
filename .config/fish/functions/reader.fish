# ~/.config/fish/functions/read.fish

function reader
    # 01. Check if a book name was provided
    if not set -q argv[1]
        echo "📖 Usage: read <book name to search>"
        return 1
    end

    # 02. Format the search query and show a searching message
    set -l query (string join '+' -- $argv)
    set -l search_url "https://www.gutenberg.org/ebooks/search/?query=$query"
    echo "🔎 Searching Project Gutenberg for '$argv'..."

    # 03. Fetch the HTML content once
    set -l html (curl -sL "$search_url")
    if test -z "$html"
        echo "❌ Could not fetch search results. Check your connection."
        return 1
    end

    # 04. Extract data using corrected XPath
    set -l titles (echo "$html" | xmllint --html --xpath "//li[@class='booklink']/a/span[@class='cell content']/span[@class='title']/text()" - 2>/dev/null)
    set -l authors (echo "$html" | xmllint --html --xpath "//li[@class='booklink']/a/span[@class='cell content']/span[@class='subtitle']/text()" - 2>/dev/null)
    set -l links (echo "$html" | xmllint --html --xpath "//li[@class='booklink']/a/@href" - 2>/dev/null | string replace -ra 'href="([^"]+)"' '$1')

    # 05. Check if any results were found
    if test (count $titles) -eq 0
        echo "No results found for '$argv'."
        return 1
    end

    # 06. Combine the lists and let the user select with fzf
    set -l selection (paste -d ' ::: ' \
        (printf "%s\n" $titles | psub) \
        (printf "by %s\n" $authors | psub) \
        (printf "%s\n" $links | psub) | \
        fzf --prompt="Select a book > " --height=40% --layout=reverse --border --preview="echo {} | cut -d ' ' -f 1-7")

    # 07. Check if the user cancelled the selection
    if test -z "$selection"
        echo "No book selected. Aborting."
        return 1
    end

    # 08. Parse the selection to get the title and the base path
    set -l base_path (string split -m 1 -r ': ' -- "$selection")[2]
    set -l book_title (string replace -- ": $base_path" "" "$selection")

    echo "📚 Selected: $book_title"

    # 09. Construct the final URL by appending '.html.images' to the base path
    set -l final_url "https://www.gutenberg.org$base_path.html.images"

    # 10. Open the constructed URL with epy
    echo "🚀 Opening with epy: $final_url"
    epy "$final_url"
end
