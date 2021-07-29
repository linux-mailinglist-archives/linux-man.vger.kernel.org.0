Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC9843DAEFE
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 00:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233798AbhG2Wez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 18:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233516AbhG2Wev (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 18:34:51 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18F08C061765;
        Thu, 29 Jul 2021 15:34:48 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id g15so8731231wrd.3;
        Thu, 29 Jul 2021 15:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NJzJaENW4uciUcPuU9DFkvO0zp/1wtimx8cQMwu5W6U=;
        b=qYPJN9HbCj2ZjhR2YzFMQXShSUL1641UI7LViNU4wHx/iDepkBq1WTEAE6ihu3hDCm
         XHEVuDMvxHuvjEvttU/AwKWjLYC08OtnOHGRkATZypIDur7GwTsjkb0ud6AWxq+RPi3o
         AMmTApNm7hhqGsnyEq88W2CcXWSU/JqsHU+XuZaDzra4m2+abbuPMW9Gvay1MBXtyL8i
         nlP69WhdD4piG5zyt1W0OST5QWCmESY1JsSDp9OD9aI+nIoIOw92Rls3pJZBmNfOH/Zv
         06KgweC4C9EosBu4i3UPCtWJ0vfoLG0JRORAMmI6C9gKHa96lBG07eMynJC9dyIVyUR/
         jnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NJzJaENW4uciUcPuU9DFkvO0zp/1wtimx8cQMwu5W6U=;
        b=fszpxgm4FgQw/mhFPSP3tfK+biVR///X7Rfv0B8/UFWtm9ig5USBeotZSKNjcID0B3
         AcQRYdV+/yR4yIwG0X6C7V6Z3fjz+wd1IJMML8SlKvixdygctpnLh2GYRoLkVPsaYJKd
         VQKJNnxIBw8KGbYehtKQ3vgGr5O8wddMkIlIngJ7A6BZ5wgCKHZD51Gs/pQ0cVDuBnsf
         4k6XUFB24ZirodeXE23ozeckUqwpz8iuCjG6D7fqJeIpOEi1WOKun84JW8l9IblTbKNH
         ZkcaK4wfOJQpHKPsEXCC248N5/MIp8WrIdHAhiZw6WeuvfsHM86eSvZtOqn/2HWrEZOE
         2hAw==
X-Gm-Message-State: AOAM533T9/nQHCnECt+N2pKxdKrnzY8Y2lJvlmkgkbur6mpqZeJ8gzdB
        Ldg3CyDJiUVcsvcAnQODS5k=
X-Google-Smtp-Source: ABdhPJxZh7Z+sPwIh0PZrDpuViudC0sz2H5Ao4UjWw2VDTOWPmqUtUQ8VN0lyJCUpG1UJRMHhg093g==
X-Received: by 2002:a5d:54c2:: with SMTP id x2mr7406305wrv.338.1627598086564;
        Thu, 29 Jul 2021 15:34:46 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e3sm5259084wrv.65.2021.07.29.15.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 15:34:46 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <20210729220129.ymfdnybbpvej4qck@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9e97c060-f9b9-07ed-6502-3e1f716f3f06@gmail.com>
Date:   Fri, 30 Jul 2021 00:34:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729220129.ymfdnybbpvej4qck@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden!


On 7/30/21 12:01 AM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> [regrets for the huge CC--those not interested in English/linux-man
> style issues can skip this]
> 
> At 2021-07-29T16:56:37+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/12/21 5:57 PM, Mickaël Salaün wrote:
>>> +For instance, one process's thread may apply Landlock rules to itself,
>>
>> s/process's/process'/
> 
> Many English language authorities would disagree with you, but I'll skip
> digging up citations to them because the Linux man-pages project's
> practice is already firmly in the other direction.
> 
> $ git grep "s's\>" | wc -l
> 322
> 
> Moreover, "process's" is extensively attested as most of those...
> 
> $ git grep "process's" | wc -l
> 320

My bad.  It was correct.  I was wrong.

I learnt today that the omission of "s" after the apostrophe is only in 
the case of plural nouns (I don't remember having learnt that at school :/).

I suspect I probably wrote that before learning that.

> 
> ...and a global change in the opposite direction from your
> recommendation is credited to mtk in the Changes.old file.
> 
> $ grep -B2 "process' " Changes.old |head -n 3
> A few files
>      mtk
>          s/process' /process's/
> 
> Finding examples of the opposite practice is complicated by the use of
> apostrophes as single quotes (these usually _aren't_ confounded by code
> examples, however, since it would be incorrect C language syntax to
> quote a string literal with them).  There are many such occurrences in
> Changes.old; I'll skip them.  The remainder are few enough that I'll
> quote them here.
> 
> $ git grep -E "s'(\s|$)" man*
> man2/adjtimex.2:Linux uses David L.\& Mills' clock adjustment algorithm (see RFC\ 5905).
> man2/move_pages.2:.\" FIXME Describe the result if pointers in the 'pages' array are
> man2/utimensat.2:.\" given a 'times' array in which both tv_nsec fields are UTIME_NOW, which
> man2/utimensat.2:.\" provides equivalent functionality to specifying 'times' as NULL, the
> man3/getaddrinfo.3:.\" 2008-02-26, mtk; clarify discussion of NULL 'hints' argument; other
> man3/printf.3:thousands' grouping character is used.
> man3/printf.3:the output is to be grouped with thousands' grouping characters
> man3/printf.3:.\" no thousands' separator, no NaN or infinity, no "%m$" and "*m$".
> man3/scanf.3:This specifies that the input number may include thousands'
> man3/xdr.3:the array elements' C form, and their external
> man3/xdr.3:the array elements' C form, and their external
> man5/elf.5:The array element is unused and the other members' values are undefined.
> man5/proc.5:under the default overcommit 'guess' mode (i.e., 0 in
> man5/proc.5:because other nodes' memory may be free,
> man7/bootparam.7:The Linux kernel accepts certain 'command-line options' or 'boot time
> man7/bootparam.7:parameters' at the moment it is started.
> man7/bootparam.7:The option 'reboot=bios' will
> man7/bootparam.7:A SCSI device can have a number of 'subdevices' contained within
> man7/hier.7:Users' mailboxes.
> man7/mount_namespaces.7:the root directory under several users' home directories.
> man7/uri.7:schemes; see those tools' documentation for information on those schemes.
> man7/uri.7:detects the users' environment (e.g., text or graphics,
> man8/ld.so.8:and do not apply to those objects' children,
> 
> Of the above,
> 
> 1. most are correct uses of the English plural possessive ("nodes'");
> 2. a few occur in comments, where they're fine if present as
>     commentary--if they're "commented out" chunks of man page source,
>     they should follow man page formatting rules in the event they
>     require "resurrection";
> 3. we see some uses of apostrophes as quotation marks; and
> 4. David L. Mills's name is marked as a plural possessive.  The
>     application of apostrophe+s to singular proper names ending in "s" is
>     a debated issue, and there is probably some room for personal
>     preference on the part of the bearer of the name.
> 
> Two side issues:
> 
> A. Regarding point 3, I'd say this illustrates advantages of using
> special character escape sequences like \[lq] and \[rq] for quotation.
> First, you will get paired quotation marks in UTF-8, PDF, and HTML
> output.  Second, you won't encounter false positives in searches like
> the above.  Third, you semantically enrich the content.  On the
> downside, adopting special character escapes would likely mean having to
> choose between U.S. and U.K. quotation styles[1].

I don't know what to do about this.  For searches, if you come up with a 
complex enough regex, you can get rid of quotations.  If we use 
different characters, then it will be really difficult to search for 
actual quotations (I don't have them on my keyboard ;).

But having nicer PDF/HTML pages would be an advantage.  However, I think 
most usage of man-pages is in the terminal, so I'd focus on the terminal.

What do you think about this?

> 
> B. Regarding another active thread we're in, I observe
> 
> man2/adjtimex.2:Linux uses David L.\& Mills' clock adjustment algorithm (see RFC\ 5905).
> 
> as another case where \~ recommends itself over "\ "; this isn't even a
> code example, and it illustrates the desirability of decoupling
> non-breaking from participation in space adjustment.

Agreed.

> 
> Popping the stack, have I persuaded you on the plural possessive front?
> :)

Yup :)

> 
> Best regards,
> Branden
> 
> [1] https://man7.org/linux/man-pages/man7/groff_char.7.html (search for
>      "the apostrophe")
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
