Return-Path: <linux-man+bounces-3259-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CB5B028FD
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 04:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18AE44A3AA5
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 02:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F1A1DE2CD;
	Sat, 12 Jul 2025 02:33:53 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from newman.eecs.umich.edu (newman.eecs.umich.edu [141.212.113.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0047F1D5142
	for <linux-man@vger.kernel.org>; Sat, 12 Jul 2025 02:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.212.113.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752287632; cv=none; b=q2sV+3yCN60YNfrOIsTIE0q6R6K8yZ7VugY8ySrmBVcyfr9tbsvVasREEFKTEZVs5lMZ641sWIZThwD7O+7Zt+kXRYteC24u5ot9OceMROCqEqJPT/kgs508zZBGBDtVfso+ofI5iNDtj/qO7rbY3dXbvzjjsn2wcbNm/hmtBZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752287632; c=relaxed/simple;
	bh=cgnZmhw+aVZKaJqfK5onU9D4fshgEMaPGlxIBgc5IWE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=IvdGNmUPGWyeKy3JGtbzJrRPCK9Ooy4cKN2z9zFgkHrHEv78ph9EnBTxLp7EnRK8v4Rkwn7+LMs/C1bIpGHnC6vab1HAxSSZ6/yq5boG5b7fRZRrdKjs6sY2XKvTwhshic1/bZMKFjtgzdZsn9czj9l4feDPSLU24wQTktk9Bk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu; spf=pass smtp.mailfrom=eecs.umich.edu; arc=none smtp.client-ip=141.212.113.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eecs.umich.edu
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.194] (may be forged))
	by newman.eecs.umich.edu (8.15.2/8.14.4) with ESMTPS id 56C2XYvR1583257
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 11 Jul 2025 22:33:34 -0400
Received: by email.eecs.umich.edu (Postfix, from userid 36916)
	id 0454C12A04D0; Fri, 11 Jul 2025 22:33:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by email.eecs.umich.edu (Postfix) with ESMTP id 03A0A12A0169;
	Fri, 11 Jul 2025 22:33:34 -0400 (EDT)
Date: Fri, 11 Jul 2025 22:33:33 -0400 (EDT)
From: Terence Kelly <tpkelly@eecs.umich.edu>
Reply-To: Terence Kelly <tpkelly@eecs.umich.edu>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
In-Reply-To: <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
Message-ID: <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu> <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII



Hi Alejandro,

To be clear, my suggestion is simply to include a citation/reference to 
the sandboxing paper at the bottom of the seccomp man page, in the "SEE 
ALSO" section.  If McCanne & Jacobson's BPF paper from 1992 is worth a 
two-line mention, perhaps a 2025 paper on MODE_STRICT is also worthy.

Below I'll try to address your questions about the code presented in my 
paper.  In some cases I rely on imperfect memory of writing the code 
several months ago and revising it in response to reviewer feedback; if 
truly necessary I could get more definitive answers by digging more.  But 
keep in mind that the code listings in a published, final, and archived 
paper can't change.  I am *not* suggesting that you include any of the 
paper's code in the manpage for seccomp.

If you believe that the manpage should cover some of the points in my 
paper, I'm willing to work with you to revise my code to suit your style 
preferences or write new code from scratch.  However the subject of the 
paper --- confining vulnerable library code in a sandbox run in a 
co-process --- seems rather too complex and too specific for a manpage. 
That's why I merely suggested a brief mention in "SEE ALSO."

Finally, if you read all the way to the end below, that means you're an 
exceptionally diligent programmer.  I have a special offer for you.  :)

Thanks.  More inline....

-- Terence


On Fri, 11 Jul 2025, Alejandro Colomar wrote:

> On Wed, Jul 09, 2025 at 09:55:50PM -0400, Terence Kelly wrote:
>>
>> I'm writing to recommend that a pointer to a recent paper be added to 
>> the "SEE ALSO" section of the manpage for seccomp.
>>
>> ...
>>
>> https://dl.acm.org/doi/10.1145/3733699
>
> Why is SANDBOX_ERASE_ENVARS defined in such a weird way, when it can be 
> a normal function?

A code reviewer sugggested that all preparatory code be consolidated into 
a single header file, "sandbox.h".  In a header file it's unconventional 
to have ordinary functions, therefore function-like macros are used.

Also:  An author of magazine articles faces many constraints involving 
page limits, figure size, font size, etc.  Programming styles and 
code-layout/indentation styles that are profligate with vertical space and 
whitespace, for example, don't work well in ACM magazines such as Queue.

As the text of the paper explains, memset_explicit is preferable to 
memset, but the example code uses the latter because the former is not yet 
available on all popular Linux distributions.  One of my machines didn't 
have it.

> Why do you cast the first argument to syscall(2)?  You're not supposed 
> to do that.

syscall(2) takes a long and SYS_seccomp expands into an int, which I 
suspect triggered a compiler warning.  I'm guessing, relying on memory 
from months ago.  If this is truly important I could do some digging and 
reconstruct the rationale.

Why do you say "you're not supposed to do that"?  Is the cast positively 
*harmful*?  Does syscall *not* take a long?

