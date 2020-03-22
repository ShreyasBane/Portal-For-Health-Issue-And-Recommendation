package com.hashcoder.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hashcoder.database.AnswerDB;
import com.hashcoder.database.LoginDB;
import com.hashcoder.database.PostDB;
import com.hashcoder.database.QueryDB;
import com.hashcoder.database.UserDB;
import com.hashcoder.model.Answer;
import com.hashcoder.model.Post;
import com.hashcoder.model.Query;
import com.hashcoder.model.User;


@Controller
public class HomeController {

	@Autowired
	User user;
	
	@Autowired
	UserDB userDB;
	
	@Autowired
	QueryDB queryDB;
	
	@Autowired
	AnswerDB answerDB;
	
	@Autowired
	PostDB postDB;
	
	@Autowired
	LoginDB loginDB;
	
	@RequestMapping("/home")
	public String showHome(Model model, @RequestParam("user_id") int user_id) {
		
		try {
			
			
//			System.out.println("Hi bhanu joshi welcome to ");
			
			
			User user  = userDB.getUserById(user_id);
			user = userDB.getUserValues(user);
			user = userDB.getDisease(user);
			user = userDB.getFollowers(user);
			
//			System.out.println("Hi bhanu joshi welcome to the jumanji");
			
			
//			for (User temp : user.getFollowers()) {
//				System.out.println("follower name: ");
//				System.out.println(temp.getName());
//			}
			
//			System.out.println("----"+user.getId());
//			System.out.println(user.getName()+"----");
			
			
			user = userDB.getFollowings(user);
		
//			for (User temp : user.getFollowing()) {
//				System.out.println(temp.getName());
//			}
			
			
//			System.out.println("Hi bhanu joshi welcome to the jumanji 2");
			
			user.setQueries(queryDB.getQueryByUserId(user_id));
			
//			for (Query que : user.getQueries()) {
//				for (Answer ans : que.getAnswers()) {
//					System.out.println(ans.getAnswer());
//				}
//			}
			
			
			user.setAnswers(answerDB.getAnswersByUserId(user_id));
			
			
			
//			System.out.println("Hey sunnn re");
			
			List<User> followers=user.getFollowers();
			
			
			List<User> followings=user.getFollowing();
			
//			for (User us : followings) {
//				System.out.println("##############################3");
//				System.out.println(us.getName());
//				System.out.println(us.getId());
//				System.out.println(us.getRating());
//				
//				
//			}
			
			
			user=postDB.getPostsByUser(user);
			
			List<Post> posts = postDB.getAllPost();
			
			List<Query> queries = queryDB.getAll();
			
			List<Answer> answers=answerDB.getAll();
			
			answers=answerDB.getAnswersByUserId(user_id);
			
			

			
			
			List<Query> recentQueries = queryDB.getAll();
			
			
			
			recentQueries = recentQueries.stream()
					  .sorted(Comparator.comparing(Query::getDate))
					  .collect(Collectors.toList());
			
			recentQueries = recentQueries.stream()
					  .sorted(Comparator.comparing(Query::getTime))
					  .collect(Collectors.toList());
			
//			for (Query query : recentQueries) {
//				System.out.println(query.getQuery());
//			}
			
//			for (Answer answer : answers) {
//				
//				System.out.println(answer.getAnswer());
//				System.out.println(answer.getAvg_rating());
//				
//				int temp=answer.getQuery_id();
//				System.out.println("Query id is"+temp);
//				System.out.println(queryDB.getQuestionbyId(temp) );
//				
//			}
			
//			for (Post post : posts) {
//				if(user.getId()!=post.getUser_id()) {
//					System.out.println(user.getId());
//					System.out.println(post.getUser_id());
//					System.out.println(post.getPost());
//				}
			
//			}
//	
//			HttpServletRequest request = null;
//			String query=request.getParameter("search");
//			model.addAttribute("search",query);
			
//			System.out.println("BHANU  DEKH LE");
//			if(loginDB.getUserTypeById(user.getId()).getType().equals("USER"))
//			System.out.println(loginDB.getUserTypeById(user.getId()).getType());

			
			System.out.println("system work");
			model.addAttribute("recentQueries",recentQueries);
			model.addAttribute("posts",posts);
			model.addAttribute("queries", queries);
			model.addAttribute("queryDB", queryDB);
			model.addAttribute("user", user);
//			model.addAttribute("userDB", userDB);
			model.addAttribute("answers",answers);
			model.addAttribute("answerDB", answerDB);
			model.addAttribute("followers", followers);
			model.addAttribute("followings", followings);
			model.addAttribute("loginDB", loginDB);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "home";
	}
	
	@RequestMapping("/rate-post")
	public String ratePost(@RequestParam("user_id") int user_id, 
							@RequestParam("post_id") int post_id,
							@RequestParam("rating") int rating) {
		
		try {
			postDB.insertRating(user_id, post_id, rating);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "redirect:home?user_id="+user_id;
	}

	@RequestMapping("/rate-answer")
	public String rateAnswer(@RequestParam("user_id") int user_id, 
			@RequestParam("answer_id") int answer_id,
			@RequestParam("rating") int rating) {

		try {
			answerDB.insertRatingForAnswer(user_id, answer_id, rating);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:home?user_id="+user_id;
	}
	
	@RequestMapping("/follow-user")
	public String followUser(@RequestParam("user_id") int user_id,
						@RequestParam("otherUser_id") int otherUser_id) {
	
	
		
		try {
			userDB.insertFollowOtherUser(user_id, otherUser_id);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:home?user_id="+user_id;
	}
	
	
	
	@RequestMapping("/addQuery")
	public String addQuery(@RequestParam("user_id") int user_id,
							HttpServletRequest request) {
		
		try {
			String query = request.getParameter("queryField");
			queryDB.insertQuery(user_id, query);
			//put query diseases data
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:home?user_id="+user_id;
	}
	
	@RequestMapping("/addAnswer")
	public String addAnswer(@RequestParam("user_id") int user_id,
								@RequestParam("question_id") int question_id,
								HttpServletRequest request,
								@RequestParam("type") String type,
								Model model) {
		
		try {
			String answer = request.getParameter("answerField");
			
//			System.out.println("inside addanswer in home controller"+question_id);
			
			answerDB.insertAnswer(user_id, question_id, answer, type);
			
//			System.out.println("inside addanswer in home controller"+question_id);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			User user  = userDB.getUserById(user_id);
			user = userDB.getUserValues(user);
			user = userDB.getDisease(user);
			user = userDB.getFollowers(user);
			
//			for (User temp : user.getFollowers()) {
//				System.out.println("follower name: ");
//				System.out.println(temp.getName());
//			}
			
//			System.out.println("----"+user.getId());
//			System.out.println(user.getName()+"----");
			
			user = userDB.getFollowings(user);
		
//			for (User temp : user.getFollowing()) {
//				System.out.println(temp.getName());
//			}
			
			
			user.setQueries(queryDB.getQueryByUserId(user_id));
			
//			for (Query que : user.getQueries()) {
//				for (Answer ans : que.getAnswers()) {
//					System.out.println(ans.getAnswer());
//				}
//			}
			
			
			user.setAnswers(answerDB.getAnswersByUserId(user_id));
			
			user=postDB.getPostsByUser(user);
			
			List<Query> queries = queryDB.getAll();
			
			model.addAttribute("queries", queries);
			model.addAttribute("queryDB", queryDB);
			model.addAttribute("user", user);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:home?user_id="+user_id;

	
	}
	
	
	
	@RequestMapping("/uploadPost")
	public String uploadPost(@RequestParam("user_id") int user_id,
						HttpServletRequest request) {
		
		
//		System.out.println("Inside the post box");
		
		Post post = new Post();
		post.setPost(request.getParameter("postData").toString());
		
		try {
			postDB.insertPost(post,user_id);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//request.getAttribute("category");
		
		return "redirect:home?user_id="+user_id;
	}
	
	
//	@RequestMapping("/searchquery")
//	public String SearchQuery(Model model,@RequestParam("user_id") int user_id, HttpServletRequest request) {
//		
//		String query=request.getParameter("search");
//		model.addAttribute("search",query);
//		return "redirect:home?user_id="+user_id;
//	}

	
}


