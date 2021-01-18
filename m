Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 953642FA4EE
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:39:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393297AbhARPiW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:38:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393229AbhARPiP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:38:15 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A3C7C061573
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:37:35 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id d22so7048325edy.1
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N5gegHkXtsVO7Z6l7mG0YN89h4wGs2tQVUF6zxGR1gE=;
        b=UmCme3jHBeuJGjgXptWLgQ8vo6hp5OGXkQKaMu8rWhXjDFB1UBP48EFG2bzn0Ex5zh
         V/FltM1m52SVfzlBuTC8rg4B8OWPF90lFeu58/2oUYD2koPSPseW3GxsnH88jLD2zf9Q
         w254599ZUS9lbMpIYu1kSsdyXXYFSPcVuFPElZbqTd9xhF/3p+WoZhQBV39ekLFXjfX3
         oA7Jo7xCFPSH9jkw1ErGRuyvynQ2bUJMwmf214CaQ8C/E+vvhwc5p+7lFe0wINWzf493
         hKSfKoCHP7kuqL04dvQ4EtDkN5BLsiDAo66Mwk99qFCp9HJNCUg/AWIoivx770sQjyP7
         lacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N5gegHkXtsVO7Z6l7mG0YN89h4wGs2tQVUF6zxGR1gE=;
        b=rVH/FkR99pGLs+0Cq4V5oLNaObeSqZ+tb5d5RYORFBdi5tllfqMW+/WVOr+91gqpvW
         LeIcdjaio5C/dzqyyfj7xprpExlB6dlDAhABvwzN0pWRXiu2L0rEa2t2+Y5VqNmy2Nae
         IjSqVka2LVnBAiQCcEgoF7d80aKkIgTxMI+W9TU6gq4rZnBpAF8tPdXKM1wdGMFB0/g4
         armrvkDnyDthUfn690hQXrT+zuic+068mnzLQ4f6QNJMnEOD5rHS1NqNP2ZOUH6q3fi/
         jtmPoBbBAnL17LyiSCcN5W3B6zqs1Ho7HVe18HpMJa/MzRBbOl4BqFkI2ZZjsUSUlz+C
         x9hw==
X-Gm-Message-State: AOAM531NkYlS7kSCiRY7+jmStDXxEeJo0R+skUDuhyPLXbt0h2Seo4kz
        cv5/+QiqAvptj8ZfGndWpRk=
X-Google-Smtp-Source: ABdhPJyA67kA+MlmySUKdxLAxM7F0qMIvaRdrG3SEw2M8Hep8YROuijFTw6BeHUwOtivOYeQ85POPw==
X-Received: by 2002:a50:8b61:: with SMTP id l88mr50847edl.250.1610984254223;
        Mon, 18 Jan 2021 07:37:34 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id c24sm8541697edt.74.2021.01.18.07.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:37:33 -0800 (PST)
Cc:     mtk.manpages@gmail.com, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: Ping: [PATCH v4] system.3: Document bug and workaround when the
 command name starts with a hypen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
 <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <99aa567a-67d5-d7c1-ddf3-de4141f3c1ff@gmail.com>
Date:   Mon, 18 Jan 2021 16:37:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e6ee2473-9096-0d6e-b793-c90e03bc6dfc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> Ping!
> 
> And now I noticed a typo in the subject:
> s/hypen/hyphen/

D'oh! I missed that.

In cases like these, where there's already two amendments to the patch,
perhaps better is a new complete patch, rather than a ping :-).

Thanks,

Michael


> On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>>> man-pages bug: 211029
>>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>>
>>> Complete workaround
>>
>> Maybe a bit more readable:
>> Complete workaround example
>>
>>
>>> (it was too long for the page, but it may be useful here):
>>>
>>> ......
>>>
>>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>>> $ cc -o system_hyphen -x c - ;
>>> #include <stdlib.h>
>>>
>>> int
>>> main(void)
>>> {
>>>     system(" -echo Hello world!");
>>>     exit(EXIT_SUCCESS);
>>> }
>>>
>>> $ ./system_hyphen;
>>> Hello world!
>>>
>>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>>> Cc: Florian Weimer <fweimer@redhat.com>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>
>>> D'oh!
>>>
>>>  man3/system.3 | 20 ++++++++++++++++++++
>>>  1 file changed, 20 insertions(+)
>>>
>>> diff --git a/man3/system.3 b/man3/system.3
>>> index 753d46f7d..ead35ab30 100644
>>> --- a/man3/system.3
>>> +++ b/man3/system.3
>>> @@ -255,6 +255,26 @@ are not executed.
>>>  Such risks are especially grave when using
>>>  .BR system ()
>>>  from a privileged program.
>>> +.SH BUGS
>>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>>> +If the command name starts with a hyphen,
>>> +.BR sh (1)
>>> +interprets the command name as an option,
>>> +and the behavior is undefined.
>>> +(See the
>>> +.B \-c
>>> +option to
>>> +.BR sh (1).)
>>> +To work around this problem,
>>> +prepend the command with a space as in the following call:
>>> +.PP
>>> +.RS 4
>>> +.EX
>>> +    system(" \-unfortunate\-command\-name");
>>> +.EE
>>> +.RE
>>>  .SH SEE ALSO
>>>  .BR sh (1),
>>>  .BR execve (2),
>>>
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
