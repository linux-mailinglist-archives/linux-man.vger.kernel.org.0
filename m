Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4B723DB42C
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 09:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237630AbhG3HEz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 03:04:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237600AbhG3HEz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 03:04:55 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FF66C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 00:04:50 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id f18-20020a05600c4e92b0290253c32620e7so8248441wmq.5
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 00:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zn1qoKLxstIcgtD7mh9RL8w6A/LlfMjBOz5uwzPiI+0=;
        b=OTTZwzYpGcjhCiqP6NoHIYbnYq//f8/EIy1IRIYAdlQKMKfjfqw4CsbrdMFTAZcI+L
         TlTG7u7+3eHy6iqDJn0Oz9NtZkoirwVaUARAMOF/tC+h5LzyWcOBuvNVcrGMP5ZTWu7C
         Q1FqNuuttbuFqOSlaBrWKvjktnmI2HM14K+HVN4IycjODWaxnxVwDnq3Ol9oXQHdMXFb
         vzLDn0zKfy6/1CADYC0k0Z76J9+blw4sJHzVrHlL4wsNdYQnkE8szUEVLo93qd9lOHf6
         kG82do0LmhFQUqAj4jB6ICm4LMJxUHvni7CcvsxoJyPNif9J/rzE8h0+L4XRmNKh0cuA
         vmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zn1qoKLxstIcgtD7mh9RL8w6A/LlfMjBOz5uwzPiI+0=;
        b=CAAKk2oesSo07kbHKFDkYrrpc8paPgL/mv1er+4H8Wxw55yGqk2auhbiipqMGqFNx2
         E5OlkB9k90YQoyoXCZ3c9etwLUho8xYu+k1cOba4Y0sed8gvleJRtX1lO8DDSd0MsxYC
         7PV8sAjR55Z+q7c18hk0DydrjC5puvxcZM3wkd4P3RImHZJvlQCb9fSjTNn9wW0odMs2
         fNXr302Y1qdJNHAEIgtzNba8yTn+wVApFOm6C66SDSEQhTS5zDFGZECx3HHBQilFB8WP
         YE0aQ2gK/rbXarpFJshyr+v0FaoA+syEbwj8o+cK9z+/fbA9xQ5VGI+polUIjd8ITAM8
         YmDQ==
X-Gm-Message-State: AOAM531hI71d/mJ4wzxk6VK00IDeVLvkktb9Q6Hgc11iAGU/YxHCqN6Y
        raH/I4fBbz8YPf3L7SlD5Jo=
X-Google-Smtp-Source: ABdhPJwuCJ54UQFRoHGDzzUtjqyMM9yo+6FedvjVz5PawBJb7OMMj5Rt328opSSBxkMvA7ANfoZBLw==
X-Received: by 2002:a05:600c:4651:: with SMTP id n17mr1241971wmo.36.1627628688746;
        Fri, 30 Jul 2021 00:04:48 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id q63sm1018605wme.36.2021.07.30.00.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 00:04:48 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2,
 TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Glibc <libc-alpha@sourceware.org>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
 <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
 <20210730000915.d6ieqiuqah4tjjxf@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <35947a18-65b8-6c31-2715-42f9a5c2c6f7@gmail.com>
Date:   Fri, 30 Jul 2021 09:04:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730000915.d6ieqiuqah4tjjxf@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

CC += glibc

On 7/30/21 2:09 AM, Pali Rohár wrote:
> Hello!
> 
> On Friday 30 July 2021 01:39:11 Alejandro Colomar (man-pages) wrote:
>> Hi Pali,
>>
>> On 7/29/21 7:31 PM, Pali Rohár wrote:
>>>
>>>>> +.IR "<asm/termbits.h>" .
>>
>> Is that the header that the user should include?
> 
> Yes.
> 
>> I don't know.  I typically avoid 'asm/' includes, but maybe in this case
>> it's the correct one.  Shouldn't the user maybe include <linux/termios.h>?
> 
> Problem is that you cannot include <linux/termios.h> together with
> <sys/ioctl.h>. It cause redefinition of symbols and compile errors.
> 
> And without <sys/ioctl.h> you cannot call ioctl() function which
> basically means that you cannot use TCGETS2 (as it is ioctl).

