Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7EB9484C4B
	for <lists+linux-man@lfdr.de>; Wed,  5 Jan 2022 03:03:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235251AbiAECD5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Jan 2022 21:03:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234434AbiAECD5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Jan 2022 21:03:57 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBD0CC061761
        for <linux-man@vger.kernel.org>; Tue,  4 Jan 2022 18:03:56 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id k18so43045504wrg.11
        for <linux-man@vger.kernel.org>; Tue, 04 Jan 2022 18:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject:content-transfer-encoding;
        bh=jYuIWPXv76lY7VhJkY2jHtmmA3GDi2os5XYvUnvTnWo=;
        b=Nw5V6kRdDFH4HkhRGy3gXLeog/D8WMrFtFUoaZ8x2MaNbdOUMQoxR38Z4l7CCnbcG6
         vMiD2oUeriKL/Drq142bPc4A4QzVxNzInA+qvNk1OvZI2Qg4LHpZevm79cpIVbTG48nX
         HDvgqL6c6SXkrAiVSyk1Q5+mPkd6AxO5ZQxe6a17vr1u4uBwxghNRwClHVjaFMDpyzjG
         IWQE1ajMmOuF2nNB79Mh8osMSYEIFu+3RrCbkc6ArICZhvRZ/0lPUrSrMKHTNX00MeHN
         6XFoyKOxCROhMg5XRAfgftDiJVYl6XqlcHY0e07kz4Xrom8HFkWPfUjLV/KW6y12XK0o
         1zPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject:content-transfer-encoding;
        bh=jYuIWPXv76lY7VhJkY2jHtmmA3GDi2os5XYvUnvTnWo=;
        b=jYx517f+VnHjMOVqGXOI1+BxbgvNKCA8x94bj2fkHkpvlhO85xnc27JzOQ9z+qff7I
         qlMgrXDgmWN7KLz0so8qDLXySAiU9MbMRvpIz6UOttfi2fgKXiYStfR541OVYOefe5kx
         Pk2K+B7Tq1/+Ew7GMpiJOfGXnbLRjR6NGxvRuzkPPlouksl2McIBLhx5CUP0SAsEcWyr
         L4MEAYxLNBhs8IlYm7IsDQm0qHVKV7lfdWzIT7EWAWZv1UuY/1EtJf2h1fcI/3MvCpm3
         cCuRp0oa6+l/6mtyxQIqn+kgtMSODOBcPty1rczWedszeen8fOQGFQ/7ZtOengJddZih
         j3ng==
X-Gm-Message-State: AOAM532cMvKdcaJgScvTRrjY+GAfLpuhIwRR4YpKINO/iF8cWrJ7kcHv
        6cE5lFSNPWjZYqP3pWOoQaI=
X-Google-Smtp-Source: ABdhPJxVh3fjVnEHlWOB9aaA9UpRSpqx+X/Fxf9mAIpPXjzYHPwBzRlo7Kb0i/WrRVUBUUBFNejAug==
X-Received: by 2002:a5d:6d06:: with SMTP id e6mr44122877wrq.242.1641348235376;
        Tue, 04 Jan 2022 18:03:55 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p18sm1127821wmq.23.2022.01.04.18.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jan 2022 18:03:54 -0800 (PST)
Message-ID: <3a34ccac-1d2b-7f5a-f0fa-6ba22dd1680f@gmail.com>
Date:   Wed, 5 Jan 2022 03:03:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To:     Debian Ecosystem Init Diversity Team 
        <debian-init-diversity@chiark.greenend.org.uk>,
        Ian Jackson <iwj@debian.org>, Benda Xu <orv@debian.org>,
        Adam Borowski <kilobyte@debian.org>,
        "Vincenzo (KatolaZ) Nicosia" <katolaz@freaknet.org>,
        Mark Hindley <leepen@debian.org>,
        Mark Hindley <leepen@debian.org>,
        "Devuan (Debian is Not GNOME)" <dng@lists.dyne.org>,
        Randy Westlund <rwestlun@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        help make <help-make@gnu.org>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: make-rc: A parallel (as in make(1)) alternative to sysv-rc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

Most of you I added you to this email because I found you on the 
maintainers list for the Debian sysv-rc package (now dead for a long time).
I also CCd Devuan, since I hope you'll be interested in this little 
project of mine.
I also CCd linux-man@, since there's not many people listening there, 
and not much traffic these days so I hope you won't be angry for this 
little bit of spam; and I hope some good guys reading that list may have 
some comments on this.  Sorry again for the bit of spam.
I also CCd help-make@.  I (ab)used your software in a way that it was 
never designed to; not sorry for that; I'll say it was the original Unix 
authors' fault for designing such (ab)usable tools :).  Maybe you're 
interested in this thread, maybe you don't care, but I'll CC you in case 
some of you may be interested in this.
And finally, Randy, as you asked, I'll CC you for news on this.
Anyone not interested in follow-ups, please email me, and I'll try to 
remove from CC.

