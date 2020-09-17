Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B550226D900
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726539AbgIQK2P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:28:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726200AbgIQK15 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:27:57 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2FC8C06174A
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:27:56 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g4so1468697wrs.5
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gBc6ykz1dP8+Rblebm4+3LWT/QpFfO46DKMepV8g1Zw=;
        b=nHrX9NMqCrHp1LO8oy7nJFNhzJnY1Zrec/aQz3Jd67B+BFmUNDPoQoyPEwBIXq/Chi
         XOBEHyurBgxsUzHabUh1PfwQpLB+Sq1nOJSFnbJtIrnyK4cCU5eSPaE5x4PdTOSy4Ul0
         Rd1OLfapqk/JqXtbZ0TNpyc2VPf2pq6y3Vg+I6mBq4yPwL8HmbYj2qjJ4jVUylC9bq1m
         r1JoByrqb6ONo92n3YPV/3DsZP349zLa/L8AL3r1AljXuLb3sSSkOww8q8E0pdns+iaJ
         Y4Ej0ZcEC6WyJQvnRm/qYCPKH1GMx5qyxplLLKoPBoLFdMrWC5HmlVueoVrQEIt2nAvB
         GpqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gBc6ykz1dP8+Rblebm4+3LWT/QpFfO46DKMepV8g1Zw=;
        b=rtJWx794lKNYMWX6r+JrYpPwVD1VPV6jt2vyn7IPbSrspmOqxh7LO/8yFHZObshtJ/
         7Hi1KLSUyUwxWPDAx3YD57GUqeHcfYJqV0hRcHohBPPL1GWTMwO2htzT8Y6ox45fsT2z
         gmVLAT/k/FFt8o+joRAzdTjGmtwfasXDMWHOoCLOsYJ3WL+GS/1OtB5qct5Z3fnnfKWz
         kTXWUPH4Nip0TBviWPeL/2vwvHNhx5lsrpeOuc5kWo9c/zkXthjbCztuPm7lv83k+Pjm
         JzUfQnQLxxkix3FEwIKekX/Gc16FgipaQJH/+RMTEy39D9ltZ7xgl2nJurNvM9b0stp5
         pg+w==
X-Gm-Message-State: AOAM531ggtm+QR68fUUf6xltlAI93yVkLor1rPNsrLGEddKfIeerOMqh
        OgWhOscuF5sDw59Dorren4kn8K1Kjr3WMg==
X-Google-Smtp-Source: ABdhPJyO1y9Jsf2Sva4t2yaHcVmW5tpz0yut/BkrTqjKjV7D9oc/LeRCsTzQ27lSLMla57ZzEs+Vzw==
X-Received: by 2002:adf:e58b:: with SMTP id l11mr33539991wrm.210.1600338475374;
        Thu, 17 Sep 2020 03:27:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z11sm38849397wru.88.2020.09.17.03.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 03:27:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, tg@mirbsd.org,
        fweimer@redhat.com, jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
Subject: Re: [RFC v6] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200916110144.17568-1-colomar.6.4.3@gmail.com>
 <48f5e6ed-f288-151a-50dc-bcf396ff34b6@gmail.com>
 <6555a55b-54d1-5c8c-848f-fac64e765b45@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <421e973f-038b-5401-7835-e65852936495@gmail.com>
