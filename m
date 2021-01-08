Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADB8D2EF3E7
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 15:29:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbhAHO3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 09:29:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725965AbhAHO3Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 09:29:25 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE335C061380
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 06:28:44 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id w5so9162119wrm.11
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 06:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TCfYnniR2PEvLkDwnW4SEgIg16wK7ORLQVom7PDKTFk=;
        b=enh+9TRw8VAuJAwNTxCVUfxzKwMrluDYxdbv3xCnFkZbp7Mjd8R0VCwyL3BxS92F9p
         tqamFFZnPXrMTuPWNijvRVZXA2VX+YtboJCVx36sYA7LUmT9Klb6P1AUzXnc+IzyUL98
         k8XWAAyeue9UShEE65f9+j6WrSyL7klHvUkhcLGi0TBcSXN1k6vacT5whnFycYhweY+y
         vVYwpzFowAAn38DHH6LH+UOPLQ3l1Zrvi16xGuUD0H1OcL3oxN3XWCbTT17LIMJxkJpy
         Cz5j/FPGWR38GuFXDAhEUv3gDtkR3mYpfZ1yMRW1h/7ELY/X8Cq9tN4zoLaCEgrRIp7h
         hN6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TCfYnniR2PEvLkDwnW4SEgIg16wK7ORLQVom7PDKTFk=;
        b=pYdESRE52WCiupPf4Gnq0P+cpbBydKdfXVtu6jvKQ1AQo02JNEsyS37oYVZ/JUSucU
         iWfPkMtmBPOyD4IViCnWYyz9yW/PPAEv+HLYz81pFTLKxPv4TSiq3r7DFwfxSX6X5I/H
         0QlU+pKCC1JtbwRx+3T3OEoeHz5n2fM/0XxAr45o3yeEwqnFX/QRJwtjnJvuNgklNreL
         PjMKxvn9KtRxiXWdDbZktLoM2x1oebAJ4/q+PNVXCPf+24M7xNIwU6+fpR5671LCR1q6
         pqd0c6KNxzWF4eYo4LvhlzR1pg0zu0IoIdsfJiE8bHuZrSk3H+kFZc7SkRryAey1xR2e
         YddQ==
X-Gm-Message-State: AOAM530/xJ8KtVYvvsLDANte5EVbmuGxcYas9iCG9AE0LqM3HeZPpqeV
        I7O3R3eQs2z5U8RHDNES4Wg=
X-Google-Smtp-Source: ABdhPJx7IpG6kIiLul4CAXFQRtT0TAPAOOiE5E0mOgjsJZ4hatEfeBqZOk8/OcUfJNimBLG+LJq+Sw==
X-Received: by 2002:a5d:53c9:: with SMTP id a9mr3822391wrw.188.1610116123515;
        Fri, 08 Jan 2021 06:28:43 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id u3sm15040805wre.54.2021.01.08.06.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 06:28:43 -0800 (PST)
Subject: Re: [PATCH v4] system.3: Document bug and workaround when the command
 name starts with a hypen
To:     mtk.manpages@gmail.com
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
Date:   Fri, 8 Jan 2021 15:28:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210108142209.61938-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/21 3:22 PM, Alejandro Colomar wrote:
> man-pages bug: 211029
>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
> 
> Complete workaround

Maybe a bit more readable:
Complete workaround example


> (it was too long for the page, but it may be useful here):
> 
> ......
> 
> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
> $ cc -o system_hyphen -x c - ;
> #include <stdlib.h>
> 
> int
> main(void)
> {
>     system(" -echo Hello world!");
>     exit(EXIT_SUCCESS);
> }
> 
> $ ./system_hyphen;
> Hello world!
> 
> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
> Cc: Florian Weimer <fweimer@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> D'oh!
> 
>  man3/system.3 | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/man3/system.3 b/man3/system.3
> index 753d46f7d..ead35ab30 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -255,6 +255,26 @@ are not executed.
>  Such risks are especially grave when using
>  .BR system ()
>  from a privileged program.
> +.SH BUGS
> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
> +If the command name starts with a hyphen,
> +.BR sh (1)
> +interprets the command name as an option,
> +and the behavior is undefined.
> +(See the
> +.B \-c
> +option to
> +.BR sh (1).)
> +To work around this problem,
> +prepend the command with a space as in the following call:
> +.PP
> +.RS 4
> +.EX
> +    system(" \-unfortunate\-command\-name");
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