So, last friday (yes, that's New Year's Eve), I was reading something, 
and got this idea... the main valid claim for systemd is that it blows 
away competition in terms of performance?  Full parallelization?  Knows 
about dependencies?  I don't know too much of systems; I know some basic 
stuff, but I'm mostly a C programmer, so I don't know init(1)... okay. 
But since I program, I sure know the good ol' make(1).  It's old, and 
it's good at fully parallelizing _everything_.  Dependencies? sure; 
fast? sure; parallel? sure; simple? sure; a bit bloated? GNU make maybe, 
especially for init(1), but far from systemd(1):

$ ls -lh $(realpath $(which systemd make bash sh 2>/dev/null))
-rwxr-xr-x 1 root root 1.2M Dec 15 00:43 /usr/bin/bash
-rwxr-xr-x 1 root root 123K Nov  3 11:51 /usr/bin/dash
-rwxr-xr-x 1 root root 235K Apr 10  2021 /usr/bin/make
-rwxr-xr-x 1 root root 1.8M Nov 19 21:11 /usr/lib/systemd/systemd

So, if the problem is that the rc scripts don't run parallel and don't 
know about exact dependencies from each-other, let's rewrite that part 
and only that part of the system with make(1); that was the idea.  Don't 
touch init, don't touch the scripts themselves... only the part that 
decides on which order to run them.  That's the idea.


