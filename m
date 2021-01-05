Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BFE22EABD8
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 14:25:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbhAENY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 08:24:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728591AbhAENYm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 08:24:42 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B62CC061793
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 05:24:02 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id j16so31050106edr.0
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 05:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wKCqg0tpzUsf29lVtAE/pmumhS0N8fz1+R6ykoqgYU8=;
        b=OWAj9KFUIOwywY2nnGel5h19tNSkh75wiXcXCKzWHXkXFPi4akZykXK/ZtUqJZqWyV
         c1qU1rUz/Jsv9kaf0z4SlsOF+b8dtUyF3re0QH07iqy93vv62HYb7/Y0LyfAcsjW04N9
         qWFZobh5l37cJdGOPPm3YDLrbN3p1kT8tgY5KtOR4fdb7ZzmrmWhBcWhT9ar20lKlBOw
         P67e4OWJY4qKXJMT3ANvEvKC7hphhSEbkqRF2+XRX16anyqkvbCmaRqH215XTUYae9tl
         AohqrPbYXvPWAaseu6GSwYdMgG+AIvKe3JUnwIKWx20MCP3ItP9ORdxQwllnIHe1PVYe
         ScfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wKCqg0tpzUsf29lVtAE/pmumhS0N8fz1+R6ykoqgYU8=;
        b=sMMrRiDvw/WNAONYrUwvOYeqVDTYErenm5o1LnD4sBe0OLbwrvYUgubVMjk0rxCiM2
         jqyDysBRGv6A34au3QcP2oQY6CQGVqBfYoOb+BN3g7lO39juWc49QNyR23ieW5UJfUF3
         LKXJCPGUoBAcMEC5CndLQuJrrq7Ems4ZpSFy+B6+ewjhDGn1oZqFJC0hk8EHFh2SY354
         KdR4uRMD3ntOu4rjApwIavtt8x77l9U65xsUBWtsWh8t6uSkMNuVjHKHD47TajUw92ae
         +tVa4UKAv0mb7XPStRm4BG/hB5HGKB8h8fVv5KWJsaRDdqVdhduO20kyEaWex0idW436
         TX0w==
X-Gm-Message-State: AOAM533QiqK9+k7oCKzSlpbPS4Wsj4oRi2r9vbTJvYy+0H6pCZMzdsDt
        5wbyefNq3hgn/MUrLj4b1P+R/a6Z5hs=
X-Google-Smtp-Source: ABdhPJzQIo+Z62RpPvta1R6p8T6WDfzkwfuzmnXLukjXXbwOhAr4JI27GBFSNUbjCC3zvn+qyhr30w==
X-Received: by 2002:a05:6402:352:: with SMTP id r18mr74479921edw.373.1609853041172;
        Tue, 05 Jan 2021 05:24:01 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id cb21sm45768097edb.57.2021.01.05.05.23.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 05:24:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [RFC] system.3: Document bug when the command name starts with a
 hypen
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210104151333.70955-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <29958ae4-64a7-8c0a-c15e-9f7293d5e555@gmail.com>
Date:   Tue, 5 Jan 2021 14:23:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210104151333.70955-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/4/21 4:13 PM, Alejandro Colomar wrote:
> man-pages bug: 211029
>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
> 
> glibc bug: 27143
>  https://sourceware.org/bugzilla/show_bug.cgi?id=27143
> 
> When a command name starts with a hyphen (which is a valid one),
> the shell's '-c' option interprets the command name as antoher
> option.  This can be workarounded by prepending the command name
> with a space, as Ciprian pointed out in his bug report.

Huh! Well that's weird, of course. So, I think
something should be said in the manual page, but perhaps
a little less than below. Having a command name that starts
with a '-' is a weird corner case, and it's unsurprising
(if unfortunate) that it buys you trouble.

> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
> Cc: Florian Weimer <fweimer@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Ciprian,
> 
> If you report a bug to the Austin Group,
> please CC linux-man@vger.kernel.org,
> so that we can add the URL and update the BUGS section
> if it is ever fixed.
> 
>  man3/system.3 | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/man3/system.3 b/man3/system.3
> index aef40417a..5a9318dec 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -250,6 +250,39 @@ are not executed.
>  Such risks are especially grave when using
>  .BR system ()
>  from a privileged program.
> +.SH BUGS
> +./" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
> +./" [glibc 27143](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)

Better add the Austin bug URL mnow.

> +If the command name starts with a hyphen,
> +.BR sh (1)
> +interprets the command name as an option,
> +and the behavior is undefined
> +(See the
> +.B \-c
> +option in
> +.BR sh (1).).

s/.)./.)/

> +This behavior is mandated by POSIX.
> +To work around this problem,
> +prepend the command with a space as below:

It's a funny workaround :-). But it seems to work
in bash, dash, and zsh. Interestingly. (t)csh doesn't
even have the problem.

I don't think we need the example below in the manual page 
(see my comments above), although you could include it in 
the commit message.

Thanks,

Michael

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
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
