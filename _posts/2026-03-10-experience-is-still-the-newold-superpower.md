---
layout: single
title: "Experience is still the New/Old Superpower"
date: 2026-03-10
excerpt: "AI isn't going to replace the seasoned engineer, the strategic manager, or the astute generalist. But for the person who knows — or is willing to learn - how to vibe code while maintaining architectural integrity? They’re going to move two orders of magnitude faster than everyone else; and I'm not alone in this conclusion."
categories:
  - Musings
tags: [AI, individualContributors, realTalk]
---

A fascinating thread popped up in one of my Slack workspaces recently. A friend and former colleague shared how they vibe coded a music classifier—trained on 1,500 tracks—in a single weekend. With zero ML experience and about 10 hours of babysitting Claude, they achieved what would have previously taken months of deep learning and manual effort.

It raised the question that’s on everyone’s mind: Is AI coming for our jobs, or is it just the ultimate force multiplier?

As I navigate the tech job market and reflect on my own career path, here are my three big takeaways on why "old skool" experience is the secret sauce for "new school" tools:

**1. The Art of the "Save State"**<br>
One of the biggest hurdle with LLMs isn't the code they write, per se; it's the "drift" that happens when a conversation gets too long and the model loses the plot. <br><br>
The industry has caught on to this—Cursor now has native checkpointing that lets you roll back entire agentic sessions, and CLI tools like Claude Code use commands like ```/rewind``` to undo file edits and conversation states. But even with these native safety nets, another former colleague pointed out a vital "old school" skill: Strategic Checkpointing. Before a major pivot, I have the model summarize everything useful into a markdown file. Starting a fresh thread with that "save state" is the modern equivalent of a clean git commit. I’ve also found that using Gemini’s ability to pull context across threads has been a game-changer here — it reduces the copy-paste tax and allows me to iterate on complex tasks over days or weeks without the AI forgetting the original mission and subtle details.

**2. From Coder to Conductor**<br>
In the music classifier example, my colleague functioned essentially as a PM. They didn't look at the code; they steered the intent.<br><br>
I saw this firsthand when I inherited a suite of over-engineered legacy codebases. Using tools like Copilot didn't just help me onboard faster; it acted as a high-level "rubber ducky" for architectural decisions. While the AI churned through the boilerplate of refactoring and migration, I was freed up to focus on the high-value work: system design, stakeholder management, and cross-team strategy.

**3. The Woodworker’s Paradox**<br>
I was talking to a friend this weekend who is both a tech veteran - currently at Agent.ai - and a skilled woodworker, and we hit on a perfect analogy: AI is like being handed a fancy new woodworking tool. It might be faster, and it might technically produce a better finish, but the tool itself doesn't improve the work. You need the underlying experience to know what that specific tool is actually good for, and you need the dedicated time to experiment with it to see how it fits into your specific workflow.<br><br>
As, yet another, former colleague joked on LinkedIn, "All you need to make this stuff work is 30 years of end-to-end experience [and] 2 days [of] writing [a] really clear one-pager..." The real leverage of AI doesn't come from the tool itself, but from the breadth of experience of the person wielding it. You need the seniority to spot a security flaw or a scaling bottleneck that a junior dev (not that we are hiring them... but that's another post) — or a bot — might miss.<br><br>


**The Market Reality**<br>
Despite the "AI is coming for us" narrative, I don't feel like these tools are replacing the roles I’m targeting (Engineering and Product/Project Management). If anything, they are stripping away the busy work. Currently, I’m using a agentic AI as my personal recruiting coach, handling the ATS adjustments and resume tailoring that used to take hours.

To be honest, I used AI (Gemini and Claude specifically) to help me create this site and to act as a writing partner for these posts. I reviewed every suggestion, edited extensively for tone, and caught its often laughably dumb mistakes — but it saved me time and increased my confidence in the finished product.

**The catch?** We are in a weird middle ground. Many companies are slapping "AI" onto everything without a clear strategy, and the combination of layoffs and ATS automation means many firms are only catching for specialist unicorns.

**The bottom line:** AI isn't going to replace the seasoned engineer, the strategic manager, or the astute generalist. But for the person who knows — or is willing to learn — how to vibe code while maintaining architectural integrity? They’re going to move two orders of magnitude faster than everyone else; and I'm not alone in this conclusion.

---

_Coming Soon: The Rise of the Logic-First Engineer_<br>
_In a future post, I'll be diving deeper into how these tools are opening up the field of engineering to logical, process-focused thinkers — people who might not have memorized every bit of syntax but can write a bulletproof project plan for an agent to execute._ <br>
_Stay tuned._ 🎵 🎸