I decided to start with a clean install of Devuan (since I'm a Debian 
user, and I'm used to it; it might have been easier to start with a 
smaller system, but I might have found other issues in the middle;  I 
know that the only difference in Devuan is sysvinit, which is what I 
want).  The install has XFCE and sysvinit as options.  I wanted the 
system to have GUI, so that if I can boot XFCE with it, I can boot 
anything (except maybe for the bad boy, GNOME, but I don't even like it).

I wrote a couple of scripts to port the existing rc system to my 
make-based rc system.  The script didn't touch the old one, in case I 
needed it to boot if I screwed something, of course.  One script creates 
the makefiles without declaring the dependencies between them, and then 
another makefile creates the dependencies to match the current boot 
order (allowing for the same level of parallelization that the current 
semi-parallel rc script uses).  From there, one could analyze the 
dependencies to remove some that are incorrect, and make it faster, but 
since I don't know the real dependencies, I didn't want to break stuff.

So, here go the scripts:

====================== script1_basicmk.sh ========================
#!/bin/bash

find /etc/rc[0123456S].d/[KS]* \
|sed s,/etc/rc..d/...,, \
|sort \
|uniq \
|while read x; do\
	mk="/etc/rc.mk.d/$x.mk";

	test -e $mk \
		&& continue;

	>$mk cat <<EOF
.PHONY: K$x S$x

: K$x

: S$x

K$x:
	/etc/init.d/$x stop

S$x:
	/etc/init.d/$x start
EOF

	find /etc/rc[0123456S].d/K*$x 2>/dev/null \
	|sed s,/etc/rc,, \
	|sed s,.d/K.*,, \
	|sort \
	|tac \
	|while read n; do \
		sed -i "/: K$x$/s/^/$n /" $mk;
	done;

	find /etc/rc[0123456S].d/S*$x 2>/dev/null \
	|sed s,/etc/rc,, \
	|sed s,.d/S.*,, \
	|sort \
	|tac \
	|while read n; do \
		sed -i "/: S$x$/s/^/$n /" $mk;
	done;

	sed -i "s/ *:/:/" $mk;
	sed -i "/^:/d"    $mk;
done;
=========================================================

===================== script2_deps.sh ===================
#!/bin/bash

find /etc/rc.mk.d/*.mk \
|sed s,/etc/rc.mk.d/,, \
|sed s,.mk$,, \
|sort \
|while read x; do\
	mk="/etc/rc.mk.d/$x.mk";

	for n in 0 1 2 3 4 5 6 S; do \
		K=$(find /etc/rc$n.d/K??$x 2>/dev/null \
		    |grep -o /K.. \
		    |sed s,/K0*,,);
		test -z "$K" || test $K -eq 1 \
			&& continue;
		k=$(printf %02d $(($K - 1)));

		find /etc/rc$n.d/K$k* \
		|sed s,/etc/rc$n.d/K$k,,;
	done \
	|sort \
	|uniq \
	|while read dep; do \
		echo K$dep;
	done \
	|xargs echo \
	|while read Kdeps; do
		test -z "$Kdeps" \
			&& break;

		>>$mk cat <<-EOF

		K$x: $Kdeps
		EOF
	done;

	for n in 0 1 2 3 4 5 6 S; do \
		S=$(find /etc/rc$n.d/S??$x 2>/dev/null \
		    |grep -o /S.. \
		    |sed s,/S0*,,);
		test -z "$S" || test $S -eq 1 \
			&& continue;
		s=$(printf %02d $(($S - 1)));

		find /etc/rc$n.d/S$s* \
		|sed s,/etc/rc$n.d/S$s,,;
	done \
	|sort \
	|uniq \
	|while read dep; do \
		echo S$dep;
	done \
	|xargs echo \
	|while read Sdeps; do
		test -z "$Sdeps" \
			&& break;

		>>$mk cat <<-EOF

		S$x: $Sdeps
		EOF
	done;

	for n in 0 1 2 3 4 5 6 S; do \
		test -e /etc/rc$n.d/S01$x \
			|| continue;
		K=$(find /etc/rc$n.d/K* 2>/dev/null \
		    |grep -o /K.. \
		    |sed s,/K,, \
		    |sort \
		    |uniq \
		    |tac \
		    |head -n1)
		test -z "$K" \
			&& continue;
		k=$(printf %02d $K);

		find /etc/rc$n.d/K$k* \
		|sed s,/etc/rc$n.d/K$k,,;
	done \
	|sort \
	|uniq \
	|while read dep; do \
		echo K$dep;
	done \
	|xargs echo \
	|while read Kdeps; do
		test -z "$Kdeps" \
			&& break;

		>>$mk cat <<-EOF

		S$x: $Kdeps
		EOF
	done;
done;
===============================================


I know some stuff could go into functions to make them shorter, and 
probably some comments could also help, but I wrote them fast, just to 
have some proof of concept, and later I could makes them nicer.  Special 
thanks to Doug for creating pipes, I love them :)

The One Makefile To Rule Them All is the following:

================ /etc/rc.mk.d/Makefile ================
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables

.PHONY: all 0 1 2 3 4 5 6 S

all: 5

0 1 2 3 4 5 6 S:

include /etc/rc.mk.d/*.mk
=======================================================

And then a sample file (created by the above scripts) is:

================ /etc/rc.mk.d/vboxadd.mk ===============
.PHONY: Kvboxadd Svboxadd

0 1 6: Kvboxadd

2 3 4 5: Svboxadd

Kvboxadd:
	/etc/init.d/vboxadd stop
	sleep 1

Svboxadd:
	/etc/init.d/vboxadd start
	sleep 1

Kvboxadd: Kalsa-utils Kbrightness Kelogind Knetwork-manager 
Kpulseaudio-enable-autospawn Ksaned Kslim Kspeech-dispatcher Kurandom 
Kvboxadd-service

Svboxadd: Sconsole-setup.sh
========================================================

I added the sleep 1 for debug; the rest is the output of the scripts.


As you can see I kept the K... and S... syntax of rc scripts.  However, 
instead of a symlink, now there's a makefile declaring dependencies and 
calls directly the script with no symlink.  Now all makefiles are in a 
single directory (I found it simpler this way), but we could think of a 
different structure if it's better.  These makefiles (or more 
technically, parts of a makefile), resemble the systemd service files, 
where each one declares what should have already run before start and 
before kill, and also contains the info about which runlevels want this 
(both S and K).

Because of the script, and because some scripts used .sh extension and 
some others didn't, there are some traces of that in the names of the 
targets; nothing really problematic, only ugly.  I could have removed 
it, but it was more work, and I noticed late.

I only had to manipulate a single line from only one of these makefiles 
after running the scripts, but that I'll keep if for later;  it was 
about dependencies, because there was a missing number in one of the 
runlevel dirs (no jump from S02 to S04 in one of the dirs, no S03)


And finally, to run all this madness, I had to tweak /lib/init/rc a 
little bit:

diff --git a/rc b/rc
index 5e7f3a4..e1ffa31 100755
--- a/rc
+++ b/rc
@@ -60,7 +60,7 @@ export VERBOSE
  # insserv package to be enabled. Boot concurrency also requires
  # startpar to be installed.
  #
-CONCURRENCY=makefile
+CONCURRENCY=makefile2
  test -s /etc/init.d/.depend.boot  || CONCURRENCY="none"
  test -s /etc/init.d/.depend.start || CONCURRENCY="none"
  test -s /etc/init.d/.depend.stop  || CONCURRENCY="none"
@@ -168,7 +168,10 @@ then
                 done
         fi

-       if [ makefile = "$CONCURRENCY" ]
+       if [ makefile2 = "$CONCURRENCY" ]
+       then
+               make -C "/etc/rc.mk.d/" "$runlevel"
+       elif [ makefile = "$CONCURRENCY" ]
         then
                 if [ S = "$runlevel" ]
                 then



I'd like to know your thoughts about this.  If it seems like it could be 
a good replacement for sysv-rc (for Devuan; I guess for Debian it's too 
late) I'd like to know.  Or if you think it can be a good thing but 
needs some polish, I'd like to hear it too.  It's just a proof of 
concept after 2 days of having had fun with it :)

I'd like it to be able to compete in terms of performance with 
systemd(1), so that we could possibly take over it, but hey, that's only 
a hope.

And now I'll tell you a bit about the outcome I had:  I booted with this 
configuration, and I first got into single-user mode, which I don't yet 
understand why it happened (there's probably something I didn't get 
right, but no real blocking problem, I guess).  But then, after the 
typical type password or ^D to continue, I pressed ^D, and I got a shiny 
XFCE GUI completely wirking.  Not bad for this prototype, I'd say.  I'd 
like some help to polish this, if you may.

Happy new year!

Alex


-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
