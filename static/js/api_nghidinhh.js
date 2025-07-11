async function loadData(fileCode) {
    function formatDate(isoDate, isNoiDung = false) {
        if (!isoDate || isoDate === "N/A") return "Đang cập nhật";
        let [year, month, day] = isoDate.split("-");
        return isNoiDung ? ` ngày ${day} tháng ${month} năm ${year}` : ` ${day}/${month}/${year}`;
    }
    try {
        // Fetch dữ liệu từ cả hai API
        const [responseDoc, responseSummary] = await Promise.all([
            fetch(`/api/document?file_code=${fileCode}`),
            fetch(`/api/tomtat?file_code=${fileCode}`)
        ]);
        
        // Lấy dữ liệu từ response
        const [documents, summaries] = await Promise.all([responseDoc.json(), responseSummary.json()]);
        
        // Xử lý dữ liệu từ API /api/document
        if (documents.length) {
            let doc = documents[0];
            document.querySelectorAll(".data-code-number").forEach(el => {
                el.textContent = doc.CodeNumber;
            });
            document.querySelectorAll(".data-file-catalog").forEach(el => {
                el.textContent = doc.FileCatalog;
            });
            document.querySelectorAll(".data-start-date").forEach(el => {
                el.textContent = formatDate(doc.StartDate, true);
            });
            document.querySelectorAll(".data-start-date-eng").forEach(el => {
                const formattedDate = new Date(doc.StartDate);
                const options = { year: 'numeric', month: 'long', day: 'numeric' };
                const dateString = new Intl.DateTimeFormat('en-US', options).format(formattedDate);
                el.textContent = dateString;
            });
            document.querySelectorAll(".data-receives").forEach(el => {
                el.textContent = doc.Receives;
            });
            document.querySelectorAll(".data-subject").forEach(el => {
                el.textContent = doc.Subject;
            });
            document.querySelectorAll(".data-subject-eng").forEach(el => {
                el.textContent = doc.SubjectEN;
            });
            document.querySelectorAll(".data-validity-status").forEach(el => {
                el.textContent = doc.ValidityStatus;
            });
            document.querySelectorAll(".data-title").forEach(el => {
                el.textContent = doc.Title;
            });
            document.querySelectorAll(".data-file-nonation").forEach(el => {
                el.textContent = "Nghị định " + doc.FileNoNation;
            });
            document.querySelectorAll(".data-file-nonation-eng").forEach(el => {
                el.textContent = "Decree " + doc.FileNoNation;
            });
        }

        // Xử lý dữ liệu từ API /api/tomtat
        if (summaries.length) {
            let summary = summaries[0];
            document.querySelectorAll(".title").forEach(el => {
                el.textContent = summary.Title;
            });
            document.querySelectorAll(".chinhphu").forEach(el => {
                el.textContent = summary.OranName;
            });
            document.querySelectorAll(".sohieu").forEach(el => {
                el.textContent = summary.FileNoNation;
            });
            document.querySelectorAll(".loaivanban").forEach(el => {
                el.textContent = summary.TypeName;
            });
            document.querySelectorAll(".nguoiky").forEach(el => {
                el.textContent = summary.SingerInfo;
            });
            document.querySelectorAll(".ngaybanhanh").forEach(el => {
                el.textContent = formatDate(summary.StartDate);
            });
            document.querySelectorAll(".ngayhethieuluc").forEach(el => {
                el.textContent = formatDate(summary.EndDate);
            });
        }
    } catch (error) {
        console.error("Lỗi fetch hoặc xử lý dữ liệu:", error);
        document.querySelector("tbody").innerHTML = `<tr><td colspan="6" class="text-center py-4 text-red-500">Lỗi tải dữ liệu</td></tr>`;
    }
}