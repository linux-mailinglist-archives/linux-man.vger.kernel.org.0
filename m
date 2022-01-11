Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5F848B58C
	for <lists+linux-man@lfdr.de>; Tue, 11 Jan 2022 19:17:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242453AbiAKSRj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jan 2022 13:17:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242138AbiAKSRh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jan 2022 13:17:37 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAFB7C06173F
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:17:36 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id s1so34602205wra.6
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kq+Xc8qkUCNaNC2lEJajy6k/7ogCVvc61MujGf13Xyo=;
        b=k1s3s9Z9P2OYY1pY3jQ6iFIXYiDp71U1ocCDDUp7FG8k90naFHyJnAfwGzKovb+XER
         BxnAU7t02WoBkin91SBUNHTWzpeG0meqY1Zv7jQJzdA0FrpK7irG1d3zMyr6RhgcJmKN
         iPRaP6oQPyxBE+EWbqnziPFjrzy7MZLBSGD1l9/AVaPjdFeqXKwMh3y+R60eJPZIFZb9
         +FsjOlm5hRIVzkH3FpUbBYqx/LFCsqjSwAcHYJxMdhDW/mFULXz/Os0FMiye1bJTYiin
         CW5hG5ZT+InYCGv2O5EwKs0Ff2oWT9Kpdf3PnCp7LN9F0NyTsgl87dm/E1Kb9J9P6F4U
         W2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kq+Xc8qkUCNaNC2lEJajy6k/7ogCVvc61MujGf13Xyo=;
        b=pwt3NnHQqJ6AlZXiepP3/KBSX04wi4Bzafu1MoLofVwuzpBUh6W0AZFmU0d47qLnB5
         wdI8I210hMmYrdFgsDFGQu4JWW6QsxK/PYXqh2iP7efehh8q0rn7c3PczLOx8np3qBwB
         FYJBKpWno3qK4ovxKlhU2HD2IcF0vAGOUHJV+JoTyfNR29qFf/4EyyVVw1CKBd1IvzcN
         8lBMqEukvhIa7tt7DT0IcASy9NOG4OHgFy1v3UvQ8SSpnXdMrbrtuM6KUfHIHQe9jpZs
         ifeeE+YlSM5rNp2duSmtSdPzhKzQIKVT9Q3n/gz+cJXvPKwQoPo6aQK2hcwrPnzOGqLa
         /RhQ==
X-Gm-Message-State: AOAM5322eMBCiIIZAVERnEa+tNftFoWPfxUyyGktuvE3Z2sBK5dg+RQy
        CJhx+zFazuAMn5GhApysfhs=
X-Google-Smtp-Source: ABdhPJxJftTw5E0riGAbVInZ9w9gmQ/ffc9/rNdXvzC9n/gUPkPlDpMV0aCy2nDNohDpSND/TUDV0g==
X-Received: by 2002:a5d:548a:: with SMTP id h10mr4873329wrv.550.1641925055451;
        Tue, 11 Jan 2022 10:17:35 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n7sm2352812wms.46.2022.01.11.10.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 10:17:34 -0800 (PST)
Message-ID: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
Date:   Tue, 11 Jan 2022 19:17:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] pkeys.7: ffix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220109162131.oi7qv4shvk2swsa2@tarta.nabijaczleweli.xyz>
 <738c0961-b640-cad3-524e-79f7903aacdc@gmail.com>
 <20220110184945.x74zfpgt7enrrqta@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220110184945.x74zfpgt7enrrqta@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On 1/10/22 19:49, наб wrote:
> Hi!
> 
> On Mon, Jan 10, 2022 at 07:13:48PM +0100, Alejandro Colomar (man-pages) wrote:
>> On 1/9/22 17:21, наб wrote:
>>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>>> ---
>>>    man7/pkeys.7 | 4 +---
>>>    1 file changed, 1 insertion(+), 3 deletions(-)
>>>
>>> diff --git a/man7/pkeys.7 b/man7/pkeys.7
>>> index 73ddcdc43..0fff6493f 100644
>>> --- a/man7/pkeys.7
>>> +++ b/man7/pkeys.7
>>> @@ -42,9 +42,7 @@ to change the contents of a register in order to remove write
>>>    access, or all access to a tagged page.
>>>    .PP
>>>    Protection keys work in conjunction with the existing
>>> -.BR PROT_READ /
>>> -.BR PROT_WRITE /
>>> -.BR PROT_EXEC
>>> +.BR PROT_READ / PROT_WRITE / PROT_EXEC

Ahh, sorry, EPARSE!

The existing code was wrong.  I read it as:
.BR PROT_READ " /"

>>
>> It's not that your formatting seems worse to me in this case.
>>
>> However, since we already have some kind of norm of writing each identifier
>> on its own line, I'll keep it like that for consistency.
>> That consistency also helps write scripts to find some patterns.
> The problem with that is, of course, that it looks, uh, Not Good
> (and that's already quite generous).
> Hardly a good use of a typesetting language.
> 
> There's two ways to go about this, both keeping one symbol per line
> (which, I do agree, is quite nice; the scriptability concern is somewhat
>   misplaced, IMO, given man(7)-imposed limitations, but.).
> 
> 1. Keeping the current /-based flow:
>       Protection keys work in conjunction with the existing
>       .BR PROT_READ / \
>       PROT_WRITE / \
>       PROT_EXEC
>       permissions passed to system calls such as
>     (This sets as my original patch: "isting [P_R]/[P_W]/[P_E] permiss".)
> 
> 2. Reorienting as a list:
>       Protection keys work in conjunction with the existing
>       .BR PROT_READ ,
>       .BR PROT_WRITE ", and"
>       .BR PROT_EXEC
>       permissions passed to system calls such as
>     (Which sets as "existing [P_R], [P_W], and [P_E] permissions".)

So, yes, either your 2nd option or fixing it to use " /" would be ok. 
Text tends to be more readable, I think.

For your second option, I'd avoid using ", and", and put and on its own 
line:

.BR AAA ,
.BR BBB ,
and
.BR CCC

rationale:

$ grep -rn '", and"' man? | wc -l
2
$ grep -rn "^and$" man? | wc -l
2447


Thanks!

Alex

> 
> IMO, 2 reads better. Thoughts? >
> наб

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