> Why do you call _exit(2) through syscall(2)?  There's _exit(2).

Try calling _exit(your_favorite_exit_value) from within a sandbox, after 
SANDBOX_CREATE_STRICT, on a late-vintage Ubuntu and Fedora box.  I'm 
pretty sure we tried doing it the obvious way and seccomp didn't like it. 
If necessary I could dig up the details.

If I recall correctly this was one of several instances where seccomp's 
behavior surprised us and made the code more weird.

> Why is CHK() defined in such a weird way when it can be a normal
> do-while(0) macro:
>
> 	#define CHK(e)  do                                            \
> 	{                                                             \
> 		if (!(e)) {                                           \
> 			MSG("check failed:  '" #e "'");               \
> 			_exit(1);                                     \
> 		}                                                     \
> 	} while (0)

See my remarks above about the constraints of ACM magazine page layout.

I totally understand why you'd rather do it your way in, say, a manpage, 
or in ordinary production code.  Code listings in a magazine must obey 
different rules, and those rules aren't made by authors like me.  If it 
were up to me, magazines would be printed on wide and very long *scrolls* 
of paper.  :)

> What is 'erongi'?  Why do you write the output of write(2) to an
> undefined variable, if you don't even use that value?
>
> 	#define MSG(m)  ((void) write(STDERR_FILENO, Z(m), strlen(Z(m))))

Line 1 of Figure 2 explains that "erongi" --- "ignore" spelled backwards 
--- squelches a compiler warning about ignoring the return value of 
write().  I always compile example code with *all* gcc warnings enabled, 
not just the subset enabled by "-Wall -Wextra"; see the "warnflags" file 
in the example code tarball.  Sometimes the warning flags yield false 
alarms, and sometimes squelching those false alarms leads to weird code.

I find that insisting on a perfectly spotless build --- no compiler 
warnings of any kind, ever --- reduces my fatigue and makes it harder for 
warnings about serious problems to slip by unnoticed.

> I recommend checking syscall errors as -1.  It's more readable.

In cases where zero indicates success, I prefer to gripe/bail on nonzero. 
The logic is roughly, "if everything is not completely perfect and 
unsurprising, fall on sword with loud scream."

> It also avoids multiple evaluation of arguments in DUP2().  Also, we 
> don't need to check that a==b.  dup2(2) succeeds on such case too.

Okay, I see that dup2 correctly handles a==b in the manpage.  I suspect 
that I got the a==b check from Stevens & Rago.

> 	#define DUP2(a, b)  do                                        \
> 	{                                                             \
> 		CHK(dup2((a), (b)) != -1);                            \
> 		CHK(close(a) != -1);                                  \
> 	} while (0)
>
> See how dup2(2) succeeds for a==b:
>
> 	alx@devuan:~/tmp$ cat dup2.c
> 	#include <unistd.h>
> 	#include <stdio.h>
>
> 	int
> 	main(void)
> 	{
> 		int x = dup2(1, 1);
>
> 		printf("%d\n", x);
> 		perror("dup2");
> 	}
> 	alx@devuan:~/tmp$ gcc -Wall -Wextra dup2.c
> 	alx@devuan:~/tmp$ ./a.out
> 	1
> 	dup2: Success
>
> Why is SANBOX_DISCOURAGE_CORE_DUMPS defined in such a weird way when it 
> can be a function-like macro?
>
> ...
>
> Why is SANDBOX_CREATE_STRICT defined in such a weird way, when it can be 
> a function-like macro?
>
> ...

The two macros above are also "weird" partly due to the magazine 
constraints mentioned earlier.  Also, a function-like macro that takes no 
arguments seems less natural to me than a simple macro.  But I'm willing 
to be persuaded that function-like macros are somehow more appropriate in 
situations such as this.

> Have a lovely day!
> Alex

And you also.

If you've made it this far, you're more diligent than most coders.

Would you like to write for Communications of the ACM (CACM)?  I'm 
co-chair of a newly rebooted "Practice" section of CACM, and we're looking 
for writers.  Here's our new Call for Papers:

https://cacm.acm.org/practice/call-for-papers-cacm-practice-section/

If you maintain the Linux manpages, I could imagine a cool article about 
that.  Or any other topic that (a) you know well, and (b) would interest 
many other programmers.

Your writing is good, you're clearly very knowledgeable, and you care 
about both small details and the big picture.  That's the kind of author 
we're looking for.  If you have any ideas, let's start a separate thread.

CACM is a good instrument for enlightening a segment of the world's coders 
who might otherwise miss your message.  CACM reaches 100K ACM members in 
hard copy via postal mail, and the open-access (no paywall) web site 
reaches hundreds of thousands more.  If you've go a powerful message, I've 
got a way to broadcast it to people who might otherwise not hear it.

Furthermore if you know anyone who ought to write for CACM, I'd be 
grateful for an intro.

Thanks for your volunteer work on Linux documentation!  It's great to see 
that the man pages are in capable hands.

>> Terence Kelly
>> tpkelly @ { acm.org, cs.princeton.edu, eecs.umich.edu }
>> https://dl.acm.org/profile/81100523747
> 
> -- 
> <https://www.alejandro-colomar.es/>


