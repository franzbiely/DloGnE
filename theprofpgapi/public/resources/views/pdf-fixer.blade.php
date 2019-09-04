<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
<h5>List all Valuation PDF and time</h5>

<div id="sql"></div>
<input type="string" value="800" id="limit" />
<textarea id="futuretime">+0 hour +3 minutes +0 seconds</textarea>
<button id="start">Start</button>
<button id="applysqlfix">Apply SQL Fix</button>
<table border="1" cellspacing="0" cellpadding="10">
    <thead>
    <tr>
        <th>#</th>
        <th>Media ID</th>
        <th>Media Time Created</th>
        <th>Media File name</th>
        <th>Media Source ID</th>
        <th>Media Source Table</th>
        <th>Valuation ID</th>
        <th>Valuation TIME Created</th>
        
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>
</body>

<script>
    var new_structure = [];
    var sqlquery = '';
    $('#applysqlfix').on('click',() => {
        $.post('/public/pdf_fixer/fix', {query : sqlquery}, (datas) => {
            console.log(datas);
            if(datas==='success') {
                alert('Fixed applied');
                location.reload();
            }
        })
    })
    $('#start').on('click', ()=> {
        $.get( '/public/pdf_fixer/get/media', {limit : $('#limit').val()}, function( datas ) {
            if(datas) {
                datas.data.map((data, index) => {
                    // fetch the corresponding valuation with the same time
                    const media_id = data.id;
                    let newdom = '<tr id="tr'+index+'">\
                            <td>'+index+'</td>\
                            <td>'+data.id+'</td>\
                            <td>'+data.created_at+'</td>\
                            <td>'+data.file_name+'</td>\
                            <td class="source_id">'+data.source_id+'</td>\
                            <td class="source_table">'+data.source_table+'</td>\
                            <td class="valuation_id"></td>\
                            <td class="valuation_time"></td>\
                        </tr>';
                    
                    setTimeout(() => {
                        $.get( '/public/pdf_fixer/get/valuation', {media_created_at : data.created_at, media_id: data.id, timeto : $('#futuretime').val()}, function( datas ) {
                            if(datas.data.length > 0) {
                                $('tbody').prepend(newdom);
                                datas.data.map((_data) => {
                                    $('#tr'+index).find('.valuation_id').append(_data.id+"<br />");
                                    $('#tr'+index).find('.valuation_time').append(_data.created_at+"<br />");
                                    const sql = "UPDATE `media` SET `source_id`='"+_data.id+"' WHERE `id`='"+media_id+"'; ";
                                    sqlquery += sql;
                                    $('#sql').append(sql);
                                })
                                
                            }
                        });
                    })
                })
            }
        });
    });
</script>