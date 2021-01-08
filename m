Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39EA22EF2A0
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 13:45:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726482AbhAHMpC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 07:45:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726338AbhAHMpC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 07:45:02 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD29C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:44:21 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id a12so8854231wrv.8
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6O0iAHmZDAeFiv1M1UFFmCQrrRajAtxwchdqgkEwleE=;
        b=AYy72USVz3xg4sVwftaJUxVz4DmcJcUmDLjKp03SQ1b0DOuvfrX6Pzx560BqVW0KAp
         qIisNVr6abaoaOmOMEuKw62wNpr0GnVXHy/L5P8+KJrFxmTXGFH7SEMyyvnFGCHbeM2E
         gOa80yHUemt8dEIg4TYx1G8MxEgRBv/pIYaFop8WSKgfX6InRHWCWvqcR/m11AuNTpnp
         ctwq8wmEHm4Om+7xdPLiaKHkQ789XsAuNTXQCh42zJhdiVaeDrYu0JVSb2M/NhvKQnOB
         r3Gfq5E4Z0nszmDzr0ET+C+NdLQrBPQQ6T7ffximG0qoTq4iNYkBPh0jcRXf8VafhU7Z
         sX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6O0iAHmZDAeFiv1M1UFFmCQrrRajAtxwchdqgkEwleE=;
        b=SjFR2bG4ask7byosX85tkOeNye4oK94+nDKk0y3cK/JQ4YOoI/3BeQxNJ6cHcM0REB
         ZPOe8s8TlWg51cEI2nHOgGRCi1OhHrJ804S7aqL27KeMrB2mSqR8fL8T9LGfqgTWjVZ7
         Ye6WA5Kjo167OVY3Sy/m5NYsGJJ/e3ql4mytEFbnlmCx10CpwOQHuC1+eaH1MhnNi5UL
         VZv4+JBH8fOVUjnX+fZ8SLJTq5oJAAhC34ynzesQZCpKoj++atUx7jSXp91K6nfb1Okk
         Dsof00ValcHgkgLGMr0I36RlR0pWW9QzCtou2jvF1W/efL34NmCoocZa4f/bEGvlupZ3
         HXlQ==
X-Gm-Message-State: AOAM530DxnKBeUn8HJ+JhiA2j5q9m/MylUjSGFbqAY/lBnMa0pXbd/Mc
        Bbf0sodWypUn5ixnUtbzMJ3F6YNxP6c=
X-Google-Smtp-Source: ABdhPJzRsXz9IkxiaNFSFKeAY6TMkar07xa7Zxsc/Fu6Tf2bqrVbDg+MjThgDv08IlaU1ywddvLJXA==
X-Received: by 2002:adf:c145:: with SMTP id w5mr3571553wre.400.1610109859972;
        Fri, 08 Jan 2021 04:44:19 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id h9sm12173957wme.11.2021.01.08.04.44.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:44:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Escaping whitespace
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
 <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
 <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
 <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f601d952-414a-92be-51f7-069e6ba0fd5a@gmail.com>
Date:   Fri, 8 Jan 2021 13:44:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/21 12:49 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 1/8/21 12:29 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Thu, 7 Jan 2021 at 18:11, Alejandro Colomar (man-pages)
>> <alx.manpages@gmail.com> wrote:
>>>
>>> Hi Michael,
>>>
>>> On 1/6/21 1:51 PM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex,
>>>>
>>>> On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
>>>>> Hi Michael,
>>>>>
>>>>> While having a look at your latest commits,
>>>>> I saw that there's a bit of inconsistency in escaping whitespace
>>>>> (existing previous to the commit):
>>>>>
>>>>> Sometimes it's [!\ (], and sometimes it's [! (].
>>>>
>>>> Thanks for prodding me about this.
>>>>
>>>> Yes, it's inconsistent. And given the use of .nf/.fi
>>>> around the text blocks, escaping the spaces serves no
>>>> purpose. So I made a more radical fix; see commit
>>>> 5c10d2c5e299011e34adb568737acfc8920fc27c
>>>
>>> Nice!
>>>
>>> After your following commit (422d5327a88fa89394100bafad69b21e50b26399),
>>> I found that there are many such cases.  Just [[grep -rnI '\\ ' man?]]
>>> and you'll see.  Some of them are valid, but a lot of them aren't.
>>
>> Can you point me at some examples?
> 
> A sample:
> 
> man3/envz_add.3:61:.RI ( *envz ,\  *envz_len )
> << this should be two lines
> man3/xdr.3:184:.IR "long\ *" .
> << unnecessary
> man3/scandir.3:277:.IR "const void\ *" .
> << unnecessary and self-inconsistent
> man5/proc.5:1350:.RI ( "readelf\ \-l" ).
> << unnecessary
> man7/symlink.7:424:.I "rm\ \-r slink directory"
> << unnecessary and self-inconsistent
> man7/feature_test_macros.7:492:.IR "cc\ \-std=c99" ).
> << unnecessary
> man8/ld.so.8:313:.IR "readelf\ \-n"
> << unnecessary
> 
> Maybe I'm missing something?

So, the point here is that suppose a line break falls badly and we end up with

...................... const void
* ...............................

or

......................... readelf
-n ..............................

or
.............................. cc
-std=c99 ........................

or

.............................. 16
MB ..............................

The general problem here is that a small piece of a unit (usually at
the end) is broken onto a new line, making  things a bit more
difficult to read. That sort of thing is ugly, I think. That's
why there is the "\\ ".

Maybe there are a few redundant cases. And maybe there are a few
borderline cases. For example, maybe in envz_add.3, "\\ " is
not strictly necessary (though I'm inclined to keep it).

There may still be a few misplaced "\\ " escapes (I just fixed a few),
but many of these really are needed, I think.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
