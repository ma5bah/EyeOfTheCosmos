const apiUrl = "https://smd-cms.nasa.gov/wp-json/smd/v1/content-list/?requesting_id=51303&post_types=post,press-release&categories=2881&internal_terms&mission_status&mission_type&mission_target&mission_programs&news_tags&meta_fields=%7B%7D&exclude_child_pages=false&order=DESC&orderby=date&science_only=false&number_of_items=20&layout=list&listing_page_category_id=0";




async function fetchAllNews() {
  let allNews = [];
  let currentPage = 1;
  let totalPages = 1;

  try {
    // Use a for loop to iterate through pages
    for (currentPage; currentPage <= totalPages; currentPage++) {
      const url = `${apiUrl}&paged=${currentPage}`;
      const response = await fetch(url, {
        method: "GET"
      });

      const data = await response.json();

      // Append the current page's items to the allNews array
      allNews = allNews.concat(data.value.items);

      // Update total pages based on the first response
      if (currentPage === 1) {
        totalPages = Math.ceil(data.value.pagination.found_posts / data.value.pagination.number_of_items);
      }
    }

    return allNews; // Return all the news once all pages are fetched
  } catch (error) {
    console.error("Error fetching news:", error);
  }
}

// Main function to fetch and display the news
async function main() {
  const allNews = await fetchAllNews();
  if (!allNews) return;
  
  console.log("Fetched News Items:", allNews.length);
  
  
  allNews.forEach((newsItem, index) => {
    console.log(`${index + 1}. ${newsItem.title} - ${newsItem.permalink}`);
  });
  if(allNews.length > 0){
    const firstNewsItem = allNews[0];
    // get all keys of the first news item
    const keys = Object.keys(firstNewsItem);
    console.log("Keys of the first news item:", keys);
    
  }
}

main();