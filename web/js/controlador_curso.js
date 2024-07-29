function filtrar() {
    // Declare variables
    var input, filter, table, tr, td1, i, txtValue1;
    input = document.getElementById("buscar");
    filter = input.value.toUpperCase();
    table = document.getElementById("tb_cursos");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        td1 = tr[i].getElementsByTagName("td")[0];
        if (td1) {
            txtValue1 = td1.textContent || td1.innerText;
            if (txtValue1.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}