# real-time-data-analytics

### **Project Description: User Submission Analytics for Competitive Platform**

#### **Objective:**
The project aimed to analyze user submission data from a competitive platform to generate insights about user performance, submission patterns, and engagement trends. The analysis focused on identifying top performers, daily and weekly submission trends, and areas for improvement to enhance platform effectiveness and user experience.

---

#### **Project Scope:**
1. **Data Collection and Setup:**
   - Created a `user_submissions` table to store data on user activities, including user ID, question ID, performance points, submission timestamps, and usernames.
   - Ensured the data was structured for efficient querying and analysis.

2. **Performance Metrics:**
   - Calculated overall user statistics, including the total number of submissions and points earned for each user.
   - Identified daily and weekly trends in user performance.

3. **Leaderboard and Insights:**
   - Generated daily leaderboards highlighting the top 3 users with the highest number of correct submissions.
   - Ranked the top 10 performers weekly based on points earned.
   - Identified the top 5 users with the most incorrect submissions to address coaching opportunities.

---

#### **Key Tasks Performed:**
1. **Created the database schema:**
   - Defined the `user_submissions` table with necessary fields such as `user_id`, `question_id`, `points`, `submitted_at`, and `username`.

2. **User Performance Analysis:**
   - Queried and summarized user performance metrics, such as total submissions and points earned.

3. **Trend Analysis:**
   - Grouped user data by day and week to calculate daily averages and weekly total points.

4. **Leaderboard Creation:**
   - Used SQL `DENSE_RANK` to rank users based on performance for daily and weekly leaderboards.

5. **Error Analysis:**
   - Identified users with the most incorrect submissions to improve their performance.

---

#### **Tools and Technologies Used:**
- **SQL:** For data analysis and querying the `user_submissions` table.
- **PostgreSQL:** As the database management system.
- **Windows/Mac/Linux Environment:** For running queries and storing data.

---

#### **Outcomes:**
1. **Detailed User Insights:**
   - Identified top performers and their activity levels, helping the platform recognize and reward key contributors.
   - Highlighted users with frequent errors, enabling targeted support to improve performance.

2. **Daily and Weekly Trends:**
   - Provided valuable insights into daily user engagement and weekly trends to help plan platform events or interventions.

3. **Motivational Leaderboards:**
   - Generated leaderboards to foster a sense of competition and motivation among users.

4. **Actionable Recommendations:**
   - Insights were delivered to support decisions regarding platform enhancements and user engagement strategies.

---

#### **Project Impact:**
This project enabled the competitive platform to leverage data for better decision-making and user engagement. By identifying trends, top performers, and improvement areas, the platform could enhance user satisfaction and maintain active participation. This project demonstrates the ability to perform end-to-end data analysis and deliver actionable insights effectively.
