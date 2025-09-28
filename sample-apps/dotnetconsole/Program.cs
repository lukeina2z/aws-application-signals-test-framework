using System;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using Amazon;


Console.WriteLine("Hello, World!");

const string ServerEndpoint = "database-test-a1.c6rukuycoek2.us-east-1.rds.amazonaws.com";
const int Port = 3306;
const string Database = "example_database";
const string UserName = "user_foo_iam";

var pwd = Amazon.RDS.Util.RDSAuthTokenGenerator.GenerateAuthToken(RegionEndpoint.USEast1, ServerEndpoint, Port, UserName);
// for debug only Console.Write("{0}\n", pwd);  //this verifies the token is generated

MySqlConnection conn = new MySqlConnection($"server={ServerEndpoint};user={UserName};database={Database};port={Port};password={pwd};SslMode=Required;SslCa=full_path_to_ssl_certificate");
conn.Open();

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


Console.WriteLine("The End!");