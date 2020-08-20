create database finalNTNC

use finalNTNC
go
create table Accounts
(
	Username nvarchar(30) primary key ,
	Password nvarchar(30)
)

go
insert into Accounts values('ntnc', '06052000')
insert into Accounts values('sa', '123456')
insert into Accounts values('guesswhat', '686868')
insert into Accounts values('quangsh', '341625')
go

select * from Accounts


create table Posts
(
	ID int primary key,
	Name nvarchar(50),
	Description nvarchar(1000),
	Content ntext,
	Date nvarchar(50)
)

insert into Posts values('1', 'Da Nang, Hoi An','<img src="images/Post/2.jpg">
		<br/><br/>
        <p style="font-size: 110%;">
            Da Nang, journey with friends around the world
        </p>
		','<p style="margin-left: 15%;margin-right: 15%;
           font-size: 130%;margin-top: 5%;">
            This is my first trip to Danang, Hoi An. This is an international 
            summer camp, including friends from around the world such as Belgium,
            Slovakia, and friends from the south, little uk sai gon. I and some 
            of you are from little uk Hanoi. I got to know and apply the scholarship 
            to attend this program from Headstart Vietnam, I was awarded a 100% 
            scholarship, so I only had to pay a ticket fee when traveling.
            <br/><br/>
            <img style="margin-left: 14%;" src="../images/Content_Post/an4.jpg">
			<br/><br/>
			7-day summer camp program with lots of interesting activities for all
            members to explore Danang, Hoi An and learn more about Vietnamese culture, 
            the first day we visited the pottery village and got molding products made
            by myself. It was really interesting. On the second day we visited the 
            vegetable growing village and saw how farmers grow vegetables to produce 
            clean vegetables and supply them to the city. This place is really peaceful
            and beautiful, we and our international friends took photos under a confetti 
            garden, really memorable.
            <br/><br/>
            <img style="margin-left: 14%;" src="../images/Content_Post/an3.jpg">
			<br/><br/>
            The next day, we went to experience Son Tra peninsula, here, we saw 
            the city of Da Nang from above, very beautiful and majestic. Here we 
            discover one of the most beautiful places and almost no one knows. 
            We went through the jungle and finally got to a place, inexpressible,
            it was a kind of natural swimming pool, completely created by nature,
            located right on the coast, very clear water. and cool, i just want 
            to bathe here forever
            <br/><br/>
            <img style="margin-left: 17%;" src="../images/Content_Post/an5.jpg">
			<br/><br/>
            The next day, we visited the island of Cu Lao Cham, from the mainland
            to the island not too far, we traveled by motorboat, feeling very excited. 
            Here we have great seafood dishes. Scuba diving to see corals, the sea
            here is very clear and clean, we even see the bottom. The beach is wonderful, 
            white sand, there are rows of coconuts on the shore. everything was perfect, 
            at night, we had an EDM music party, sound, light, we danced on the beach, it 
            was an unforgettable day for us.
            <br/><br/>
            <img style="margin-left: 15%;" src="../images/Content_Post/an2.jpg">
			<br/><br/>
            Finally, we visit the ancient town of Hoi An, this is a street in 
            Quang Nam province, built from ancient times and still preserved to 
            this day. There are many delicious dishes such as chicken rice, an hoi an. 
            The streets and houses here still retain the ancient features for hundreds
            of years. A special feature in Hoi An is the lantern. Every night, thousands 
            of colorful lanterns illuminate the streets of Hoi An. The streets and houses
            were shimmering at nightfall.
            <br/><br/>
            <img style="margin-left: 20%;" src="../images/Content_Post/an1.jpeg">
			<br/><br/>
            This trip was really interesting and left me with many beautiful memories of 
            friendship, love, this year, due to the impact of the covid epidemic and isolation,
            we cannot welcome international students. However, I will still miss the moments we
            used to have together
            <br/><br/>
        </p>','5-7-2019')


insert into Posts values('2', 'Moc Chau','<img src="images/Post/3.jpg"><br/><br/>
        <p style="font-size: 110%;">
            Moc Chau, fresh and relax after a long semester
        </p>
		','<p style="margin-left: 15%;margin-right: 15%;
        font-size: 130%;margin-top: 5%;">
            Actually, I rarely talk about it on social networks, but this time, 
            I decided to spend some time recording some of my own feelings about
            the recent Moc Chau trip ( just from my perspective, is there 
            something wrong, please forgive me =))). <br/><br/>
            <img style="margin-left: 20%;" src="../images/Content_Post/moc2.jpg">
			<br/><br/>The original purpose of this trip was to experience, literally and figuratively. 
			As a wanderer, 
            after this trip, I feel that I have pocketed quite a lot of good memories 
            and valuable experiences. The work I first tried to do such as planting 
            strawberries, tending cows, planting peaches, ... are quite new. First 
            time to drink 100% fresh cow milk. The weather without rain would be 
            great. Especially, the family of the farm owner is very kind, likable 
            and hospitable, helping the team a lot during the trip. Newly exposed 
            people have left me a pretty strong impression like liss Huyen Thanh, 
            honest, funny, Hung Xuan Do bald, big-headed but also doing bull tricks =)) 
            Mr. Khiem Nguyen Humor, any sentence can make people laugh 😂.
            Mr. Ta Son is a cook with some "expensive" stories ...<br/><br/>
            <img style="margin-left: 20%;" src="../images/Content_Post/moc1.jpg">
			<br/><br/>Most remembering 
            in the middle of the night, he still attends to the life of his brothers
            and sisters even though he is not enough to understand them all, to know 
            after his smiles. There are still difficult things to say, that not 
            everyone background is easy. When I was sitting in the trunk of the truck,
            shaking the clam sml still clam singing from one song to another without end. 
            2 sting bites and swollen up to bh is still a little painful (so maybe I am the 
            only one who cannot wash dishes 😅) It was one day because I was the youngest, 
            so I could not stand the fish all day. That said, but I am a citizen, where is 
            the wolf, do not kill me, but poor :(, say no one believes.
            A trip is an opportunity to make new friends and make new things in life. Thank 
            you everyone for the last time!
        </p>','4-8-2019')


insert into Posts values('3', 'Thailand','<img src="images/Post/1.jpg"><br/><br/>
        <p style="font-size: 110%;">
            Thailand, the first trip abroad to explore the world
        </p>
		','<p style="margin-left: 15%;margin-right: 15%;
            font-size: 130%;margin-top: 5%;">
            This is my first trip abroad, organized by the Department of 
            International Cooperation and Personal Development IC-PDP. This is 
            basically a department of FPT University which is responsible for 
            creating playgrounds, events, trips for students to have the best 
            opportunity to experience and develop. I was able to go with a fairly 
            cheap cost, only less than 4 million Dong
            <br/><br/>
            <img style="margin-left: 4%;" src="../images/Content_Post/thai3.jpg">
			<br/><br/>
			Traffic in Bangkok is very bustling. In fact, the number of cars 
            here more than in Vietnam is quite large. Transportation infrastructure 
            here is very developed with some types of vehicles that in Vietnam do 
            not have such as subway, overhead rail. One interesting thing is that 
            here people move on the left hand side rather than in Vietnam. In addition, 
            the skyscrapers and very modern made us really overwhelmed
            <br/><br/>
            <img style="margin-left: 13%;" src="../images/Content_Post/thai4.jpeg">
			<br/><br/>
			When we came here, we were arranged in a rather quiet hostel near the
            city center, here near the high speed train so it is quite easy to move.
            The room is like an inn with beds stacked. People in bangkok don not speak 
            English very well. I do not know Thai so I can only use English, fortunately
            I and they can still understand each other. The culture here is somewhat 
            similar to Vietnam, but on the way you can easily see transgender 
            and prostitutes legally here, on the contrary, in Vietnam it is not
            <br/><br/>
            <img style="margin-left: 23%;" src="../images/Content_Post/thai1.JPG">
			<br/><br/>
			And especially, it is impossible not to mention food in Thailand. I
            think Thai food is as good as Vietnamese food, especially street food, 
            while on the road, you can easily find food vendors along the way with
            all kinds of food. Just looking at it is enough to make you crave. Thai 
            food is famous for its spicy and sour taste. On the bottom is a 
            well-prepared Thai hot pot that I will never forget to taste. At the 
            night market, you can also taste a variety of food, also very interesting.
            1 specialty here is sticky rice with mango, very special.
            <br/><br/>
            <img style="margin-left: 17%;" src="../images/Content_Post/thai2.jpg">
			<br/><br/>
            This trip was a really interesting and memorable trip. If I have a chance, I will 
            definitely return to this place.
            <br/><br/>
        </p>','6-6-2019')


insert into Posts values('4', 'bla bla','test','<p>
            This is a check post
            For I can see can I insert image into text
        </p>','chek')

delete from Posts
select * from Posts where Content like '%me%'

create table Comment
(
	pid nvarchar(10),
	username nvarchar(30),
	email nvarchar (50),
	phone nvarchar(50),
	comment nvarchar(1000),
	time nvarchar(50)
)

alter table Comment add primary key (phone) 

alter table Comment alter column phone nvarchar(50) not null 

select * from Comment where pid =2
delete from Comment where pid = 3

insert into Comment values('1','quang','quangtd37@gmail.com','0917656237','Awesome','15/7/2020 15:20:37')
insert into Comment values('1','nam','namdz37084@gmail.com','0917656887','Gud job, bro','15/7/2020 15:27:37')
insert into Comment values('4','nam','namdz37084@gmail.com','0917656887','Gud job, bro','15/7/2020 15:27:37')
insert into Comment values('2','Mai','mainguyen55@gmail.com','0917562379','That is greate','15/7/2020 15:24:37')

create table Album
(
	id nvarchar (10) primary key,
	content nvarchar (200) ,
	date nvarchar(50)
)

select * from Album
delete from Album where id =1 

insert into Album values('1','Survival Camp - Spacing','16/7/2020')

create table Picture
(
	id nvarchar(10) primary key,
	aid nvarchar(10) foreign key references Album(id),
	link ntext
)

insert into Picture values('1','1','https://lh3.googleusercontent.com/ryCrQrYfkOcTNUhF1bzUnW0K1R29T6iTW1W83dTUse-HmA1LDNm7HC-H2c2zyKFT_HMuOlm5MvxiGYAjMS8NXUIBTFoVWPzzLB5Nrylk7lhS3xS582Fk5RuPpVFSYAqtlqnXj6Dp97GVcwz5Y7XKzSkNKzATEg89qOElNMoeJJ3rmj__WFRmQJ2YRaxZzUxvT5n66MZbNfBi0lrt6eJcKmXuXSvs0V75xhMpRPOLOSxxBZRReZ7CmMl3QUJsJmvJV7Vrt_ncp1fdhVzQccod-mE5HYLvOYTPXH1Y4sJiTOWs1iNnNDj2Tcgzj3aiP5Og4NuwhvI9QFCnJ_0GGxUqqD9Le3ObM5dW_LRxCMC6iMiP_nBSLi7UcX4z2I9Qs6VOvYzM-Y6YuxpW9ICzg_FLg3lOMPq3FgjHEVQ3m1oz8aXrE1S_JL0HkG4IFPw6Xws7conu9sc0b9RcCCA13K_fEEmdL9isHE1WHYHicwZAXoI6RXBXphTWwiG_y6fF6DyOjORNVr6XWv5gkRYkln6cRyiraK2IqF33qcPZ2dvabYNQozc7SxXR6Az9cwVff1niKwsVUt7W0XTqK1nU7KsJyvl_Bms12sEJ5fTSOddMVRRA54ix9vd1_a5QtfVNllIXUUa7Z7BUaDSvFChpa9XnIMZd-jOFKfOhSEFxg9HjM2emnlOMufAMocE33bySt7o=w434-h625-no?authuser=0')

select * from Picture where aid = 2

select * from Picture

insert into Picture values('1','2','xxx')

delete from Picture

create table Reply
(
	pid nvarchar (50) foreign key references Comment(phone),
	name nvarchar(50),
	reply nvarchar(200)
)

select * from Reply

delete from Reply

select * from Comment 

create table ViewPost
(
	id nvarchar(10),
	numview nvarchar(1000)
)

insert into ViewPost values('1','0')

select * from ViewPost

update ViewPost set numview = 0 where id = 1