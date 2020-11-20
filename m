Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 724AB2BB89F
	for <lists+linux-man@lfdr.de>; Fri, 20 Nov 2020 22:57:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728186AbgKTVzH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Nov 2020 16:55:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728175AbgKTVzH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Nov 2020 16:55:07 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F51AC061A04
        for <linux-man@vger.kernel.org>; Fri, 20 Nov 2020 13:55:07 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id x13so3740468wmj.1
        for <linux-man@vger.kernel.org>; Fri, 20 Nov 2020 13:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k0NfOQCQdWIzZJNa7Amby1ebsfs+v4Y4IQt5YpP2FmQ=;
        b=D/Nvok0RxhIeRelU6JCPM7GdCMAvqZCPbtnxBXbBr80wi8jastX7+2/C07VfXCa0IF
         EZqeQcQ4k94YPCh1/m1Pkd+fWCEzMbL3EMywGNWH1NM1dSjN9fXjWqhlMtpncVHuokHe
         Nn6XPT6Oe97wOW5MiZyKcCqFeg13DiyM16/Nzm3NPVvxgz4SHO0cFh1sC94L0bwU0TOl
         2v21+ALOMgq2UkSeiysQk2Ic9djMxmlXeZLOU0xavM9rbaSI89fBserTxGwMb4ZPZrpx
         1eXs5HMNA0AGmC0BFB9jYepItYmrJMvQkEx4LY7w1j9prIvQC5oQqUmBxXqJ//+5JHY+
         pfRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k0NfOQCQdWIzZJNa7Amby1ebsfs+v4Y4IQt5YpP2FmQ=;
        b=Ma1SuzV9P7/Ic23s9uyJn2+mqc8UWRziW33sV/ccsQaR0CN9GBfzI7dfs5MwqIipLK
         EZmOiiIwH6p7zMYUbapKRnJTnOZWq6dcAfldJpXJSmbxwvVziEpbj7XtTWRtHon/3Nn9
         Pcq8DYhM0k2vlMMlGEt9s62ZrtLQSIO0b7n1n61TFEU6O/oyoh2dOM3wo0cFB5FEHFWs
         b6Nq6Y+sTb9HnTLYP8r9HxCxpzXgXdl1ZIee3bG3Nhvj1gbBSyZ5fWXf0SliIhkn0Rhm
         jQbU4QIAiCJafzbOqGdGd6IvimUZcDwK93d9ZjZSdF8Z8hABJtSxl4mM+Y7y63UpA9qe
         XEEA==
X-Gm-Message-State: AOAM531wKkz0pPHc1WwXRblvkpQ+Q8IAsWOhlUmrU+d+VyJhT+3fb3IX
        hf4fKzOL8WKWT+9rXuov8GK5physx5yWcQ==
X-Google-Smtp-Source: ABdhPJxUAyRkE3gLkcrodKyudemPeyncrtaj++OhINklz5dijgsmkSmRjachyOWjEpuVOuG2weMG0A==
X-Received: by 2002:a7b:cf26:: with SMTP id m6mr12798668wmg.121.1605909305603;
        Fri, 20 Nov 2020 13:55:05 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id q12sm6274184wrx.86.2020.11.20.13.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 13:55:05 -0800 (PST)
Subject: Re: [PATCH] capget.2, execve.2, readv.2, socketpair.2, utime.2,
 utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201119174656.131249-1-alx.manpages@gmail.com>
 <a578e7e0-8359-6257-1534-25d54a637017@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a0006cce-d243-4804-5f47-cd467aa5eb6f@gmail.com>
Date:   Fri, 20 Nov 2020 22:55:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a578e7e0-8359-6257-1534-25d54a637017@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

As you said in other patches about global changes,
I completely agree in that such changes,
if automated in scripts,
are very dangerous.

That said, yes, internally there's something in my head
telling me to do such changes when I see them.

And yes, one good reason to fix them is that consistency
simplifies scripting a lot.

So I tend to slowly fix some of them
as I see them while fixing similar things.
But I try not to add so many of those fixes that
I would distract from the main fix.

The rationale for why some an not other fixes in this specific case:
I first grepped to find the files the files that contained
{.IR var [x]}:
$ grep -rn "^\.I[ |R].* \\[.*\\]" |sort
(BTW, I forgot to add that script to the commit msg,
I'll add it in the next version).

And then inside the file I ctrl+F'd '[' to find them.
That showed me a few more lines than I searched for,
and found a few more fixes to do.
They weren't completely unrelated,
so I added them to the same patch.
That's why I only changed some of:
>> -(26) \fIstartcode\fP \ %lu \ [PT]
>> +.RI "(26) " startcode "  %lu  [PT]"
They showed up while finding branckets.

However... if you feel that's still too much for a patch,
I completely understand it, so I can separate the changes.

Please, tell me your thoughts.

Cheers,

Alex


On 11/20/20 10:27 PM, Michael Kerrisk (man-pages) wrote:
> Hi ALex,
> 
> On 11/19/20 6:46 PM, Alejandro Colomar wrote:
>> The main fix is {.IR var [x]} -> {.I var[x]}
>>
>> There were around 20 entries of the former,
>> and around 360 of the latter.
> 
> Yes, that's a worthwhile consistency fix. Thanks!
> 
>> While fixing that, I came across some obvious srcfixes,
>> which I also added to this patch.
> 
> But when you do this:
> 1) It make it harder to review your patch in order to spot
> any mistakes.
> 2) You mix multiple types of change into one patch, and I 
> want to take one type of change, but not the other. In particular,
> changes of the form:
> 
> [[
> -.IR wword
> +.I word
> ]]
> 
> create what I consider to be needless churn. Yes, the .I form 
> is sufficient, but the .IR form is not harmful, and I really
> don't went global edits that make these sorts of changes,
> because of the churn.
> 
> Notwithstanding the above, I would have applied this patch,
> except for a problem noted below. In the next version of the patch,
> I'd be much happier if you made just the {.IR var [x]} -> {.I var[x]}
> change.
[...]
>> -(26) \fIstartcode\fP \ %lu \ [PT]
>> +.RI "(26) " startcode "  %lu  [PT]"
> 
> With this change, now the long list is using two different forms,
> since you change just some of them. I'm not sure why you did that,
> but again, if you wanted to make a change like this (to the whole
> list), then it should be split out into another patch. But, again,
> it feels a bit like unnecessary churn, since the resulting output
> is unchanged. (By the way, I'm not 100% against global edits that
> don't change the rendered output. For example, and argument for
> such a change might be that by improving consistency in the
> page sources, it makes future scripted edits easier.)
> 
> [...]
> 
> Thanks,
> 
> Michael
> 
> 
> 
