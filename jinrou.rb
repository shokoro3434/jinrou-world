# encoding: utf-8
require 'rubygems'
require 'mechanize'
require 'kconv'
require 'logger'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari';
#http://www.wicgame.com/cas/login
#login_page = agent.get('http://www.wicgame.com/werewolf3/server.jsp?s=werewolf3')
#home_page = agent.get('http://www.wicgame.com/werewolf/login.jsp');


login_page = agent.get('http://www.wicgame.com/cas/login?service=http%3A%2F%2Fwww.wicgame.com%2Fwerewolf%2Flogin.jsp');
login_form = login_page.forms.first
login_form['username'] = "russ";
login_form['password'] = "takahiro";
main_page = agent.submit(login_form);
#puts main_page.body;

puts '###############';

game_page = agent.get('http://www.wicgame.com/werewolf3/server.jsp?s=werewolf3');

puts '###############2';


game_page2 = agent.get('http://www.wicgame.com/werewolf3/Werewolf3MainServlet?s=werewolf3%r=1001');

#http://www.wicgame.com/werewolf3/Werewolf3RoomServlet?s=werewolf3&r=1001
#puts game_page2.body;
#http://www.wicgame.com/werewolf3/RefreshWerewolf3DataServlet?a=0&c=0

game_page3 = agent.get('http://www.wicgame.com/werewolf3/Werewolf3RoomServlet?s=werewolf3&r=1001');
#puts game_page3.body;

game_page4 = agent.get('http://www.wicgame.com/werewolf3/Werewolf3TableServlet?s=werewolf3&r=1001&t=0002');
puts game_page4.body;



#main_page.images.each do |image|
#	next unless image.text.length > 0
#	if image.alt == '疑心暗鬼' then
#	        puts image.alt
#		agent.click(image);
#	end
#end
#link.click;
#agent.visited_page(link).save('a.txt');
#break;
#end


#main_page.

game_page = agent.get('http://www.wicgame.com/werewolf3/server.jsp?s=werewolf3');
puts game_page.body;


#search_form = search_page.forms.first;
#result_page = agent.submit(search_form);
#puts result_page.body;



#result_page.links.each do |link|
#next unless link.text.length > 0
#        puts link.uri
#link.click;
#agent.visited_page(link).save('a.txt');
#break;
#end


#results = result_page.root.search('a').map{|e| URI.parse(e.href)};

#agent.page.form_with(:name => 'f'){|form|
#  form.field_with(:name => 'q').value = 'Ruby'
#  form.click_button
#}
#agent.page.link_with(:text => "オブジェクト指向スクリプト言語 Ruby".toutf8).click
#puts agent.page.uri
#puts agent.page.at('div#logo/img')['alt']
