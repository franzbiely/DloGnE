<!DOCTYPE html>
<html>

<head>
    <title>SVIS : Area Migrator</title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <style>
    html,
    body {
        height: 100%;
        font-size: 12px;
        font-family: monospace;
        background: #222;
        color: green;
    }
    table {
        width:100%; text-align: right;
    }
    #case_a {
        background: #fff;
        color: #333;
    }
    #case_b {
        background: #EAFDCF;
        color:#8E8358;
    }
    #case_c {
        background: #DFBBB1;
        color:#E43F6F;
    }
    #case_d {
        background: #DDDDDF;
        color:#C792DF;
    }
    #alldata {
       clear:both; 
    }
    </style>
    <script>
        // get properties
        $.get( '/api/v1/property?limit=1000&page=1', {}, function( data ) {
            data.data.every(function(a) {
                let newdom = '<tr>\
                        <td>'+a.id+'</td>\
                        <td>'+a.latest_valuation_area+'</td>\
                        <td>'+a.latest_sales_area+'</td>\
                    </tr>';
                
                $('#all_data tbody').prepend(newdom)

                if(a.latest_valuation_area != 0 && a.latest_sales_area == 0) {
                    $('#case_a tbody').prepend(newdom)
                }
                else if(a.latest_sales_area != 0 && a.latest_valuation_area == 0) {
                    $('#case_b tbody').prepend(newdom)
                }
                else if(a.latest_sales_area !=0 && a.latest_valuation_area !=0 && a.latest_valuation_area != a.latest_sales_area) {
                    $('#case_c tbody').prepend(newdom)
                }
                else {
                    $('#case_d tbody').prepend(newdom)
                }
                return setTimeout(function() {
                    return true;        
                },100)
            });
            // loop here
          alert( "Load was performed." );
        });
    </script>
</head>

<body>
    <blockquote>Note : This program will create an analysis on how to transfer Area data from Valuation and Sales to the Property db table.</blockquote>
    <hr />
    
    <div id="all_data">
    <label>All Data : This table shows all data</label>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Valuation Area</th>
                    <th>Sales Area</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <div id="case_a">
        <label>CASE A : if (Valuation has Area and Sales has 0)</label>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Valuation Area</th>
                    <th>Sales Area</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div id="case_b">
        <label>CASE B : if (Sales has Area and Valuation has 0)</label>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Valuation Area</th>
                    <th>Sales Area</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div id="case_c">
        <label>CASE C : if (Sales and Valuation has both value but not equal)</label>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Valuation Area</th>
                    <th>Sales Area</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div id="case_d">
        <label>CASE D : if (Sales and Valuation has both same value)</label>
        <table>
            <thead>
                <tr>
                    <th>Property ID</th>
                    <th>Valuation Area</th>
                    <th>Sales Area</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</body>

</html>