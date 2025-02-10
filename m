Return-Path: <linux-man+bounces-2380-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E3BA2F033
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 15:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75CD01651E8
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 14:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D51B7204874;
	Mon, 10 Feb 2025 14:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TQ3eIKun"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB1E1F8BDC
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739198964; cv=none; b=KVKlnW+nog0KjUfbMLaYopDtcdt4ZMMtZAvkNqN1a4ludJTIee63+nMxAL8V81d13VYIvUIrVjScGYzoT/sihl00T+piRIJ/ZgggizFAGiB+9xBYeAFBxU3HQ4KGrOQoCj9fm5thUJGLk3KsOUfap9dcahlp42ILByWtEQh9Rtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739198964; c=relaxed/simple;
	bh=Gdz6JG8IiLisSJrJ2fbZg9RXlT64S7IxphNFplZVzms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TegiSv9yDRz8sksN1Aj9l898qPQXCUIsAL/5GiFCbyQu/Hcu7jxsPLPIxqO7+U3aQemlCnA70R2wZpnE7Gq6yL4g9H8pbViRNkTJxo/LIdHYe9OHqOS2cGgryxeNjXUYcaYHhE4VGLP6TyuG4dMaDpOdJVJ+J0Dx4QZvCgTF48M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TQ3eIKun; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab7b7250256so216743766b.0
        for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 06:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739198960; x=1739803760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1xF7sQMX5lZxZoQBasxN9+x3O4yX0t/ccN3Xw4WTKcw=;
        b=TQ3eIKunwpmAsElQR4TBWJDoE4/eBogRtEJZeGRfQ75D1tP4K4VJnZovtPBhVy5j8y
         CwhilntWBuhzDYSm7NUVlNvprKTsRqJsb0iBcOwSG+S3y5sVH7lxtpbABIYXQqxmpGYZ
         MuDlyPelqK1RT09tt9qFVl6J3L/taYkFD8ifvrVNfvBQ0zbFcqJUgbcU1A1TNTY4HD5O
         tGOxrKldRndOvonaPXUZtnA3ZpNd1EaP2FvBEGvAawQKxKr1ZZlKO6Sn1IydwWaioZa0
         yk9awo6J/Y+V5r5bR4PmFekHGQfDvGSOLaba23sJ4fE4aZ8+OHS8eJCtpov4xzh8m5Kb
         CblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739198960; x=1739803760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1xF7sQMX5lZxZoQBasxN9+x3O4yX0t/ccN3Xw4WTKcw=;
        b=u7qN6S3oldVkBj4O9urV+3zB7AdFv/r6QwLu8gRb2Y7qqwut4dZ810J3m5Jd8YbCzO
         ky3ET6Z8NfDp4GYPtnDnLQZfo4Cti9dNqDSrPk5dbN6qMoOJSwXl4UyaRrFlxg7ywu7i
         plvxfe871JH80bR6ZkWDb4XbWojq01LRJZocUzBpJDkBpIp+KI75GLq0xhK5owyGANW3
         +m8CPG/AIJgswsMqN4xpIHN6J5RPpBwrSaC7s+eV/7fgyofwMEV+ZIEW6yWBtGyIUbx4
         aSEYb6KvItyd1N1z/nVSPXO6RQN0O3SEIpDbr36wgiUx1ib1EsOrACvWuXLyI1YHXy6t
         cHVA==
X-Gm-Message-State: AOJu0YwWdu5iMeRZ/WuL9gpo+iFv9czV2oxWjbf/cxY1m88UISDJMmDY
	I5yGWdlDF1xO1jFKZF+SnEB+yH4e0QVS8wAoX9VeuGkRV5kTelJn
X-Gm-Gg: ASbGncu2bAK4QldyV4oSj17YEi2p2XxkrCzWWmfmggX/vee10ZjYNTIhuVL9kcfDax6
	jPjy+lR8yDLnzhpyED/V7ixDqBO3iSuEJoO8QmjA2qsHPqTJbnzFrIhm6RBcOOCef/yk1B9Kgo1
	S4jkoPnKE0kfqy8F4Peskw936xk/GQ8UhikHarpa0GYh+z989NcG+kcKXlZJwXia/YsKH4AshgM
	zMw9HkXCBM19iMhexCmoCzm0/btfA9FLQGW2B48lgiy7H2v2TsVx5z7vLqv+tqQoZQeKtaIhd/5
	nMMdJUf+z8FO1fKAHBXhVMalcL/OQ79+si3iDEHijiwWelmyPZne
