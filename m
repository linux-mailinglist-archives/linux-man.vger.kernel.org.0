Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BABB311C7F
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 11:01:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbhBFJ7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 04:59:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbhBFJ7p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 04:59:45 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FCF0C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 01:59:05 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id k204so8709324oih.3
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 01:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=k6iwrnw9ohpcq6z/v6CwPjgzpbUZCpYQQ7y7hWFaIhs=;
        b=Tam97Q+YqXI+MmQTB3msltZfyE5rU2E6kxSL/hbKgBXmVhIjMylj4S3ufzKdlKZTEH
         vMxbwB8J2a/NeWc/iBp5PAEqy7upPtMcu23NAyvrlQ/6ytddvupd+X/SjWvYzM1w024J
         hZnWb4dqxivllfuQTFGy7f6dOuaWJwIfcR9nkwmc+zuMeHFCNJpMMiuaWXFrmMaNRW7o
         YZMuwi3J0Fnxyn7/nLTsYdHGTBn4Eug+5MQuxfWKyz/Attend7ejWfu/1N0LzZf5a5vg
         IlEA1EHmb/BvqlN4B4qfyQnX/lZosNWBzFKflal+LJiYVGGGVJ4SqUnfMl91A+tFpThi
         Td0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=k6iwrnw9ohpcq6z/v6CwPjgzpbUZCpYQQ7y7hWFaIhs=;
        b=ZNfc4M8+DRDIias/9Hnm9ofB+en/b+zTkwIONv1MwzFzo7ugVljMS+rENPyQVPUbeW
         YNxhyP0cxvsXmMCXXnAktMxQij0M9sJiToDIw+h/VhazzWhuA4DISaB7iD4FQJ2eZw2+
         5fnxtstkjqQY8m6NntWFHlYYLk4C0OaSj3bEWoi/YdbxLSKqR4NHkyxhg943ExMv717Z
         UishX3k4QfE9T/ctb9Q/aq2VvAP8CxFZ8B2iAys31mD1J1EObGL5EjLOy4k+OaH52UqL
         20KcZOM2Vv74ivoOkA/Eji3wJTpYlhYItlc+GMZ47OGwzu4oZpzP/xYbNfA9tHijHLoS
         DRuA==
X-Gm-Message-State: AOAM533xUWVJWGZy/jwGPVrM42N1MEQdn4RJlFZ68RjUjq1BRjbX84Ru
        2rc15r+GVwTFjyeLWvuE9gU/gDIIYzh1zenC234=
X-Google-Smtp-Source: ABdhPJyk9pxkrtagcYoM6P5Jl5J/b78MzAGOs7hS4Towk4qwdq1upMlXo/6jk5NClPLJBYEMFvAo53l4wyWCBGgDAxo=
X-Received: by 2002:aca:4f4d:: with SMTP id d74mr5553196oib.159.1612605544672;
 Sat, 06 Feb 2021 01:59:04 -0800 (PST)
MIME-Version: 1.0
References: <20210203194354.158439-1-alx.manpages@gmail.com>
In-Reply-To: <20210203194354.158439-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 6 Feb 2021 10:58:53 +0100
Message-ID: <CAKgNAkg-EZi7tTUW3j7Ro330ATHyzy2820La5AoiURLj+xgr2Q@mail.gmail.com>
Subject: Re: [PATCH] getitimer.2: Use restrict in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, 3 Feb 2021 at 20:45, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> POSIX specifies that the 2nd and 3rd parameters to setitimer()
> shall be 'restrict'.  Glibc uses 'restrict' too.
> Let's use it here too.

I'm not against this change. But, as we know, 'restrict' is not used
at all so far in the SYNOPSIS sections of the manual pages. DO you
have an overall plan here?

Thanks,

Michael

> ......
>
> .../glibc$ grep_syscall_wrapper setitimer
> time/sys/time.h:129:
> extern int setitimer (__itimer_which_t __which,
>                       const struct itimerval *__restrict __new,
>                       struct itimerval *__restrict __old) __THROW;
> .../glibc$
>
> function grep_syscall_wrapper()
> {
>         if ! [ -v 1 ]; then
>                 >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>                 return ${EX_USAGE};
>         fi
>
>         find * -type f \
>         |grep '\.h$' \
>         |sort -V \
>         |xargs pcregrep -Mn \
>           "^[^\s][\w\s]+\s+\**${1}\s*\((?s)[\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/getitimer.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/man2/getitimer.2 b/man2/getitimer.2
> index b435c343e..9ec32e836 100644
> --- a/man2/getitimer.2
> +++ b/man2/getitimer.2
> @@ -18,8 +18,8 @@ getitimer, setitimer \- get or set value of an interval timer
>  .B #include <sys/time.h>
>  .PP
>  .BI "int getitimer(int " which ", struct itimerval *" curr_value );
> -.BI "int setitimer(int " which ", const struct itimerval *" new_value ,
> -.BI "              struct itimerval *" old_value );
> +.BI "int setitimer(int " which ", const struct itimerval *restrict " new_value ,
> +.BI "              struct itimerval *restrict " old_value );
>  .fi
>  .SH DESCRIPTION
>  These system calls provide access to interval timers, that is,
> --
> 2.30.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
