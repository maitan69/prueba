event_inherited();


text[0, 0] = "*Another *exciting* day, isn't it?"
text[0, 1] = "*Hey, I found out something."
text[0, 2] = "*I discovered there's a power terminal behind the bed."
text[0, 3] = "*Since the whole place's security locks are electricity-based..."
text[0, 4] = "*I thought we could, I don't know, open the door by cutting all the power off."
text[0, 5] = "*The terminal is behind a metal plate sealed by screws, though."
text[0, 6] = "*I know, I know... *sigh* dreaming costs nothing."
text[0, 7] = "*Oh, and there's also a password terminal."
text[0, 8] = "*But yeah, that one's out of the question right off the bat."



//
text[1, 0] = "*Yeap, there it is."
text[1, 1] = "**Sigh* I never thought I'd want a screwdriver so badly in my life."

text[2, 0] = "*Whoa! You knew the password all along?"
text[2, 1] = "*What the hell, man."
text[2, 2] = "*Whatever, we'll have time to chat later. Let's get out of here once and for all!"

executeAfterTalking = scr_unlock_bed;
follow = false;
dialogAfterPassword = true;