Seems fair.

> 
> Probably this is a bug in glibc header files...

I CCed glibc just in case they want to comment.

> 
> So currently it is needed to include <asm/termbits.h> file to use
> TCGETS2 ioctl. I'm not sure if it is "correct", but it is the only
> possible option for now about which I know (unless you want to
> copy+paste structures and macros from that file into your program, to
> avoid inclusion of asm/* files).

Re copy&paste: no thanks :)

> 
> If you want, I can send a patch for ioctl_tty.2 example section with
> simple C program to show how to use TCGETS2/TCSETS2 ioctl.

Great!  Please CC glibc in the patch.

> 
>> user@sqli:/usr/include$ grep -rn 'struct termios {'
>> asm-generic/termbits.h:12:struct termios {
>> user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
>> x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
>> user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
>> asm-generic/termios.h:12:#include <asm/termbits.h>
>> user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
>> x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
>> user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
>> linux/termios.h:6:#include <asm/termios.h>
>> user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
>> user@sqli:/usr/include$
>>
>>
>>>>> +These ioctls are not supported on all architectures.
>>>>> +.IP
>>>>> +.BI "TCGETS2	struct termios2 *" argp
>>>>
>>>> Please follow the same style as in the rest of the page:
>>>>
>>>> .TP
>>>> .B TCGETS2
>>>> Argument:
>>>> .BI "struct termios2 *" argp
>>>>
>>>> Unless there's a good reason not to.
>>>
>>> Few lines below in this file is:
>>>
>>> .IR "struct termios\ *" .
>>> .IP
>>> .BI "TCGETA	struct termio *" argp
>>> .IP
>>> .BI "TCSETA	const struct termio *" argp
>>> .IP
>>> .BI "TCSETAW	const struct termio *" argp
>>> .IP
>>> .BI "TCSETAF	const struct termio *" argp
>>>
>>> Therefore I used same style for TCGETS2...
>>>
>>> So, how should I format this part to be consistent?
>>
>>
>> Hmm, sorry, I didn't see those.
> 
> Ah, now I see that Michael one hour later (after I sent this patch)
> fixed above style to another. See commit aceee9e827e6.
> 
> But changed it to another new style:
> 
> .RS
> .TS
> lb l.
> TCGETA	\fBstruct termio *\fPargp
> TCSETA	\fBconst struct termio *\fPargp
> TCSETAW	\fBconst struct termio *\fPargp
> TCSETAF	\fBconst struct termio *\fPargp
> .TE
> .RE
> 
>> So there's a mix in the file.
>> The more correct form is the one I used, so please use that one (the one
>> with .TP)
> 
> So, could you check with Michael which style to use? Because now there
> are 3 different (yours, Michael's and the one which was there before)
> and I'm really not sure what is correct...

Sorry, I was also confused, as I had Michael's version, and didn't see 
the table he reformatted, which I now understand was what you were doing 
(in the old format).  So if what you wrote corresponds to what Michael 
reformatted, please use Michael's new format (the table).

Thanks,

Alex

> 
>>
>> Thanks,
>>
>> Alex
>>
>>
>>>
>>>>> +.IP
>>>>> +.BI "TCSETS2	const struct termios2 *" argp
>>>>> +.IP
>>>>> +.BI "TCSETSW2	const struct termios2 *" argp
>>>>> +.IP
>>>>> +.BI "TCSETSF2	const struct termios2 *" argp
>>>>> +.PP
>>>>> +The following four ioctls are just like
>>>>> +.BR TCGETS ,
>>>>> +.BR TCSETS ,
>>>>> +.BR TCSETSW ,
>>>>> +.BR TCSETSF ,
>>>>> +except that they take a
>>>>>     .I "struct termio\ *"
>>>>>     instead of a
>>>>>     .IR "struct termios\ *" .
>>>>>
>>>>
>>>>
>>>> -- 
>>>> Alejandro Colomar
>>>> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
>>>> http://www.alejandro-colomar.es/
>>
>>
>> -- 
>> Alejandro Colomar
>> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
>> http://www.alejandro-colomar.es/


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
