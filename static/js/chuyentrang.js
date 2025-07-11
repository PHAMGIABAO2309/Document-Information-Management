document.addEventListener("DOMContentLoaded", function () {
    const buttons = document.querySelectorAll(".contain_button .item");
    const pages = document.querySelectorAll(".change.page");

    buttons.forEach(button => {
        button.addEventListener("click", () => {
            // Bỏ class active_item và reset style tất cả các nút
            buttons.forEach(btn => {
                btn.classList.remove("active_item", "bg-blue-500", "text-white");
                btn.classList.add("bg-gray-200", "text-gray-800");
            });

            // Thêm class cho nút đang chọn
            button.classList.add("active_item", "bg-blue-500", "text-white");
            button.classList.remove("bg-gray-200", "text-gray-800");

            // Ẩn tất cả các trang
            pages.forEach(page => page.classList.add("hidden"));

            // Hiển thị trang tương ứng
            const targetPage = document.getElementById(button.getAttribute("data-target"));
            if (targetPage) {
                targetPage.classList.remove("hidden");
            }
        });
    });
});