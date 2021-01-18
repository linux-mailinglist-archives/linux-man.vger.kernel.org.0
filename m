Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 420C52FA51D
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:49:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405903AbhARPsL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:48:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393540AbhARPqT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:46:19 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8511BC061757
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:45:39 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d26so16890989wrb.12
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yr7ggmG1R6FkWOmyNjKx+3QZ/bALGg4zzb34p7nh9x4=;
        b=HbnB5l5kod45mjEUaZ5/NegI9PTvHepwModHB8B6uWkzeA5k1+7PHvD4GV8mJU0mqC
         q5U24R9mrVcVc0XB0uBJ8e2leZ8bYObmfxtg9/qQlOCXcbS/1+j4ndr3oC2kDy6f1hQ8
         DZKm5m0WEVkRaYXUfZ/g1sXImScFST9ljjDlgVwJTx8Ys9/Ex0XvSdjeIA15ugkhAH1J
         llUp49xFOmQxEWIyvfLr9itAweNvrd1icrK7RrTmyjw6Kvo5q6hHUmlLEppV9YqSBMiT
         YqU2470R5x0dBLngbbQP/1Pz5kuhbLRJXS2+QNYQ/zgEwWriv/tZTkPdQv1Tx0DHrUMV
         8bpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yr7ggmG1R6FkWOmyNjKx+3QZ/bALGg4zzb34p7nh9x4=;
        b=lXQL1m90hhw2jZcw7/Te1XCWFAXGaqRELYCaTUn22oAOGKQWlIBN3uZyR6S2fumoWR
         czboTyX97nXRBFYpUdDA+0PppE6pQTJvF67pplKMJA9Q8Gk+UrchkuPhpI31dUkNMXZI
         SGo2nk8rpD0D1h4I+50fSCzXsb9tz7GpHQCxQjauL2QypQPocSZUWdjBQlkH3N9OYNwU
         DpddQI184v2BElqySPS1TUehahRr+3vd83np4Oi2Yx8v5UD6CTmpk/I9gBQp0zgGJRIq
         tL3yK4/Stq8RTSYxwsZ/4xifLIPb5uYUoQXh4etGS+XATQEfm6RJnkX5HfJwZA3+2l0D
         CKgw==
X-Gm-Message-State: AOAM530h7LV9g9+O6EAAo5unLr5ijfRH+ZIJ9xB0TUgfbEhFJkX7iB+6
        pnkJ9JNIlZX9kxquqVoTIQ76rg5bbGg=
X-Google-Smtp-Source: ABdhPJxXUClRx12Dp1hdG83QKBuaCxRW/DMxkkp31SBwEi0xDb76x2vkAGfhRiGmbZZ8ah/uJ2P5ng==
X-Received: by 2002:a5d:5387:: with SMTP id d7mr48692wrv.417.1610984738361;
        Mon, 18 Jan 2021 07:45:38 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b3sm23839781wme.32.2021.01.18.07.45.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:45:37 -0800 (PST)
Subject: Re: Ping: [PATCH v4] system.3: Document bug and workaround when the
 command name starts with a hypen
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
 <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
 <99aa567a-67d5-d7c1-ddf3-de4141f3c1ff@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <bafaf8cf-7d9d-8bf4-a95c-653ac0049e7c@gmail.com>
Date:   Mon, 18 Jan 2021 16:45:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <99aa567a-67d5-d7c1-ddf3-de4141f3c1ff@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[removed some CCs]

On 1/18/21 4:37 PM, Michael Kerrisk (man-pages) wrote:
> On 1/18/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> Ping!
>>
>> And now I noticed a typo in the subject:
>> s/hypen/hyphen/
> 
> D'oh! I missed that.
> 
> In cases like these, where there's already two amendments to the patch,
> perhaps better is a new complete patch, rather than a ping :-).


Yup, I considered that for a moment...
Should've listened to myself :/

BTW, I don't understand why you ffixed to use .RS/.RE.

See
https://lore.kernel.org/linux-man/eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com/T/

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
>> On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
>>>
>>>
>>> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>>>> man-pages bug: 211029
>>>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>>>
>>>> Complete workaround
>>>
>>> Maybe a bit more readable:
>>> Complete workaround example
>>>
>>>
>>>> (it was too long for the page, but it may be useful here):
>>>>
>>>> ......
>>>>
>>>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>>>> $ cc -o system_hyphen -x c - ;
>>>> #include <stdlib.h>
>>>>
>>>> int
>>>> main(void)
>>>> {
>>>>     system(" -echo Hello world!");
>>>>     exit(EXIT_SUCCESS);
>>>> }
>>>>
>>>> $ ./system_hyphen;
>>>> Hello world!
>>>>
>>>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>>>> Cc: Florian Weimer <fweimer@redhat.com>
>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>> ---
>>>>
>>>> D'oh!
>>>>
>>>>  man3/system.3 | 20 ++++++++++++++++++++
>>>>  1 file changed, 20 insertions(+)
>>>>
>>>> diff --git a/man3/system.3 b/man3/system.3
>>>> index 753d46f7d..ead35ab30 100644
>>>> --- a/man3/system.3
>>>> +++ b/man3/system.3
>>>> @@ -255,6 +255,26 @@ are not executed.
>>>>  Such risks are especially grave when using
>>>>  .BR system ()
>>>>  from a privileged program.
>>>> +.SH BUGS
>>>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>>>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>>>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>>>> +If the command name starts with a hyphen,
>>>> +.BR sh (1)
>>>> +interprets the command name as an option,
>>>> +and the behavior is undefined.
>>>> +(See the
>>>> +.B \-c
>>>> +option to
>>>> +.BR sh (1).)
>>>> +To work around this problem,
>>>> +prepend the command with a space as in the following call:
>>>> +.PP
>>>> +.RS 4
>>>> +.EX
>>>> +    system(" \-unfortunate\-command\-name");
>>>> +.EE
>>>> +.RE
>>>>  .SH SEE ALSO
>>>>  .BR sh (1),
>>>>  .BR execve (2),
>>>>
>>>
>>
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
