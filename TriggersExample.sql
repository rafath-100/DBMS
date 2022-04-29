-- What is a Trigger?
-- Triggers are the SQL codes that are automatically executed in response to certain events on a particular table. These are used to maintain the integrity of the data. A trigger in SQL works similar to a real-world trigger. For example, when the gun trigger is pulled a bullet is fired. We all know this, but how this is related to Triggers in SQL? To understand this let’s consider a hypothetical situation.

-- John is the marketing officer in a company. When a new customer data is entered into the company’s database he has to send the welcome message to each new customer. If it is one or two customers John can do it manually, but what if the count is more than a thousand? Well in such scenario triggers come in handy. 

-- Thus, now John can easily create a trigger which will automatically send a welcome email to the new customers once their data is entered into the database. So I hope you are clear with the introduction of Triggers in SQL.

-- Always remember that there cannot be two triggers with similar action time and event for one table. For example, we cannot have two BEFORE UPDATE triggers for a table. But we can have a BEFORE UPDATE and a BEFORE INSERT trigger, or a BEFORE UPDATE and an AFTER UPDATE trigger.

insert into practice.new values ('1','45');
insert into practice.new values ('2','40');
insert into practice.new values ('3','55');
insert into practice.new values ('4','15');

select * from practice.new;
use practice;
create TRIGGER calculate
before INSERT 
on new 
for each row
set new.marks=new.marks+20;

use practice;
create TRIGGER calculate2
before INSERT 
on new 
for each row
set new.marks=new.marks+40;


insert into new values ('5','5');
insert into new values ('6','0');
select * from new;


