Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1206277010
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:38:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726701AbgIXLiN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:38:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbgIXLiN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:38:13 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E1D6C0613CE;
        Thu, 24 Sep 2020 04:38:12 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id i1so3054159edv.2;
        Thu, 24 Sep 2020 04:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q//eIaHpR2jiChaeMZr7jE+oQFwx6uWON4Dc1VDwVXI=;
        b=MOKRRNNXcFP1q1pDo5mv28okMHq0UD7P2dTEmshuzmQQRb5a1hYTtpb+yQLV4nyUNb
         ZL4OY5et6FB4pMk6F86uxthARGkJHQHI76g85OsdgkKdlUz0taXc2hIWJGeNpMNRS2gS
         kgjwT2S25uI6NYwydSRTwdknbH4AGE5k8ogVyQhTPfW1DhMFibfkl1ZtJGpli0q3zbaL
         GthFomX/6qX3zapl2/N3qVDW3zd2cptmMq2PhJDZBniuHDidXD8aNxZUW5KAy1cQY4so
         /NaIPqemi/mcTtNPNi4n54m3/+ZBw4iK5nVpTINOKGp4c7DVcQVe5KxV3KA46u9uPgeN
         1/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q//eIaHpR2jiChaeMZr7jE+oQFwx6uWON4Dc1VDwVXI=;
        b=LmSKcV92WA8XU0Zz8xHmsWuq0IBjsAH3BOhRY8ts0HjuWm8DO+4tDV76ZqhS1wEYLj
         Uemh1PKd4REv4nekDRDnJwoLz6v8Wl+1wsthGYsZYmPdq4mg87U6v2dSRzMBTiWEnXHk
         cTpxxhKg3MmjwqYB4OKNl6ZUlJpjwNoUtYbXik07Ni4WbBaximDMRk3vyXW2eiIWVYPQ
         OJAaBilkJ1O3V0Cowwv3B8/d3QHBdsp0eGSg8Ke9S/Qf+S5mXGjCryDtgDhltWvpfcoG
         Pz0j/b4uBdvGs321YOuSrtGtM6i6W0Y+Qpvre0vzwlRqYBD4Kgqm3cvGQoMiTyLIhTt0
         KP/A==
X-Gm-Message-State: AOAM532ELwWFmSZDKSZ9TXdT/3oQoG04NUad5elt57RPacOzrRJDNx7f
        kxL2KFdId+W+o663nmt2SlL40zLqVh8=
X-Google-Smtp-Source: ABdhPJyIaqIkh9PxzQ1cXr3+rHR4rlP9z3vmXl304KmpXqTuLlT+hGIDocuha0tsgkwTpRAMGcnyRA==
X-Received: by 2002:a05:6402:1711:: with SMTP id y17mr510572edu.345.1600947491155;
        Thu, 24 Sep 2020 04:38:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id w19sm2284215edt.22.2020.09.24.04.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:38:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, lnx-man <linux-man@vger.kernel.org>,
        linux-kernel@vger.kernel.org, Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
 <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
 <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com>
 <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <40803904-63c6-9770-85df-fe39f430131a@gmail.com>
