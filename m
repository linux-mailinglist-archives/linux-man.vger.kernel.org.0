Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AED4E276D92
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 11:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbgIXJfk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 05:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726265AbgIXJfk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 05:35:40 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383DBC0613CE;
        Thu, 24 Sep 2020 02:35:40 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a17so3030363wrn.6;
        Thu, 24 Sep 2020 02:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mWKLykc7+L9z/a9rp1P82g18a9rKt5xttoYSDyDmlQE=;
        b=tF4wtKgn5eJMksNoBZwBoYjUPDvMxSARI8SkHvzlkXt8UNi/9TdgzFxeUInxnox162
         OFzLuORcjft/HFMGjiYaa39xYRr+9InNCfreVqFRqUxjqZiU3frPzxABS2uN4NqywLBl
         szLzHDUN5EFI1UhwvOxKAhxEhMJ1rhdzwJk8GZj6UPr3v1673W2ZTGCe+wfvEyGGB+dk
         P87QovhT0SWa3fKSG6zOFMGWrkO9Y9ZIXPaZ/YOG2RrcvulQQW/Xl2B8gNNN5zxokdYF
         m+dSZjimVwvSLX8wk+3kxco4GUgsngQeoSFbq4hs/1Xvcn21lYYIFZ/QLomxPZEN4duc
         0dxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mWKLykc7+L9z/a9rp1P82g18a9rKt5xttoYSDyDmlQE=;
        b=MIuEHOGLBOruZjm8zTKLQ3CtifmeAmxuI165ptgAicDb1Clds5TiykGaaE2/14+sGb
         XyIn0WvNl0rmMlDOpgTcZtGGroF7JURaHBh70+BVwd7sDAhvQL5t2KCfoc3bfrmsLCmv
         mIVVA0JWIm4ptA461rHsMwcy5oCAWJopDyq+82YsOYOo72TYrsLJKR5U2BL7a/W39nvM
         fd+taueyxxdHDDheuAmzrZGQtocYkJJnuWfheoTsrtttYVG2Q9uFGf8oOhm4z9XWUZ+y
         +Bg4ro3vQx/e/JyZxpjG7g4NM25lHNkv3P/Tb1tTt3G3NWfWmzspIxB6oLZ1V9yv1izN
         8c+A==
X-Gm-Message-State: AOAM531HYF0eAFZeKmrw62JAf/ous/Z7N/DY9/fSU7ekoL6aXDTT1c9e
        xqXrkah86DvYd2ui2bYgAo0J5aMLacI=
X-Google-Smtp-Source: ABdhPJylFOfpbrfb0kRYwh2LZgnvt+qiRfvk/mXnoZPdSHZxpXFoxKrDQxk8f0/eyPo+sEYGtIDmcw==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr4050517wrr.402.1600940138869;
        Thu, 24 Sep 2020 02:35:38 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q186sm2789334wma.45.2020.09.24.02.35.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:35:38 -0700 (PDT)
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Cc:     lnx-man <linux-man@vger.kernel.org>, linux-kernel@vger.kernel.org,
        Walter Harms <wharms@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
 <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
 <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <caf93f04-4d73-0377-8787-ad38d217795d@gmail.com>
