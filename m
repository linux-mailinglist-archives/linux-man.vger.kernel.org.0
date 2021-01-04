Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2D32E9D19
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 19:33:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727566AbhADScw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 13:32:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727281AbhADScw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 13:32:52 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91936C061574
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 10:32:11 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 190so173805wmz.0
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 10:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wRLfSUeD5pLpI1767oGj7qqX6B7pL7AFq4QKf/6qmAc=;
        b=rTCqWNqYD9D0/slxB4GOsM4afMRdCYMrIVnmdfr/z/e5j3eNewBZLUlsIXRBDMlMoS
         mdL86AENsxR5DpCyIu4wGeO8QfuC/OOg5iMmGarD0HKZHV2x//wxM2kZik5Q2NQXRi/d
         cPcesRaKI+0gfqVexZ2Qb1of+PdXbGOSYMnjvEoCmbAauZXeQBx/D18Ak34Kln6IqCqZ
         gJYwEZZXSH8NDbp75Gmc7wMqk7qn8t75YNiA3XX7+d4uelTCdFR0C2AT9Tf9UeCc240x
         DX/Pn6tDrazpn49c9cXNdOlNksBjViBcTL3HUcub07tuhAHGgT3eofXLNcUw7RzxlaTP
         eJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wRLfSUeD5pLpI1767oGj7qqX6B7pL7AFq4QKf/6qmAc=;
        b=AbgF4dk4ei1Gb+2fkVH5UFoA+WziyFvVD4baBBIX+RzImsF/H0OwkEp5PJrH/+HyAH
         5uoUBekd6TplL8K8Bg7DZ6WGXhUKxZW/XrzHIHb/+XejXES7qjg4rp55Yfqf+CVu1z1g
         NuZmnc1F9cum0jFHp+b+INv8tSzJ3wW7VKdT/idlgftZUwUBfGd9RJwhohM+Vup4Kja/
         BhSJTZqPXBdVj5MY33kJi2IKTmp02z7yB0jF4BO1zGDD03Xqp5KXJVKaEG3VMsbj40vY
         14I4YwIPOxW0uDXFZWaAgcH4roA5W/KqsQOobhnEiC3/vUKgKPf2Cb3IB4jhOK14tJ0Q
         VzFw==
X-Gm-Message-State: AOAM530IvbGK9NWH9f5cgbjeKstF0GmnFdka+ixh3I5lVHzS3YTKmPwS
        LK6YC2BZ5oo7siWKo8Qt4SEOfoFoXnw=
X-Google-Smtp-Source: ABdhPJyQXMVC29FlTaYaB0aZV18AID1WPC6AIf6muLGhXau3q7jP4s7e3vek/M25g5U/loTaYqpgAw==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr191442wmj.148.1609785130407;
        Mon, 04 Jan 2021 10:32:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b83sm240743wmd.48.2021.01.04.10.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 10:32:09 -0800 (PST)
Subject: Re: [PATCH] system.3: Document bug and workaround when the command
 name starts with a hypen
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <CA+Tk8fykJjf=KzYjW7YMonnZ1qAdQJhqKDRrX0FNGyAYjSnkqg@mail.gmail.com>
 <20210104180420.74092-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5c64d9f9-5bef-ba6a-ac7c-b119ce61d731@gmail.com>
Date:   Mon, 4 Jan 2021 19:32:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210104180420.74092-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

See a few corrections below.

Cheers,

Alex

On 1/4/21 7:04 PM, Alejandro Colomar wrote:
> man-pages bug: 211029
>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
> 
> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
> Cc: Florian Weimer <fweimer@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/system.3 | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/man3/system.3 b/man3/system.3
> index aef40417a..0310d9a04 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -250,6 +250,40 @@ are not executed.
>  Such risks are especially grave when using
>  .BR system ()
>  from a privileged program.
> +.SH BUGS
> +./" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
> +./" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
> +./" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
> +If the command name starts with a hyphen,
> +.BR sh (1)
> +interprets the command name as an option,
> +and the behavior is undefined
> +(See the
> +.B \-c
> +option in

option to

> +.BR sh (1).).
> +To work around this problem,
> +prepend the command with a space as below:
> +.PP
> +.RS 4
> +.EX
> +/* system_hyphen.c */
> +
> +#include <stdlib.h>
> +
> +int
> +main(void)
> +{
> +    system(" -echo Hello world!");

\-echo

> +    exit(EXIT_SUCCESS);
> +}
> +.PP
> +.RB "$" " sudo ln \-s \-T /usr/bin/echo /usr/bin/\-echo;"
> +.RB "$" " cc \-o system_hyphen system_hyphen.c;"
> +.RB "$" " ./system_hyphen;"
> +Hello world!
> +.EE
> +.RE
>  .SH SEE ALSO
>  .BR sh (1),
>  .BR execve (2),
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
