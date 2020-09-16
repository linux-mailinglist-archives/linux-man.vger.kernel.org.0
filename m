Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA1726CA37
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 21:52:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727589AbgIPTwQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 15:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727239AbgIPTv6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 15:51:58 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CD07C061788
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 12:51:57 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id y15so4276156wmi.0
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 12:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=f0vJ7dJqmeDBpO2ycQyDdhVrJU5UFPQJZ6/m7ifFdEQ=;
        b=Of2u1WteYrQs80fxEasF5mC/TTVwIK1D4vx6ZpGpFINRLbuT7VKWgKH/rtU33kWziQ
         uM2AW/Iam8BGlz3ZdVeyEJapcptJjl3Uqw6PEJqCwBlttT//Xe/hMl3RS+2yrsjZCF2g
         SNOi8FOahjFnUMegyS/GtPy0JSSmgCVFZEidrBgXPA91INXqTBfOQHNl2DGhbNRfGDc9
         FNCpyoHlk0nBI5VKlIdKqHIbnxiOb+/jEb/BffFlUBH0wCTEjoqbS3YgAOCsXQ8D/JOJ
         4ed2x5xLQW4GuoY/UXQWu7JylozSJAilnfJJu6mKDPlRZbH1KFtjH0DYeozWqtdkg85n
         SWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=f0vJ7dJqmeDBpO2ycQyDdhVrJU5UFPQJZ6/m7ifFdEQ=;
        b=r8HzYgk8IhNEQKHCQBX1jdcf5qlSGHQOQKMU+rCiLaitvogJlBX4v/LBePE7Rwgi6g
         GfRoAVxp7QsW90DMhoY6630/uj02nQj321TAKa3omC5mEc259EInPRcZwFCeS3dmoS+4
         ZmgW+eaUNGCwDCXgEAloIrPfacZdS2hbrkTCjOHKYmmbRjylercjdrEA08ew694mplbZ
         Bigd8ha+W7IDiDI5/N0Sq63c0EAXpNPmVKDx+zobJFqbEuxcxbLuWlX0Jpd7++30zPNf
         uHTU06ko+I4VkQzZoqj/+Ofnw4mE1o3C6iqpnIM3I2Ad0X7lj2MAnt6679Ekgr8XyQfo
         s2+g==
X-Gm-Message-State: AOAM5301EKHis4TNZvTNKOjRb4sziBZTG9siZe/s3phRwhbdN7zzNhPr
        nrXUB0xUL8iMnMVpYI8esJ4=
X-Google-Smtp-Source: ABdhPJwo7tflGJwBHLZ97nEN6z1WeMc7ZpgD5qJpSojHrLjncC391rmd8Op09L8WgjeHb1eKtU1vjA==
X-Received: by 2002:a1c:40a:: with SMTP id 10mr6549447wme.61.1600285916174;
        Wed, 16 Sep 2020 12:51:56 -0700 (PDT)
Received: from [192.168.1.133] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y6sm34789305wrt.80.2020.09.16.12.51.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 12:51:55 -0700 (PDT)
Subject: Re: [RFC v6] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200916110144.17568-1-colomar.6.4.3@gmail.com>
 <48f5e6ed-f288-151a-50dc-bcf396ff34b6@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <6555a55b-54d1-5c8c-848f-fac64e765b45@gmail.com>
Date:   Wed, 16 Sep 2020 21:51:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <48f5e6ed-f288-151a-50dc-bcf396ff34b6@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael

On 2020-09-16 21:24, Michael Kerrisk (man-pages) wrote:
 > Hello Alex,
 >
 > On 9/16/20 1:01 PM, Alejandro Colomar wrote:
 >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >> ---
 >>
 >> Hi Michael,
 >>
 >> Changelog since v4:
 >>
 >> - Comment "See also" about yet undocumented size_t
 >> - Simplify header ordering
 >> - Curate See also
 >> - Remove incorrect headers
 >>
 >>
 >> On 2020-09-15 23:30, Michael Kerrisk (man-pages) wrote:
 >>> Okay. Time to nit pick:-). Do not be too dispirited,
 >>> I think we started with some of the most difficult types...
 >>
 >> I was waiting for it :-).
 >>
 >>> I soppose what I meant is that POSIX defers to the C standard
 >>> in the cases where they overlap, and I'd expect that the set
 >>> of headers specified in the C standard and in POSIX might be the
 >>> same, but where they're not, I suspect the list of POSIX headers
 >>> would always be a superset of the C headers. So, just make a
 >>> single list of those headers, followed by 3 and 4 (merged)
 >>
 >> See updated comment in the page.
 >
 > It looks good to me.

