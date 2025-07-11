document.addEventListener("DOMContentLoaded", function () {
    const searchInput = document.getElementById("searchInput");
    const dropdown = document.getElementById("dropdownResult");
    const dropdownContent = document.getElementById("dropdownContent");
    const closeDropdown = document.getElementById("closeDropdown");

    searchInput.addEventListener("input", async function () {
        let inputText = this.value.trim().toLowerCase();

        if (inputText.length > 0) {
            dropdown.classList.remove("hidden");
            positionDropdown();

            try {
                const response = await fetch(`/api/search_suggest?titles=${encodeURIComponent(inputText)}`);
                if (!response.ok) {
                    throw new Error("Lỗi khi gọi API");
                }

                const data = await response.json();
                if (data.length > 0) {
                    dropdownContent.innerHTML = data.map(doc => {
                        let title = doc.Title;
                        let highlightedTitle = title.replace(
                            new RegExp(inputText, "gi"), 
                            match => `<strong style="background-color: yellow; padding: 2px; border-radius: 3px;">${match}</strong>`
                        );

                        return `
                            <div class="flex items-start">
                                <span><a href="/documents/${doc.filecode}" class="text-black-500 hover:underline">${highlightedTitle}</a></span>
                            </div>
                        `;
                    }).join("");
                } else {
                    dropdownContent.innerHTML = `<div class="text-gray-500 italic">Không có kết quả phù hợp</div>`;
                }
            } catch (error) {
                console.error("Lỗi:", error);
                dropdownContent.innerHTML = `<div class="text-red-500 italic">Lỗi khi tải dữ liệu</div>`;
            }
        } else {
            dropdown.classList.add("hidden");
        }
    });

    function positionDropdown() {
        let rect = searchInput.getBoundingClientRect();
        dropdown.style.top = rect.bottom + "px";
        dropdown.style.left = rect.left + "px";
        dropdown.style.position = "absolute";
    }

    closeDropdown.addEventListener("click", function () {
        dropdown.classList.add("hidden");
    });

    document.addEventListener("keydown", function (event) {
        if (event.key === "f" && !event.ctrlKey && !event.metaKey) { 
            event.preventDefault(); // Ngăn chặn hành vi mặc định (tránh mở tìm kiếm trình duyệt)
            searchInput.focus(); // Đưa con trỏ vào ô tìm kiếm
        }
    });
});