Date:   Thu, 24 Sep 2020 11:35:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 2020-09-23 22:35, Michael Kerrisk (man-pages) wrote:
> On 9/15/20 12:03 PM, Stefan Puiu wrote:
>> Hi,
>>
>> On Fri, Sep 11, 2020 at 6:28 PM Alejandro Colomar
>> <colomar.6.4.3@gmail.com> wrote:
>>>
>>> Hi Stefan,
>>>
>>> On 2020-09-11 16:35, Stefan Puiu wrote:
>>>   > Hi,
>>>   >
>>>   > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
>>>   > <colomar.6.4.3@gmail.com> wrote:
>>>   >>
>>>   >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>>   >> ---
>>>   >>   man3/getgrent_r.3 | 2 +-
>>>   >>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>   >>
>>>   >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
>>>   >> index 81d81a851..76deec370 100644
>>>   >> --- a/man3/getgrent_r.3
>>>   >> +++ b/man3/getgrent_r.3
>>>   >> @@ -186,7 +186,7 @@ main(void)
>>>   >>
>>>   >>       setgrent();
>>>   >>       while (1) {
>>>   >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
>>>   >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>>>   >
>>>   > I'm worried that less attentive people might copy/paste parts of this
>>>   > in their code, where maybe buf is just a pointer, and expect it to
>>>   > work. Maybe leaving BUFLEN here is useful as a reminder that they need
>>>   > to change something to adapt the code?
>>>   >
>>>   > Just my 2 cents,
>>>   > Stefan.
>>>   >
>>> That's a very good point.
>>>
>>> So we have 3 options and I will propose now a 4th one.  Let's see all
>>> of them and see which one is better for the man pages.
>>>
>>> 1.-     Use the macro everywhere.
>>>
>>> pros:
>>> - It is still valid when the buffer is a pointer and not an array.
>>> cons:
>>> - Hardcodes the initializer.  If the array is later initialized with a
>>>     different value, it may produce a silent bug, or a compilation break.
>>>
>>> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>>>
>>> pros:
>>> - It is valid as long as the buffer is an array.
>>> cons:
>>> - If the code gets into a function, and the buffer is then a pointer,
>>>     it will definitively produce a silent bug.
>>>
>>> 3.-     Use sizeof() everywhere, and a magic number for the initializer.
>>>
>>> The same as 2.
>>>
>>> 4.-     Use ARRAY_BYTES() macro
>>>
>>> pros:
>>> - It is always safe and when code changes, it may break compilation, but
>>>     never a silent bug.
>>> cons:
>>> - Add a few lines of code.  Maybe too much complexity for an example.
>>>     But I'd say that it is the only safe option, and in real code it
>>>     should probably be used more, so maybe it's good to show a good practice.
>>
>> If you ask me, I think examples should be simple and easy to
>> understand, and easy to copy/paste in your code. I'd settle for easy
>> enough, not perfect or completely foolproof. If you need to look up
>> obscure gcc features to understand an example, that's not very
>> helpful. So I'd be more inclined to prefer version 1 above. But let's
>> see Michael's opinion on this.
>>
>> Just my 2c,
> 
> So, the fundamental problem is that C is nearly 50 years old.
> It's a great high-level assembly language, but when it comes
> to nuances like this it gets pretty painful. One can do macro
> magic of the kind you suggest, but I agree with Stefan that it
> gets confusing and distracting for the reader. I think I also
> lean to solution 1. Yes, it's not perfect, but it's easy to
> understand, and I don't think we can or should try and solve
> the broken-ness of C in the manual pages.
> 
> Thanks,
> 
> Michael
> 
> 

I was reverting the 3 patches I introduced (they changed from solution 1 
to solution 2), and also was grepping for already existing solution 2 in 
the pages (it seems that solution 2 was a bit more extended than 
solution 1).

While doing that, I've been thinking about it again...

There's a good thing about sizeof (even though I admit it's very 
insecure; and I never use it for myself), especially for the man pages:

I'll copy here a sample from getnameinfo.3 to ilustrate it:

[[
.EX
struct sockaddr *addr;     /* input */
socklen_t addrlen;         /* input */
char hbuf[NI_MAXHOST], sbuf[NI_MAXSERV];

if (getnameinfo(addr, addrlen, hbuf, sizeof(hbuf), sbuf,
             sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV) == 0)
     printf("host=%s, serv=%s\en", hbuf, sbuf);
.EE
]]

Here, it's clear to the reader that the 4th argument to 'getnameinfo()' 
is the size of the buffer passed as the 3rd argument.

If the function call was changed to

[[
getnameinfo(addr, addrlen, hbuf, NI_MAXHOST, sbuf,
             sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV)
]]

then it would be less clear, and the reader should go back and forth to 
see where that comes from.  In this short example it is relatively very 
clear, but in some examples it might be less clear.

Would you maintain your preference for solution 1?


Also... I am trying to patch glibc to provide a safe version of 
'nitems()', and shortly after they accept that patch (if they do), I'll 
send another one to add a safe 'array_bytes()' based on 'nitems()'.

Maybe the examples could use 'array_bytes()'; although is will be a 
glibc extension, and non-existent in any other POSIX systems, of course, 
which would make the examples non-portable, but still can be solved with 
a simple

[[
#if !defined(array_bytes)
#define array_bytes() sizeof()
#endif
]]

But again it complicates the examples...


I'm not sure at all about what should be done.  Please comment.  If you 
still prefer solution 1, I'll send you a patch with the revert + fixes, 
but I think it's very delicate.

Thanks,

Alex