It still doesn't convince me.

Let's see how the standards define the types:

C has a ¿main? header that defines a type
(for example, for 'time_t' it would be <time.h>;
for 'size_t' it would be <stddef.h>),
and then there may be other headers that shall also define the type
(for example, 'size_t' is also defined in <stdio.h> and others).

POSIX does more or less the same:
It has a ¿main? header where the type is defined
(for 'time_t' it is <sys/types>,
which as you can it sometimes see differs from C),
and then there may be other headers that shall define the type.

I think we should differentiate those 1 or 2 headers
by putting them the first ones,
and then the rest could be merged together
(and maybe use a comma or something to differentiate them?).

Such as (for 'time_t'):

Include: <sys/types.h> or <time.h>, or <sched.h> or <sys/msg.h> or
<sys/select.h> or <sys/sem.h> or <sys/shm.h> or <sys/stat.h> or
<sys/time.h> or <utime.h>

However this still doesn't convince me...
I don't see a perfect way to express that.

Also, should we put a dot at the end of the includes?

Include: <sys/types.h> or <time.h>¿.?

 >
 >>> I suggest dropping the pages marked XX. The remaining can serve
 >>> as the (commonly used) exemplars of APIs that use this type.
 >>
 >> Done.  I don't have experience enough to subjectively decide
 >> which ones should stay and which ones we should drop, so...
 >>
 >>> Okay, now I look closer at these lists. How have you determined them?
 >>
 >> I kept references to all APIs that use the type in the prototype.
 >>
 >> And for the headers list:
 >>
 >> I started reading the contents of the headers, but all I had seen
 >> did actually define the type, so I guessed that all the remaining
 >> grep appearances would also define the type.  Clearly, I guessed wrong.
 >
 > What I did was read the specifications of the .h files in the
 > standard, to see which ones said "shall define type XXX".
 > I think that's the way we should go, at least for types that
 > are in the standards.

Yeah, that's what I wanted to do.
But I was too lazy, and at some point stopped doing it :(

I'll do it from now on...

 >
 >>> <sched.h> only defines time_t since POSIX.1-2008, as far as I can
 >>> tell! I'm not sure how/if we want to represent that detail.
 >>
 >> I added a Notes section for that type.  You like it?
 >
 > Yes.
 >
 >>> But size_t is not in this page (yet). Is it in your tree?
 >>
 >> Not yet.  In my tree I didn't forget to comment it, though.  As you can
 >> guess, It'll be the next type to document, and then ptrdiff_t.
 >>
 >>> Today I learned: size_t is in C99, but ssize_t is not!
 >
 > [...]
 >
 > I have no comments on the page. It looks great! I'm happy to
 > merge it now, unless you have something you want to change first.

See above.  That's the only thing that I don't fully like.

Also there are a few cosmetic fixes that I have in my tree already.

And, I trimmed a bit more the 'sigval' See also section.

Here's what I already applied to my tree.  I will show you the diff as
it is very short so you have an idea off what is coming:

$ git diff types_draft_6
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8fc827332..ffdcc9793 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -38,7 +38,7 @@ system_data_types \- overview of system data types
  .\"                    1) The header(s) that shall define the type
  .\"                       according to the C standard,
  .\"                       and
-.\"                       the header that shall define the type
+.\"                       the main header that shall define the type
  .\"                       according to POSIX,
  .\"                       in alphabetical order.
  .\"                    2) All other headers that shall define the type

(inline comment): Actually this still doesn't convince me, as I already 
said.

@@ -81,11 +81,15 @@ Data passed with a signal.
  Conforming to: POSIX.1-2001 and later.
  .IP
  See also:
-.BR rt_sigqueueinfo (2),
-.BR sigaction (2),
  .BR pthread_sigqueue (3),
  .BR sigqueue (3),
  .BR sigevent (7)
+.\".IP
+.\"See also the
+.\".I sigevent
+.\"structure and the
+.\".I siginfo_t
+.\"type in this page.
  .TP
  .I ssize_t
  .IP

Those 2 man pages aren't very related to this type,
and instead are related to 'siginfo_t', which contains a member of
type 'union sigval'.
So I prefer to refer to 'siginfo_t',
and there we will refer to those pages.


 >
 > Thanks,
 >
 > Michael
 >

Thanks,

Alex
