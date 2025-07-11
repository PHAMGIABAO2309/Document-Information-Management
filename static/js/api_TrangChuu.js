
document.addEventListener("DOMContentLoaded", async function () {
    function formatDate(isoDate) {
        if (!isoDate || isoDate === "N/A") return "Chưa xác định";
        let [year, month, day] = isoDate.split("-");
        return `${day}/${month}/${year}`;
    }

    try {
        let response = await fetch(`/api/list_files`, {
            headers: { "Accept": "application/json" }
        });
        let documents = await response.json();
        console.log(documents);
        let template = document.querySelector(".file-item"); 
        let listContainer = document.getElementById("listContainer");
        documents.forEach((doc, index) => {
            let item = template.cloneNode(true);
            item.classList.remove("hidden");

            item.querySelector(".index").textContent = index + 1;
            item.querySelector(".title").textContent = doc.Title || "Không có tiêu đề";
   
           item.querySelector(".title").setAttribute("onclick", `window.location.href='/documents/${doc.filecode}'`);
            item.querySelector(".title").setAttribute("data-file-code", doc.filecode); 
           let tienganhElements = item.querySelectorAll(".tienganh");
           tienganhElements.forEach(el => {
               el.setAttribute("onclick", `window.location.href='/documents/${doc.filecode}'`);
           });
           item.querySelector(".download").setAttribute("href", `/documents/${doc.filecode}`);
            item.querySelector(".start-date").textContent = formatDate(doc.startdate);
            item.querySelector(".update-date").textContent = formatDate(doc.dateupdate);

            // Gắn sự kiện cho File đính kèm
            item.querySelector(".attachment").addEventListener("click", async function (e) {
                e.preventDefault();

                const fileCode = doc.FileCode || doc.filecode;

                try {
                    let res = await fetch(`/api/dinhkemfile?file_code=${fileCode}`);
                    let data = await res.json();

                    if (data.length > 0 && data[0].path) {
                        const filePath = data[0].path; 
                        window.location.href = `/path?path=${encodeURIComponent(filePath)}`;
                    } else {
                        alert("Không tìm thấy file đính kèm!");
                    }
                } catch (err) {
                    console.error("Lỗi khi tải file đính kèm:", err);
                    alert("Có lỗi xảy ra khi tải file!");
                }
            });


            listContainer.appendChild(item);
        });
        // Hiển thị tổng số văn bản
        document.querySelector(".sum-index").innerHTML = `Có tất cả <strong>${documents.length}</strong> văn bản.`;
    } catch (error) {
        console.error("Lỗi tải danh sách file:", error);
    }
    
});