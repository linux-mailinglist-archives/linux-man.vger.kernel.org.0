Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E958A2FA5DE
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 17:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404094AbhARQRe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 11:17:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406159AbhARP7L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:59:11 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5851FC061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:58:31 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id rv9so5577626ejb.13
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1Kj0QemMF+tjNOMNKzDW/PW0sjwYy0q2DilV05bnWLU=;
        b=k1Bky8Rqi5jRoMogEKNOjpRXevVNCoLTbISE590SbvgvnetdSyfc0ohBzl/FPCtZbx
         jFX+xXm572eMW8A4SqYy3rs0FOogygQxk9CAyeJP+aLrg5Gmd0aHzgvVCz4mF97pjGFE
         kXDnu8hjg0y7jH7zSp8Nz0jDUkoqMK2RAtZrZg2ag9XmO6VElCZ+FtF6uKg4JaG1JwVO
         B6sZEQSxIQ9EGK8BapQcPfNYc1CPC84xhDwFm86KVTFP6C7AS/yXorKl1Jz8aTJlFErS
         uWUUJVv3EvtNlKEb3Pf8IckJU9hXKNCEN7CW2T859LgDbgh0Y5lbuC3nIh8lEPC9AGpT
         qAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1Kj0QemMF+tjNOMNKzDW/PW0sjwYy0q2DilV05bnWLU=;
        b=ALNvvilqLWkXF1fgvHKd1rrcfqTUdM4UH7gZDRbElhiATJ1+6UBp59Stcnu4L+S6c/
         CWX39un9GQRA0BJIgO6Ay1KVwg2R55ph75jWX60SImNgV4ymXqjEVlsUlSyvbmh9RwLN
         01sQXpZ1SkhLBAUc1q+PDCr2t96xhH2LhsQazCgMrai/vXcMNfMJJBwlcI6Fs/pXBuke
         yBeTYeHP+HCBJAiFt3kNV7jvSzh/pP9EbjeGp7GMVF5VQnMPl0aX8T6aTGlLLjhcDRmg
         tRfYdY84rpUL/03dQMzH0reNo9wpnsWDKQTMp/SW8DzxPkNfP4eTCAqNvHbrvVD0X27T
         YkjQ==
X-Gm-Message-State: AOAM5310EshesZn8yZLmMkE82K8aF7hdgrwmvIbM8klxf6mFgxmDjHDs
        oVz6tkarZZnTIswDPlbPkP4MKGOeydc=
X-Google-Smtp-Source: ABdhPJyBhtc2Obcc9A++PFK8ec/BZj0mWeMA4iBm/Sku8J2pj8lzWoYD9u///wxNy4YIMGnFvbz+0Q==
X-Received: by 2002:a17:906:2681:: with SMTP id t1mr234353ejc.29.1610985509814;
        Mon, 18 Jan 2021 07:58:29 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id i22sm4586545ejx.77.2021.01.18.07.58.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:58:29 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Ping: [PATCH v4] system.3: Document bug and workaround when the
 command name starts with a hypen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
 <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
 <99aa567a-67d5-d7c1-ddf3-de4141f3c1ff@gmail.com>
 <bafaf8cf-7d9d-8bf4-a95c-653ac0049e7c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e1a37ef8-72b7-aeb5-dd0f-36bec4597a6a@gmail.com>
Date:   Mon, 18 Jan 2021 16:58:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <bafaf8cf-7d9d-8bf4-a95c-653ac0049e7c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/18/21 4:45 PM, Alejandro Colomar (man-pages) wrote:
> [removed some CCs]
> 
> On 1/18/21 4:37 PM, Michael Kerrisk (man-pages) wrote:
>> On 1/18/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> Ping!
>>>
>>> And now I noticed a typo in the subject:
>>> s/hypen/hyphen/
>>
>> D'oh! I missed that.
>>
>> In cases like these, where there's already two amendments to the patch,
>> perhaps better is a new complete patch, rather than a ping :-).
> 
> 
> Yup, I considered that for a moment...
> Should've listened to myself :/
> 
> BTW, I don't understand why you ffixed to use .RS/.RE.


Cause that's what we do around code blocks. See man-pages(7),
and all of the other pages :-).

The conclusion of the mail thread on this topic was that .RS/RE don't 
do correct relative indents, IIRC.

Thanks,

Michael


> See
> https://lore.kernel.org/linux-man/eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com/T/
> 
> Thanks,
> 
> Alex
> 
>>
>> Thanks,
>>
>> Michael
>>
>>
>>> On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
>>>>
>>>>
>>>> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>>>>> man-pages bug: 211029
>>>>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>>>>
>>>>> Complete workaround
>>>>
>>>> Maybe a bit more readable:
>>>> Complete workaround example
>>>>
>>>>
>>>>> (it was too long for the page, but it may be useful here):
>>>>>
>>>>> ......
>>>>>
>>>>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>>>>> $ cc -o system_hyphen -x c - ;
>>>>> #include <stdlib.h>
>>>>>
>>>>> int
>>>>> main(void)
>>>>> {
>>>>>     system(" -echo Hello world!");
>>>>>     exit(EXIT_SUCCESS);
>>>>> }
>>>>>
>>>>> $ ./system_hyphen;
>>>>> Hello world!
>>>>>
>>>>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>>>>> Cc: Florian Weimer <fweimer@redhat.com>
>>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>>> ---
>>>>>
>>>>> D'oh!
>>>>>
>>>>>  man3/system.3 | 20 ++++++++++++++++++++
>>>>>  1 file changed, 20 insertions(+)
>>>>>
>>>>> diff --git a/man3/system.3 b/man3/system.3
>>>>> index 753d46f7d..ead35ab30 100644
>>>>> --- a/man3/system.3
>>>>> +++ b/man3/system.3
>>>>> @@ -255,6 +255,26 @@ are not executed.
>>>>>  Such risks are especially grave when using
>>>>>  .BR system ()
>>>>>  from a privileged program.
>>>>> +.SH BUGS
>>>>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>>>>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>>>>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>>>>> +If the command name starts with a hyphen,
>>>>> +.BR sh (1)
>>>>> +interprets the command name as an option,
>>>>> +and the behavior is undefined.
>>>>> +(See the
>>>>> +.B \-c
>>>>> +option to
>>>>> +.BR sh (1).)
>>>>> +To work around this problem,
>>>>> +prepend the command with a space as in the following call:
>>>>> +.PP
>>>>> +.RS 4
>>>>> +.EX
>>>>> +    system(" \-unfortunate\-command\-name");
>>>>> +.EE
>>>>> +.RE
>>>>>  .SH SEE ALSO
>>>>>  .BR sh (1),
>>>>>  .BR execve (2),
>>>>>
>>>>
>>>
>>>
>>
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