X-Google-Smtp-Source: AGHT+IGEa3kzc7kxWZnTdFyWz2HtTyxAHJiotEAojaDrEpoCelDUTzLXJQ1bXV88MF5H0tZRGOWOow==
X-Received: by 2002:a17:907:2ce5:b0:ab7:b250:aaa with SMTP id a640c23a62f3a-ab7b2500abdmr735298066b.54.1739198959559;
        Mon, 10 Feb 2025 06:49:19 -0800 (PST)
Received: from [192.168.145.35] (p508aef01.dip0.t-ipconnect.de. [80.138.239.1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7bb57b2a1sm287064066b.105.2025.02.10.06.49.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 06:49:19 -0800 (PST)
Message-ID: <85dc5eac-0f70-41cd-9343-6cf4ea5ec8bc@gmail.com>
Date: Mon, 10 Feb 2025 15:49:18 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
 <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
 <uvn4vqmdrmsamjjf7n36dtiqndrvbjmipja3iihr4ulcafmqh2@qjo6w36av6wn>
Content-Language: en-US
From: Boris Pigin <boris.pigin@gmail.com>
In-Reply-To: <uvn4vqmdrmsamjjf7n36dtiqndrvbjmipja3iihr4ulcafmqh2@qjo6w36av6wn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hallo Alex!

Nice!
I have to thank!

And have a nice day too!
Boris


On 2/10/25 12:03, Alejandro Colomar wrote:
> Hi Boris,
>
> On Mon, Feb 10, 2025 at 09:56:40AM +0100, Boris Pigin wrote:
>> Hi Alex,
>>
>> as my email was rejected by the mailing list due to containing HTML part
>> here is the second try.
> [...]
>
>>   ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:50:38  🖿 ~/test/man-pages-6.10 🧬
>> 📦 🐾14
>>   ╰ $ make -version
>> GNU Make 4.2.1
>> Built for x86_64-pc-linux-gnu
>> Copyright (C) 1988-2016 Free Software Foundation, Inc.
>> License GPLv3+: GNU GPL version 3 or later
>> <http://gnu.org/licenses/gpl.html>
>> This is free software: you are free to change and redistribute it.
>> There is NO WARRANTY, to the extent permitted by law.
> This seems to be the problem.  I hadn't used such an old version of
> make(1) in a long time.  I've been able to reproduce the problem in a
> Docker container with Debian Buster.
>
> 	root@b3cfb66d7016:/# wget https://kernel.org/pub/linux/docs/man-pages/man-pages-6.10.tar.gz >/dev/null 2>&1
> 	root@b3cfb66d7016:/# ls
> 	bin   dev  home  lib64			media  opt   root  sbin  sys  usr
> 	boot  etc  lib	 man-pages-6.10.tar.gz	mnt    proc  run   srv	 tmp  var
> 	root@b3cfb66d7016:/# tar xf man-pages-6.10.tar.gz
> 	root@b3cfb66d7016:/# rm man-pages-6.10.tar.gz
> 	root@b3cfb66d7016:/# ls
> 	bin   dev  home  lib64		 media	opt   root  sbin  sys  usr
> 	boot  etc  lib	 man-pages-6.10  mnt	proc  run   srv   tmp  var
> 	root@b3cfb66d7016:/# cd man-pages-6.10/
> 	root@b3cfb66d7016:/man-pages-6.10# make | wc -l; echo $?
> 	/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminated call to function 'shell': missing ')'.  Stop.
> 	0
> 	0
> 	root@b3cfb66d7016:/man-pages-6.10# cat /etc/os-release
> 	PRETTY_NAME="Debian GNU/Linux 10 (buster)"
> 	NAME="Debian GNU/Linux"
> 	VERSION_ID="10"
> 	VERSION="10 (buster)"
> 	VERSION_CODENAME=buster
> 	ID=debian
> 	HOME_URL="https://www.debian.org/"
> 	SUPPORT_URL="https://www.debian.org/support"
> 	BUG_REPORT_URL="https://bugs.debian.org/"
> 	root@b3cfb66d7016:/man-pages-6.10# make -v
> 	GNU Make 4.2.1
> 	Built for x86_64-pc-linux-gnu
> 	Copyright (C) 1988-2016 Free Software Foundation, Inc.
> 	License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
> 	This is free software: you are free to change and redistribute it.
> 	There is NO WARRANTY, to the extent permitted by law.
>
> It seems to be a make(1) bug?  (Or maybe a simpler, older
> specification.)  It is caused by the '#' in the string.  make(1)
> probably interprets it as the start of a comment.
>
> The problem also triggers in another place:
>
> 	CPP_HAS_ALREADY_D_FORTIFY_SOURCE := \
> 		$(shell \
> 			$(CPP) -dM - -Wno-error </dev/null \
> 			| $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
> 			&& $(ECHO) yes \
> 			|| $(ECHO) no; \
> 		)
>
> It's surprising that I haven't triggered issues with old make(1) before.
> I have now tried 6.9.1 there, and it works (I see some pages reporting
> issues, but the makefile does work).
>
> I've pushed a fix to the contrib branch, and will try to make a new
> release in a few days.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=a0d5f1961dfd8eb3af2b0ece845448a42c492ae0>
>
> 	commit a0d5f1961dfd8eb3af2b0ece845448a42c492ae0 (HEAD -> contrib, alx/contrib)
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Mon Feb 10 11:56:01 2025 +0100
>
> 	    share/mk/: Escape '#' in regexes
> 	
> 	    GNU make(1) 4.2 seems to be interpreting those characters as the start
> 	    of a comment, so we need to escape them.  That seems to calm those old
> 	    versions of make(1), and doesn't affect negatively the newer ones, and
> 	    doesn't negatively affect grep(1) either.
> 	
> 	    Fixes: 35a780a99bd8 (2024-07-20; "share/mk/: CPPFLAGS: Only define _FORTIFY_SOURCE if it's not already defined")
> 	    Fixes: 2130162900ab (2024-11-03; "share/mk/, etc/shellcheck/: lint-sh: Add target to lint shell scripts")
> 	    Reported-by: Boris Pigin <boris.pigin@gmail.com>
> 	    Cc: Sam James <sam@gentoo.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> 	diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/configure/build-depends/cpp/cpp.mk
> 	index 594215892..65da77f84 100644
> 	--- a/share/mk/configure/build-depends/cpp/cpp.mk
> 	+++ b/share/mk/configure/build-depends/cpp/cpp.mk
> 	@@ -19,7 +19,7 @@ CPP ?= $(CC) $(CFLAGS_) -E
> 	 CPP_HAS_ALREADY_D_FORTIFY_SOURCE := \
> 		$(shell \
> 			$(CPP) -dM - -Wno-error </dev/null \
> 	-               | $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
> 	+               | $(GREP) '\#define _FORTIFY_SOURCE ' >/dev/null \
> 			&& $(ECHO) yes \
> 			|| $(ECHO) no; \
> 		)
> 	diff --git a/share/mk/src/sh.mk b/share/mk/src/sh.mk
> 	index 487eaf14d..05c9e0449 100644
> 	--- a/share/mk/src/sh.mk
> 	+++ b/share/mk/src/sh.mk
> 	@@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/configure/directory_variables/src.mk
> 	
> 	
> 	 BIN_sh := $(shell $(FIND) $(SRCBINDIR) -type f \
> 	-               | $(XARGS) $(GREP) -l '^#!/bin/\(sh\|bash\)\>' \
> 	+               | $(XARGS) $(GREP) -l '^\#!/bin/\(sh\|bash\)\>' \
> 			| $(SORT))
> 	
>
> Thanks for the report!
>
>
> Have a lovely day!
> Alex
>

