package com.spoid.dao;

import java.util.Arrays;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.AggregateIterable;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class ReviewDAO {
	private ReviewDAO() {
		
	};
	
	private static ReviewDAO instance = new ReviewDAO();
	
	public static ReviewDAO getInstance(){
		return instance;
	}
	
	public double scoreAvg(String cate) {
		MongoClient mongoClient = new MongoClient("localhost",27017);
		System.out.println("MongoClient Connected");
		
		
		MongoDatabase db = mongoClient.getDatabase("movie");
		System.out.println("Get 'movie' MongoDatabase");
		String collection = "naverreview";
		if(cate.equals("daum")) {
			collection = "daumreview";
		}
		MongoCollection<Document> collections = db.getCollection(collection);
		System.out.println("데이터베이스명: "+db.getName());
		
		FindIterable<Document> iterate = collections.find();
		MongoCursor<Document> cursor = iterate.iterator();
		System.out.println("나와라아");
		double avg = 0;
		// 평점평균 출력
		while(cursor.hasNext()) {
			Document document = cursor.next();
			AggregateIterable<Document> iterable = collections.aggregate(Arrays.asList(
		            new Document("$group", new Document("_id", new Document("movieCd", "$movieCd").append("total", "$sum") ).append("avgScore", new Document("$avg", "$score")))));
			for(Document doc : iterable) {
				System.out.println(doc);

				System.out.println(doc.get("avgScore"));
/*				avg = Math.round((Double.parseDouble(doc.toString()))/10);
*/			
				
			}
			break;
		}
		return avg;
	}
}