Date:   Thu, 24 Sep 2020 13:38:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 11:35 AM, Alejandro Colomar wrote:
> Hi,
> 
> On 2020-09-23 22:35, Michael Kerrisk (man-pages) wrote:
>> On 9/15/20 12:03 PM, Stefan Puiu wrote:
>>> Hi,
>>>
>>> On Fri, Sep 11, 2020 at 6:28 PM Alejandro Colomar
>>> <colomar.6.4.3@gmail.com> wrote:
>>>>
>>>> Hi Stefan,
>>>>
>>>> On 2020-09-11 16:35, Stefan Puiu wrote:
>>>>   > Hi,
>>>>   >
>>>>   > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
>>>>   > <colomar.6.4.3@gmail.com> wrote:
>>>>   >>
>>>>   >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>>>   >> ---
>>>>   >>   man3/getgrent_r.3 | 2 +-
>>>>   >>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>   >>
>>>>   >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
>>>>   >> index 81d81a851..76deec370 100644
>>>>   >> --- a/man3/getgrent_r.3
>>>>   >> +++ b/man3/getgrent_r.3
>>>>   >> @@ -186,7 +186,7 @@ main(void)
>>>>   >>
>>>>   >>       setgrent();
>>>>   >>       while (1) {
>>>>   >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
>>>>   >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>>>>   >
>>>>   > I'm worried that less attentive people might copy/paste parts of this
>>>>   > in their code, where maybe buf is just a pointer, and expect it to
>>>>   > work. Maybe leaving BUFLEN here is useful as a reminder that they need
>>>>   > to change something to adapt the code?
>>>>   >
>>>>   > Just my 2 cents,
>>>>   > Stefan.
>>>>   >
>>>> That's a very good point.
>>>>
>>>> So we have 3 options and I will propose now a 4th one.  Let's see all
>>>> of them and see which one is better for the man pages.
>>>>
>>>> 1.-     Use the macro everywhere.
>>>>
>>>> pros:
>>>> - It is still valid when the buffer is a pointer and not an array.
>>>> cons:
>>>> - Hardcodes the initializer.  If the array is later initialized with a
>>>>     different value, it may produce a silent bug, or a compilation break.
>>>>
>>>> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>>>>
>>>> pros:
>>>> - It is valid as long as the buffer is an array.
>>>> cons:
>>>> - If the code gets into a function, and the buffer is then a pointer,
>>>>     it will definitively produce a silent bug.
>>>>
>>>> 3.-     Use sizeof() everywhere, and a magic number for the initializer.
>>>>
>>>> The same as 2.
>>>>
>>>> 4.-     Use ARRAY_BYTES() macro
>>>>
>>>> pros:
>>>> - It is always safe and when code changes, it may break compilation, but
>>>>     never a silent bug.
>>>> cons:
>>>> - Add a few lines of code.  Maybe too much complexity for an example.
>>>>     But I'd say that it is the only safe option, and in real code it
>>>>     should probably be used more, so maybe it's good to show a good practice.
>>>
>>> If you ask me, I think examples should be simple and easy to
>>> understand, and easy to copy/paste in your code. I'd settle for easy
>>> enough, not perfect or completely foolproof. If you need to look up
>>> obscure gcc features to understand an example, that's not very
>>> helpful. So I'd be more inclined to prefer version 1 above. But let's
>>> see Michael's opinion on this.
>>>
>>> Just my 2c,
>>
>> So, the fundamental problem is that C is nearly 50 years old.
>> It's a great high-level assembly language, but when it comes
>> to nuances like this it gets pretty painful. One can do macro
>> magic of the kind you suggest, but I agree with Stefan that it
>> gets confusing and distracting for the reader. I think I also
>> lean to solution 1. Yes, it's not perfect, but it's easy to
>> understand, and I don't think we can or should try and solve
>> the broken-ness of C in the manual pages.
>>
>> Thanks,
>>
>> Michael
>>
>>
> 
> I was reverting the 3 patches I introduced (they changed from solution 1 
> to solution 2), and also was grepping for already existing solution 2 in 
> the pages (it seems that solution 2 was a bit more extended than 
> solution 1).
> 
> While doing that, I've been thinking about it again...
> 
> There's a good thing about sizeof (even though I admit it's very 
> insecure; and I never use it for myself), especially for the man pages:
> 
> I'll copy here a sample from getnameinfo.3 to ilustrate it:
> 
> [[
> .EX
> struct sockaddr *addr;     /* input */
> socklen_t addrlen;         /* input */
> char hbuf[NI_MAXHOST], sbuf[NI_MAXSERV];
> 
> if (getnameinfo(addr, addrlen, hbuf, sizeof(hbuf), sbuf,
>              sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV) == 0)
>      printf("host=%s, serv=%s\en", hbuf, sbuf);
> .EE
> ]]
> 
> Here, it's clear to the reader that the 4th argument to 'getnameinfo()' 
> is the size of the buffer passed as the 3rd argument.
> 
> If the function call was changed to
> 
> [[
> getnameinfo(addr, addrlen, hbuf, NI_MAXHOST, sbuf,
>              sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV)
> ]]
> 
> then it would be less clear, and the reader should go back and forth to 
> see where that comes from.  In this short example it is relatively very 
> clear, but in some examples it might be less clear.
> 
> Would you maintain your preference for solution 1?
> 
> 
> Also... I am trying to patch glibc to provide a safe version of 
> 'nitems()', and shortly after they accept that patch (if they do), I'll 
> send another one to add a safe 'array_bytes()' based on 'nitems()'.
> 
> Maybe the examples could use 'array_bytes()'; although is will be a 
> glibc extension, and non-existent in any other POSIX systems, of course, 
> which would make the examples non-portable, but still can be solved with 
> a simple
> 
> [[
> #if !defined(array_bytes)
> #define array_bytes() sizeof()
> #endif
> ]]
> 
> But again it complicates the examples...

(And I'd rather not...)

> I'm not sure at all about what should be done.  Please comment.  If you 
> still prefer solution 1, I'll send you a patch with the revert + fixes, 
> but I think it's very delicate.

Okay -- I agree with your perspective of the getnameinfo example.

So, I think maybe solution 1 is clearer sometimes, and other times
solution 2 is clearer. I don't feel too strongly about this
(because we can't solve the bugger problem, which is C).
I'm fine with not reverting the three patches you
refer to. I'm going to leave this decision to you :-)!

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
