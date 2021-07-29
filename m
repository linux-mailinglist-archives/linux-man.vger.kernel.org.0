Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99F2C3DAFF5
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 01:39:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234448AbhG2XjU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 19:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234443AbhG2XjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 19:39:19 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C92C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:39:14 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b7so8863487wri.8
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V5mtg7GFAdOQ+azUvwJrQGo9AKG7xV736pNUWK9jwo4=;
        b=A/N9KUXoAev3mDfzppMU8HOUu/kNpBuOchNad1A7HBlv5X/huJRw0jTFvITTFB2m5K
         cRZ9GeCwnzscrWjngzrXGWJlJGGTHGWXRv/tDoBzOPr7P+mv0eb2GblB2ZyVr6WuQ0lg
         BBrZmwsPTn37E0/H2RPRYZBVqNI0QF7bdxXrEnwON1AgxUs9Y6PUG9I4ZWqpWbxFxmHE
         Yzb5+OzlWuMelx7Sat0TXOZeQQLfwprF6owuwiN0HZKfMKy8u1V6XAwWj/qvWUuGcI5D
         ZXbqt8w3pVzojNwSzNltK8GaJssObvZL6yj7jRl89+MYSbowEAzGStlpa291+QcMLLlq
         sdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V5mtg7GFAdOQ+azUvwJrQGo9AKG7xV736pNUWK9jwo4=;
        b=DDU991BibBhnnElVL0o/XiVXzKgdK+xibjD2m+1I3/WoZB2e86pHqQB5J/0F6TWk6K
         aFb50Teum8ErmaOgXqaU/jl1FnwLmL5wIpUm8ftd7pSZX0gHoWLjWO8pR7Sj5aXXDqUQ
         aJC1V6FJ31Fbra5A7QaNG60lUd0/hI91wBonreXkOZ5yXeCjdGwJu0nXLpNJKKAmLcZb
         MEVBYsKhanoCq498IhmrBktGMJhTKhG+6d6Zdlc0JhQTjOjYSG1rimslQL/9+6BNhBuH
         w0NLuDzeQxJhEteKkDvrc8Fxsfq868KtlOHoKvTxZ4TdXC/m2kTa/IA2vvxqLFwmdlhA
         CTHg==
X-Gm-Message-State: AOAM533ZOmM6Xe4g2eNHoO+cC33j4DaKLdLAFEs4Kc/KXLdiaVMTK6LL
        ScZCjc7M0KvoZAsYHjreAGFE+kbY0ho=
X-Google-Smtp-Source: ABdhPJyFrqRoFv8aK52EAtPAAXYMWLZ8PLc3qSCK2sA3FNH/QREhsAe7UvjZjDOXuxGzUbv5ggpUjw==
X-Received: by 2002:adf:d1cd:: with SMTP id b13mr7493746wrd.200.1627601953505;
        Thu, 29 Jul 2021 16:39:13 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f2sm4611754wrq.69.2021.07.29.16.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 16:39:13 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2,
 TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
Date:   Fri, 30 Jul 2021 01:39:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729173118.pud4xucnt4kncvol@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/29/21 7:31 PM, Pali Rohár wrote:
> 
>>> +.IR "<asm/termbits.h>" .

Is that the header that the user should include?
I don't know.  I typically avoid 'asm/' includes, but maybe in this case 
it's the correct one.  Shouldn't the user maybe include <linux/termios.h>?

user@sqli:/usr/include$ grep -rn 'struct termios {'
asm-generic/termbits.h:12:struct termios {
user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
asm-generic/termios.h:12:#include <asm/termbits.h>
user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
linux/termios.h:6:#include <asm/termios.h>
user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
user@sqli:/usr/include$


>>> +These ioctls are not supported on all architectures.
>>> +.IP
>>> +.BI "TCGETS2	struct termios2 *" argp
>>
>> Please follow the same style as in the rest of the page:
>>
>> .TP
>> .B TCGETS2
>> Argument:
>> .BI "struct termios2 *" argp
>>
>> Unless there's a good reason not to.
> 
> Few lines below in this file is:
> 
> .IR "struct termios\ *" .
> .IP
> .BI "TCGETA	struct termio *" argp
> .IP
> .BI "TCSETA	const struct termio *" argp
> .IP
> .BI "TCSETAW	const struct termio *" argp
> .IP
> .BI "TCSETAF	const struct termio *" argp
> 
> Therefore I used same style for TCGETS2...
> 
> So, how should I format this part to be consistent?


Hmm, sorry, I didn't see those.
So there's a mix in the file.
The more correct form is the one I used, so please use that one (the one 
with .TP)


Thanks,

Alex


> 
>>> +.IP
>>> +.BI "TCSETS2	const struct termios2 *" argp
>>> +.IP
>>> +.BI "TCSETSW2	const struct termios2 *" argp
>>> +.IP
>>> +.BI "TCSETSF2	const struct termios2 *" argp
>>> +.PP
>>> +The following four ioctls are just like
>>> +.BR TCGETS ,
>>> +.BR TCSETS ,
>>> +.BR TCSETSW ,
>>> +.BR TCSETSF ,
>>> +except that they take a
>>>    .I "struct termio\ *"
>>>    instead of a
>>>    .IR "struct termios\ *" .
>>>
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
