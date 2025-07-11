document.addEventListener("DOMContentLoaded", async function () {
    function formatDate(isoDate) {
        if (!isoDate || isoDate === "N/A") return "Chưa xác định";
        let [year, month, day] = isoDate.split("-");
        return `${day}/${month}/${year}`;
    }
    const urlParams = new URLSearchParams(window.location.search);
    const searchQuery = urlParams.get("titles");

    if (searchQuery) {
        try {
            const response = await fetch(`/api/search_suggest?titles=${encodeURIComponent(searchQuery)}`);
            if (!response.ok) {
                throw new Error("Lỗi khi gọi API");
            }

            const data = await response.json();
            const resultContainer = document.getElementById("searchResults");
            const template = document.querySelector(".file-item.template");

            resultContainer.innerHTML = "";

            if (data.length === 0) {
                resultContainer.innerHTML = "<p>Không tìm thấy kết quả nào.</p>";
            } else {
                data.forEach((doc, index) => {
                    const newItem = template.cloneNode(true);
                    newItem.classList.remove("hidden", "template");

                    newItem.querySelector(".index").textContent = index + 1;
                    newItem.querySelector(".title").textContent = doc.Title;
                    newItem.querySelector(".title").setAttribute("onclick", `window.location.href='${doc.path || "#"}'`);

                    newItem.querySelector(".start-date").textContent = formatDate(doc.startdate);
                    newItem.querySelector(".update-date").textContent = formatDate(doc.dateupdate);

                    resultContainer.appendChild(newItem);
                });
            }
        } catch (error) {
            console.error("Lỗi:", error);
            document.getElementById("searchResults").innerHTML = "<p class='text-red-500'>Lỗi khi tải dữ liệu.</p>";
        }
    }
});