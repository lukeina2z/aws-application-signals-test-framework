using System;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using Amazon;
using Amazon.Runtime;


Console.WriteLine("Hello, World!");

const string ServerEndpoint = "database-test-a1.c6rukuycoek2.us-east-1.rds.amazonaws.com";
const int Port = 3306;
const string Database = "information_schema";
const string UserName = "user_foo_iam";

try
{
    // Auto-detect region using AWS SDK's default region detection
    var regionEndpoint = FallbackRegionFactory.GetRegionEndpoint() ?? RegionEndpoint.USEast1;
    var pwd = Amazon.RDS.Util.RDSAuthTokenGenerator.GenerateAuthToken(regionEndpoint, ServerEndpoint, Port, UserName);
    Console.WriteLine("Auth token generated successfully");

    // Connection string for IAM authentication
    var connectionString = $"server={ServerEndpoint};user={UserName};database={Database};port={Port};password={pwd};SslMode=Required;AllowPublicKeyRetrieval=true";
    
    MySqlConnection conn = new MySqlConnection(connectionString);
    conn.Open();
    Console.WriteLine("Connected to database successfully");

    // Define a query
    MySqlCommand sampleCommand = new MySqlCommand("SHOW DATABASES;", conn);

    // Execute a query
    MySqlDataReader mysqlDataRdr = sampleCommand.ExecuteReader();

    // Read all rows and output the first column in each row
    while (mysqlDataRdr.Read())
        Console.WriteLine(mysqlDataRdr[0]);

    mysqlDataRdr.Close();
    // Close connection
    conn.Close();
}
catch (MySqlException ex)
{
    Console.WriteLine($"MySQL Error: {ex.Message}");
    Console.WriteLine($"Error Code: {ex.Number}");
}
catch (Exception ex)
{
    Console.WriteLine($"General Error: {ex.Message}");
}

Console.WriteLine("The End!");