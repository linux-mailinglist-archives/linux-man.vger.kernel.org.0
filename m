Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EEFC3C3621
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbhGJSke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhGJSkd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:40:33 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 174F3C0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:37:48 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id l4-20020a05600c4f04b0290220f8455631so770257wmq.1
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WS5r14ds1YZ2deOxY4cfgyJ5xT5XtirW6pqab21QntQ=;
        b=KcX0YTqQPsR5DO6c799wN585szdAP7Xdu8v0Lh56+Oj/ABQHQSnE7w/z/HjS57uXbb
         0HEmKA46tUz6Wh2b+WKkMZm6kxBJH5Z7kqjqv56KMKqjIsHVBVY1wCJIVIW0Fwf7p2qR
         YGgtB0rMpMPRE0rThVe8T+FOw7U09184GPGVLOS2YRnZle+K18mvLngc5VNlODeQ3vaw
         nPGncTvzeC9TE7a4cJ2EU6wnRJV8obb0Vg+uxqTDJdxWHZ2MWzFBZdZPzD26rubE5txm
         T51vPu7UKW+Bdnq8Amnoe9/rr7OqUtrQ+g+Oo/3BAJteZqaxCApwc6zc6PvOjbF9PxYz
         8mSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WS5r14ds1YZ2deOxY4cfgyJ5xT5XtirW6pqab21QntQ=;
        b=fNx/OYa83TsvuwS8S1LEIy9GwL/DFrIM0tn/9yGSXqzqPTWJ9zurgaeYEEuG8rUi00
         QERdy2B8UjKJ9toXHlhKq9PgtphjTIH40AX7HyzT2w52hpZiM0FF+f0hEuECyKP8xv9M
         Dk7sHqExj/3Y8EK6p8KVXMivLaXU+v8B5DJoLsPdP6rt75gmEg8cteR1F4ciTQcj1PBj
         rKdAIXZr7qxS1XSEaZeq5lVnoRkw2o5KTiF/wyKyVk2VB5S+MIUAy3btbKN4MGpn2yxk
         M7UuDi58E/z05Xdzfeyo6PoinEMkjxRay8uaAoMqNH5ffEQZNz7k0Tw5R3hN44i3DUFI
         62Gg==
X-Gm-Message-State: AOAM533Qp47bpq7BSPxXOyZys1Xh2V9I55t2+12CSdsp2heDyajYBTr3
        GQyyyHQA95iSHqc5qq56P4o=
X-Google-Smtp-Source: ABdhPJxL+8kbfpWWP/k1w1sybKEvQTnFZcEPSudNUkZatI9zcGQU84m+Rm4qkcG9QoCG2/mGitRV4g==
X-Received: by 2002:a7b:c0c1:: with SMTP id s1mr44109635wmh.70.1625942266723;
        Sat, 10 Jul 2021 11:37:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y66sm8264058wmy.39.2021.07.10.11.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:37:46 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3bf01638-1d53-82f9-d66b-6e4365ef1ff2@gmail.com>
Date:   Sat, 10 Jul 2021 20:37:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 7/9/21 10:44 PM, Jonny Grant wrote:
> 
> 
> On 07/07/2021 17:57, Alejandro Colomar (man-pages) wrote:
>> On 7/7/21 3:31 PM, Jonny Grant wrote:
> [snip]
>>>
>>>
>>>
>>> Maybe the man page could just state:
>>>
>>>
>>> NOTES
>>>
>>> The calling strlen with a NULL pointer is undefined behavior.
>>
>> Okay.  I agree that should probably be documented.
>> I'm surprised it's not documented already.  Not even in the glibc manual (or I couldn't find it).
>>
>> There are a lot of functions that should get this addition, though.  I'd like to patch them all at once.  I'll try to find a list of functions documented in the man pages and that have nonnull in the oimplementation.  If I don't come back soon with a list, please ping me.
>>
>> Thanks,
>>
>> Alex
>>
> 
> Perhaps the NOTES section on strlen(3) could also give a hint that strnlen would be better to use than strlen if the max buffer size is known.  Likewise suggestion the same for wcslen(3) could suggest wcsnlen(3) where the buffer size is know.

Agreed.

I applied the following patch.

Kind regards,

Alex

---
From a9ab4fdd530486450b84137dce1d869f6cbfcbe0 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <alx.manpages@gmail.com>
Date: Sat, 10 Jul 2021 20:34:59 +0200
Subject: strlen.3, wcslen.3: Add recommendations for safer variants

Reported-by: Jonny Grant <jg@jguk.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strlen.3 | 6 ++++++
 man3/wcslen.3 | 9 ++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/man3/strlen.3 b/man3/strlen.3
index dea4c1050..fb734db1b 100644
--- a/man3/strlen.3
+++ b/man3/strlen.3
@@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
+.SH NOTES
+.SS strnlen(3)
+If there is a known buffer size,
+it is probably better to use
+.BR strnlen (3),
+which can prevent some cases of buffer overrun/overflow.
 .SH SEE ALSO
 .BR string (3),
 .BR strnlen (3),
diff --git a/man3/wcslen.3 b/man3/wcslen.3
index af3fcb9ca..868f748a8 100644
--- a/man3/wcslen.3
+++ b/man3/wcslen.3
@@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C99.
+.SH NOTES
+.SS wcsnlen(3)
+If there is a known buffer size,
+it is probably better to use
+.BR wcsnlen (3),
+which can prevent some cases of buffer overrun/overflow.
 .SH SEE ALSO
-.BR strlen (3)
+.BR strlen (3),
+.BR wcsnlen (3)
-- 
2.32.0



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
