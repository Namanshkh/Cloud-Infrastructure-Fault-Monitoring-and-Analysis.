import com.mongodb.MongoClient;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import java.net.UnknownHostException;
import com.mongodb.DB;


public class MongoClass2 {

	public static void main(String[] args) throws UnknownHostException {
		
		MongoClient mongoClient=new MongoClient("localhost",27017);
		DB db=mongoClient.getDB("admin");
		DBCollection coll=db.getCollection("mycollection");
		
		DBCursor cursor=coll.find();
		
		while(cursor.hasNext())
		{
			int i=1;
			System.out.println(cursor.next());
			i++;
		}
			
		System.out.println("Connection Established Successfully");
		
	}
}
