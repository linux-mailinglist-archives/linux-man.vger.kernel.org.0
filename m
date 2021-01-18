Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C72AD2FA4E4
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390816AbhARPhJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:37:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406038AbhARPgR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:36:17 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5583C061573
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:35:36 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id dj23so15470335edb.13
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PtGa5QymPLcil4t8nxYP6XeK5YGbA+Hx9YZhTuRz0aE=;
        b=tJu1B81aFoats88PfwMWSXf2JQDsMmz8EWqlWAcCesE8AAUlWSthb+C93UwMbVLBIG
         FmUA4gvP3B/Ky2vi1Yrs2tdxloUfKus58kaE4tqHXFziuShhz4Sg8lS9n4cOurEQRcz0
         G3kA+w2aD6IG3OrOltVljR05glzaXMVtZ+RQuXY6flb44wZmYuVdIg8TBHivjh0aYBpu
         8PrmV9H0a88C+LmCPfmsXTIMDlUPdXowmv5eWnOf8P/nQpxkzkaUV1rGX9u+ZyM7OXsJ
         pbWjUzknGJP37lqKrSzdIumnFRij4lgPXaC3XFIkSLCQPLpEtUoj0buIrWKCwv8Fka9W
         ZTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PtGa5QymPLcil4t8nxYP6XeK5YGbA+Hx9YZhTuRz0aE=;
        b=IyPSzxcyqxpUr0huin80t9SYI9OkN7UCJFpwMfQftUKj+3JVcnzcHnuImVARaX+r9H
         AvbbTcLD6/SQr1I778Z/0KlofyfLriAHUZxcDYLzHEfVgny+NLm9WH7+VlJjjmvRrJF9
         dydZ96X1E3QQa8Vq2frxuN2vok1QhgG1TuLz4Obw44IwsNDGmGNVvv9okAqGq5v9bu9d
         RvceZE/e8KBH13dJ9l/EylBDJQa17x+pQW2Vz6VSdGTuOkpH4hGsOPD7m/DfuO/3y9+h
         UI9ySscn7ssHsM16EpPEFrs2iCz6iHeoICdWF0pN9gA8Xxpcu9FFWl1FpxlHddWFVO0a
         wpiA==
X-Gm-Message-State: AOAM530nxPVyu1FIuDYFgjp0jNK5iJ6p/rpbNjudT5yL3YTywK2ta+qU
        4MveQPiZdhJNeXWMFz9O5ntb2HPs5bo=
X-Google-Smtp-Source: ABdhPJx6X1wtQgIjUHXVRwtJjQMYrYyyDhRJVFhq3SRxI6mY/Z1QNWqOdsywoBjuyFxtyeW+SCtb8w==
X-Received: by 2002:a05:6402:206c:: with SMTP id bd12mr65151edb.10.1610984135476;
        Mon, 18 Jan 2021 07:35:35 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id u17sm10936842edr.0.2021.01.18.07.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:35:34 -0800 (PST)
Cc:     mtk.manpages@gmail.com, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v4] system.3: Document bug and workaround when the command
 name starts with a hypen
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <069938d8-63c9-6194-8549-eb2deb3f71c3@gmail.com>
Date:   Mon, 18 Jan 2021 16:35:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210108142209.61938-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/8/21 3:22 PM, Alejandro Colomar wrote:
> man-pages bug: 211029
>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
> 
> Complete workaround
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

Thanks for the ping. Patch applied, but see man-pages(7)
and my small fix-up in the next commit.

Cheers,

Michael

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
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
