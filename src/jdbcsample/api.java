package jdbcsample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class api {

    public static void mysql(String[] args) throws Exception {

        try (
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/household?", // "jdbc:postgresql://<場所>:<ポート>/<データベース名>"
                        "root", //user
                        ""); //password;
                Statement statement =    connection.createStatement();
                ResultSet resultSet = statement.executeQuery(

                        "select user_id,address,password,\r\n" +
                        "\r\n" +
                        "from user_data\r\n"
/*              		
                        "select code,name_jp,region,\r\n" +
                        "count('1') over(partition by region) as num\r\n" +
                        "\r\n" +
                        "from m_country\r\n" +
                        "order by num"
*/
                        );
                ){

            List<String> columns = new ArrayList<String>();

            ResultSetMetaData rsmd = resultSet.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                columns.add(rsmd.getColumnName(i));
            }

            System.out.println(resultSet);

            //while (resultSet.next()) {
            if (resultSet.next()) {
                System.out.println("\ncount:" + resultSet.getRow());

                columns.stream().forEach((i)->{try {
                    System.out.println(i + ":" + resultSet.getString(i));
                } catch (SQLException e) {
                    e.printStackTrace();
                }});
            }


        }
    }
    
}