Date:   Thu, 17 Sep 2020 12:27:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6555a55b-54d1-5c8c-848f-fac64e765b45@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/16/20 9:51 PM, Alejandro Colomar wrote:
> Hello Michael
> 
> On 2020-09-16 21:24, Michael Kerrisk (man-pages) wrote:
>  > Hello Alex,
>  >
>  > On 9/16/20 1:01 PM, Alejandro Colomar wrote:
>  >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>  >> ---
>  >>
>  >> Hi Michael,
>  >>
>  >> Changelog since v4:
>  >>
>  >> - Comment "See also" about yet undocumented size_t
>  >> - Simplify header ordering
>  >> - Curate See also
>  >> - Remove incorrect headers
>  >>
>  >>
>  >> On 2020-09-15 23:30, Michael Kerrisk (man-pages) wrote:
>  >>> Okay. Time to nit pick:-). Do not be too dispirited,
>  >>> I think we started with some of the most difficult types...
>  >>
>  >> I was waiting for it :-).
>  >>
>  >>> I soppose what I meant is that POSIX defers to the C standard
>  >>> in the cases where they overlap, and I'd expect that the set
>  >>> of headers specified in the C standard and in POSIX might be the
>  >>> same, but where they're not, I suspect the list of POSIX headers
>  >>> would always be a superset of the C headers. So, just make a
>  >>> single list of those headers, followed by 3 and 4 (merged)
>  >>
>  >> See updated comment in the page.
>  >
>  > It looks good to me.
> 
> It still doesn't convince me.
> 
> Let's see how the standards define the types:
> 
> C has a ¿main? header that defines a type
> (for example, for 'time_t' it would be <time.h>;
> for 'size_t' it would be <stddef.h>),
> and then there may be other headers that shall also define the type
> (for example, 'size_t' is also defined in <stdio.h> and others).
> 
> POSIX does more or less the same:
> It has a ¿main? header where the type is defined
> (for 'time_t' it is <sys/types>,
> which as you can it sometimes see differs from C),
> and then there may be other headers that shall define the type.
> 
> I think we should differentiate those 1 or 2 headers
> by putting them the first ones,
> and then the rest could be merged together
> (and maybe use a comma or something to differentiate them?).

Maybe a semicolon (;), just because more visually obvious?

> Such as (for 'time_t'):
> 
> Include: <sys/types.h> or <time.h>, or <sched.h> or <sys/msg.h> or
> <sys/select.h> or <sys/sem.h> or <sys/shm.h> or <sys/stat.h> or
> <sys/time.h> or <utime.h>
> 
> However this still doesn't convince me...
> I don't see a perfect way to express that.

Maybe not perfect, but I don't think we have to come up with
the perfect solution (yet). I think things are okay as you
propose them currently.

> Also, should we put a dot at the end of the includes?

Yes, perhaps a little tidier.

> 
> Include: <sys/types.h> or <time.h>¿.?

[...]

>  >>> <sched.h> only defines time_t since POSIX.1-2008, as far as I can
>  >>> tell! I'm not sure how/if we want to represent that detail.
>  >>
>  >> I added a Notes section for that type.  You like it?
>  >
>  > Yes.
>  >
>  >>> But size_t is not in this page (yet). Is it in your tree?
>  >>
>  >> Not yet.  In my tree I didn't forget to comment it, though.  As you can
>  >> guess, It'll be the next type to document, and then ptrdiff_t.
>  >>
>  >>> Today I learned: size_t is in C99, but ssize_t is not!
>  >
>  > [...]
>  >
>  > I have no comments on the page. It looks great! I'm happy to
>  > merge it now, unless you have something you want to change first.
> 
> See above.  That's the only thing that I don't fully like.
> 
> Also there are a few cosmetic fixes that I have in my tree already.
> 
> And, I trimmed a bit more the 'sigval' See also section.
> 
> Here's what I already applied to my tree.  I will show you the diff as
> it is very short so you have an idea off what is coming:
> 
> $ git diff types_draft_6
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 8fc827332..ffdcc9793 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -38,7 +38,7 @@ system_data_types \- overview of system data types
>   .\"                    1) The header(s) that shall define the type
>   .\"                       according to the C standard,
>   .\"                       and
> -.\"                       the header that shall define the type
> +.\"                       the main header that shall define the type
>   .\"                       according to POSIX,
>   .\"                       in alphabetical order.
>   .\"                    2) All other headers that shall define the type
> 
> (inline comment): Actually this still doesn't convince me, as I already 
> said.
> 
> @@ -81,11 +81,15 @@ Data passed with a signal.
>   Conforming to: POSIX.1-2001 and later.
>   .IP
>   See also:
> -.BR rt_sigqueueinfo (2),
> -.BR sigaction (2),
>   .BR pthread_sigqueue (3),
>   .BR sigqueue (3),
>   .BR sigevent (7)
> +.\".IP
> +.\"See also the
> +.\".I sigevent
> +.\"structure and the
> +.\".I siginfo_t
> +.\"type in this page.
>   .TP
>   .I ssize_t
>   .IP
> 
> Those 2 man pages aren't very related to this type,
> and instead are related to 'siginfo_t', which contains a member of
> type 'union sigval'.
> So I prefer to refer to 'siginfo_t',
> and there we will refer to those pages.

That sounds okay to me. I presume you plan to uncomment the
lines above that mention sigevent and siginfo_t, right?

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
