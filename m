Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0A83E37ED
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:03:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHCDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:03:21 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C3B7C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:03:03 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id bo18so410863pjb.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O5V+WjyY+6RbmiBv3ysQHh2opfyeOKcP0m/1tlFJWkc=;
        b=UleszfvXlq0ZoXce7tUp1rhi37UC06yJcs8krr/u+uUabLA1uDR2GjSpIITaMhR/U3
         URBcZzT4IbfNCy2hNzBj6rKUU9AfT+OXqqPH8AJ2elEYGoVEq817U597X7Nkp+ctkDC4
         HZL6rq2yRpHQRgoqQdsH+xPLHcndHj2ZHvXkF4yxx5HMH4wuErZYv6Bbc75d1JJhGynM
         4cp5cs0A5ztW6InkTNhkPH7zTDbBF7CLIU5/p1UU+CkoXxgG8WZ+BUpLpdueMFUJGghm
         j/e6ZXIYrl1InH9UvF+q7r7Ro48agGD4Gdy+vf7hZhA5waz61Kc/ghCNykq5SsgzECJR
         P+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O5V+WjyY+6RbmiBv3ysQHh2opfyeOKcP0m/1tlFJWkc=;
        b=DjJcjHm0GqYPKJsM6wvM2f5fGW/yG3an/JC/0CA1whXDQugAXZ3HtAtZ31aZ+A5YUt
         mcz2c2SJOL7poar9fxUgmx0rmZN03IB66pRyHU5dcEpEQwLPgk08zGu32wOd9iSUark0
         HXV9mao+mjZmtFreaMml/88JtpO9UbmqPggSUuOMPejFQjA7I0tLq85If4ZnS1F0EzmP
         BBEC9sq49hn7eIf1tl2rxoHbkgQjGw9Fzipxnh0xOZg1YjAeoJ3xvc+RSSCeGfN74hbY
         PfNrap6Pmp563mj1NcvWG+y4dgrThcUkZErGr5qN1KxERk5FnCyiMt43VxJRp7RbZWZ6
         hFgQ==
X-Gm-Message-State: AOAM533boj1Petm2sXiTCtSuJ5cOtZqJtvMNth26ZkMvYmgRnpaWXPnm
        F4vfucWFWi9Vfw7mMd8+5DY=
X-Google-Smtp-Source: ABdhPJyrdo4+mv2XWZf9Th/G7mdbeMccDDw6/ik92O/f9Aa5o/Y1R/wSq0sUJAlW3fymTiJJa71j8Q==
X-Received: by 2002:a17:903:2285:b029:12c:78ee:944 with SMTP id b5-20020a1709032285b029012c78ee0944mr14757113plh.69.1628388182785;
        Sat, 07 Aug 2021 19:03:02 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id a22sm15465300pfa.137.2021.08.07.19.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:03:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Shawn Landden <shawn@git.icu>,
        linux-man@vger.kernel.org, Nora Platiel <nplatiel@gmx.us>
Subject: Re: [PATCH 32/32] execve.2: Fix absolute/relative pathname
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-33-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <861f5cd9-cb06-23a7-3bcc-166e9b7e074a@gmail.com>
Date:   Sun, 8 Aug 2021 04:02:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-33-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Shawn, and Nora,

@Nora, thanks for the bug report.

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> From: Shawn Landden <shawn@git.icu>
> 
> The absolute pathname is available in the Linux-specific
> auxiliary-vector feature.

@Shawn
But this isn't true, as far as I can see. See the following:

[[
$ cat auxv.c 
#include <link.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern char **environ;

int
main(int argc, char *argv[])
{
    char **p;

    /* Walk through the array of pointers in environ */

    for (p = environ; *p != NULL; p++)
        continue;

    /* The auxiliary vector sits just above environ */

    p++;        /* Step past NULL pointer at end of 'environ' */

    printf("auxvec                        %12p\n", (void *) p);

    ElfW(auxv_t) *auxv = (ElfW(auxv_t) *) p;

    while (auxv->a_type != 0) {

        switch (auxv->a_type) {
        case AT_PLATFORM:
                        /* String identifying hardware platform */
            printf("AT_PLATFORM:      0x%llx (string: %s)\n",
                    (long long) auxv->a_un.a_val, (char *) auxv->a_un.a_val);
            break;
        case AT_SECURE: /* Was secure-execution mode triggered for dynamic
                           linker? See ld.so(8). */
            printf("AT_SECURE:        %lld\n", (long long) auxv->a_un.a_val);
            break;
        case AT_EXECFN: /* Pathname used to execute program */
            printf("AT_EXECFN:        0x%llx (string: %s)\n",
                    (long long) auxv->a_un.a_val, (char *) auxv->a_un.a_val);
            break;
        default:
            /* We ignore other types of entries in auxiliary vector */
            break;
        }

        auxv++;
    }

    exit(EXIT_SUCCESS);
}
$ ./auxv
auxvec                        0x7ffd5c6eb708
AT_SECURE:        0
AT_EXECFN:        0x7ffd5c6ecff1 (string: ./auxv)
AT_PLATFORM:      0x7ffd5c6eb859 (string: x86_64)
]]

> 
> Reported-by: Nora Platiel <nplatiel@gmx.us>
> Signed-off-by: Shawn Landden <shawn@git.icu>
> Reviewed-by: Nora Platiel <nplatiel@gmx.us>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/execve.2 | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index c18ca5412..7fe12ab42 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -346,7 +346,9 @@ will be invoked with the following arguments:
>  .PP
>  where
>  .I pathname
> -is the absolute pathname of the file specified as the first argument of
> +is the absolute pathname of the file specified (may be relative to
> +.BR getcwd (3)
> +of the caller) as the first argument of
>  .BR execve (),

I find the "(may be relative...)" piece confusing.

It's simpler just to s/absolute pathname/pathname/, and that's the
change I made.

>  and
>  .I arg...
> @@ -356,6 +358,11 @@ argument of
>  .BR execve (),
>  starting at
>  .IR argv[1] .
> +The absolute pathname of the script is also available
> +in the same auxiliary vector the environment and argument variables are in, as
> +.BR AT_EXECFN .
> +See
> +.BR getauxval (3).
>  Note that there is no way to get the
>  .IR argv[0]
>  that was passed to the

I applied the patch below.

Cheers,

Michael

diff --git a/man2/execve.2 b/man2/execve.2
index 435a6b363..4eaf1967e 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -346,7 +346,7 @@ will be invoked with the following arguments:
 .PP
 where
 .I pathname
-is the absolute pathname of the file specified as the first argument of
+is the pathname of the file specified as the first argument of
 .BR execve (),
 and
 .I arg...


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
