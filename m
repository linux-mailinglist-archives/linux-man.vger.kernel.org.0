Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42682212131
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727991AbgGBK12 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:27:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728280AbgGBK12 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:27:28 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042D5C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:27:28 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id n26so14745792ejx.0
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0hqkNnp5wIP0iYz3/QfWSqcOXI/QccgFhPmfvJhB8Z4=;
        b=iRXPKkToMSSR6PfxnT7VkBS2D9oiPA3tPjZ+UnfpUMX/HM1Kh7P/t9Q+M1INbf0y7x
         yfrHf0nfhBPGnYrH5gfA+aJXbxX2jS4Ha8f7Q546eHwYy4KxOKMYxlKC8eGWePNErHzB
         bgVQMaP/PkvreBppeOE+H52+DagJY2xh5Xydmy0W0lr+YCcweKsFEtkCWoHA+0JI8lrG
         m0SS85sEEElpWul6fXPZXNROX4gX+CbZ4mRbingcp72r8FL/l4u8X/fbYwSOuECNxLrN
         JVFVhJ0bxNqQbelejNDhhEdEqUctvLOEqAczARntti1+31qeUCRbOhMuiyRwZD6BYqBN
         1HvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0hqkNnp5wIP0iYz3/QfWSqcOXI/QccgFhPmfvJhB8Z4=;
        b=gyD6V7Lwn+qOOSH45ys9USrNXdeB1u8286MJ5nrjsxntaA6HojBXbah3gskd5zEJKI
         eL+lB58Wx3ttlfMt9P5k5fVZMGKdaLywQ9q9AKiF09qOg40R+8bCp1e0ST7Chsf9jqZk
         3Q8O7Rk8HeWj/9lJo99seHb7h3qxNWY9Z+RESGCsglSj1yIgkVAcM2zXfm2qhTKvAoq1
         6g6s6Vmc0IvwGyp4YXoVt3KgPHqzBQkOyN4C4o3RZRwbsejK0ziMTMjY7DHX28KbOYQL
         uKRZQzShXdrf9RbnS5Vv3MuW05DJLXLr+4dQuDT8iJjmEkDv8z5nwwoANmL8cd8OjX9i
         h/4Q==
X-Gm-Message-State: AOAM530KqGynASJtwaa8BPu53H3V0Mf8uVATHx0UVTH7PcMNIfGZs7nt
        TAfw0zJjwTOS4yR9oD9wd7CE95JU
X-Google-Smtp-Source: ABdhPJxzytRhhPC0H0QxDH4as2K40a1N3TBx1yfmOZ/Bpsadnlf+GFRm/IV423dTL6SxQnhd6b7o8A==
X-Received: by 2002:a17:906:60d0:: with SMTP id f16mr22496498ejk.17.1593685646534;
        Thu, 02 Jul 2020 03:27:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id m2sm6577546ejg.7.2020.07.02.03.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:27:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701225059.GA26940@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
Date:   Thu, 2 Jul 2020 12:27:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701225059.GA26940@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 7/2/20 12:50 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>

Patch applied, but:

> ---
>  man3/dlopen.3             | 2 +-
>  man3/fts.3                | 2 +-
>  man3/getsubopt.3          | 2 +-
>  man3/insque.3             | 2 +-
>  man3/mq_getattr.3         | 2 +-
>  man3/posix_spawn.3        | 8 ++++----
>  man3/pthread_setname_np.3 | 2 +-
>  man3/sincos.3             | 2 +-
>  man3/strfromd.3           | 6 +++---

The above piece was broken, so I applied manually. Was your patch 
against master?

Thanks,

Michael

>  man3/strftime.3           | 2 +-
>  man3/system.3             | 2 +-
>  11 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/man3/dlopen.3 b/man3/dlopen.3
> index 8629af83e..eec6f9980 100644
> --- a/man3/dlopen.3
> +++ b/man3/dlopen.3
> @@ -596,7 +596,7 @@ main(void)
>         The 2013 Technical Corrigendum 1 to POSIX.1-2008 improved matters
>         by requiring that conforming implementations support casting
>         'void *' to a function pointer.  Nevertheless, some compilers
> -       (e.g., gcc with the '-pedantic' option) may complain about the
> +       (e.g., gcc with the '\-pedantic' option) may complain about the
>         cast used in this program. */
>  .\" http://pubs.opengroup.org/onlinepubs/009695399/functions/dlsym.html#tag_03_112_08
>  .\" http://pubs.opengroup.org/onlinepubs/9699919799/functions/dlsym.html#tag_16_96_07
> diff --git a/man3/fts.3 b/man3/fts.3
> index bbd5cad5e..0d455149d 100644
> --- a/man3/fts.3
> +++ b/man3/fts.3
> @@ -822,7 +822,7 @@ In versions of glibc before 2.23,
>  .\" https://sourceware.org/bugzilla/show_bug.cgi?id=11460
>  all of the APIs described in this man page are not safe when compiling
>  a program using the LFS APIs (e.g., when compiling with
> -.IR -D_FILE_OFFSET_BITS=64 ).
> +.IR \-D_FILE_OFFSET_BITS=64 ).
>  .\"
>  .\" The following statement is years old, and seems no closer to
>  .\" being true -- mtk
> diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
> index 6cf2d7a82..cef57fde7 100644
> --- a/man3/getsubopt.3
> +++ b/man3/getsubopt.3
> @@ -53,7 +53,7 @@ parses the list of comma-separated suboptions provided in
>  (Such a suboption list is typically produced when
>  .BR getopt (3)
>  is used to parse a command line;
> -see for example the \fI-o\fP option of
> +see for example the \fI\-o\fP option of
>  .BR mount (8).)
>  Each suboption may include an associated value,
>  which is separated from the suboption name by an equal sign.
> diff --git a/man3/insque.3 b/man3/insque.3
> index 2a957f24c..a9fc28550 100644
> --- a/man3/insque.3
> +++ b/man3/insque.3
> @@ -155,7 +155,7 @@ Here is an example run of the program:
>  .PP
>  .in +4n
>  .EX
> -.RB "$ " "./a.out -c a b c"
> +.RB "$ " "./a.out \-c a b c"
>  Traversing completed list:
>      a
>      b
> diff --git a/man3/mq_getattr.3 b/man3/mq_getattr.3
> index 74ef0492f..771316472 100644
> --- a/man3/mq_getattr.3
> +++ b/man3/mq_getattr.3
> @@ -185,7 +185,7 @@ can be used to control the defaults:
>  .PP
>  .in +4n
>  .EX
> -$ \fBuname -sr\fP
> +$ \fBuname \-sr\fP
>  Linux 3.8.0
>  $ \fBcat /proc/sys/fs/mqueue/msg_default\fP
>  10
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 54fe775cc..f425a39e3 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -631,7 +631,7 @@ fails when trying to perform output and exits with a status of 1.
>  .PP
>  .in +4
>  .EX
> -$ \fB./a.out -c date\fP
> +$ \fB./a.out \-c date\fP
>  PID of child: 7636
>  date: write error: Bad file descriptor
>  Child status: exited, status=1
> @@ -655,14 +655,14 @@ can't be blocked).
>  .PP
>  .in +4
>  .EX
> -$ \fB./a.out -s sleep 60 &\fP
> +$ \fB./a.out \-s sleep 60 &\fP
>  [1] 7637
>  $ PID of child: 7638
>  
>  $ \fBkill 7638\fP
> -$ \fBkill -KILL 7638\fP
> +$ \fBkill \-KILL 7638\fP
>  $ Child status: killed by signal 9
> -[1]+  Done                    ./a.out -s sleep 60
> +[1]+  Done                    ./a.out \-s sleep 60
>  .EE
>  .in
>  .PP
> diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
> index acea0b468..883464755 100644
> --- a/man3/pthread_setname_np.3
> +++ b/man3/pthread_setname_np.3
> @@ -141,7 +141,7 @@ Created a thread. Default name is: a.out
>  The thread name after setting it is THREADFOO.
>  \fB^Z\fP                           # Suspend the program
>  [1]+  Stopped           ./a.out
> -.RB "$ " "ps H -C a.out -o 'pid tid cmd comm'"
> +.RB "$ " "ps H \-C a.out \-o 'pid tid cmd comm'"
>    PID   TID CMD                         COMMAND
>   5990  5990 ./a.out                     a.out
>   5990  5991 ./a.out                     THREADFOO
> diff --git a/man3/sincos.3 b/man3/sincos.3
> index 7d5c29724..8ec3e9ca1 100644
> --- a/man3/sincos.3
> +++ b/man3/sincos.3
> @@ -94,7 +94,7 @@ built-in optimizations, using flags such as:
>  .PP
>  .in +4n
>  .EX
> -cc -O \-lm \-fno\-builtin prog.c
> +cc \-O \-lm \-fno\-builtin prog.c
>  .EE
>  .in
>  .SH BUGS
> diff --git a/man3/strfromd.3 b/man3/strfromd.3
> index 84cc08068..8092e645d 100644
> --- a/man3/strfromd.3
> +++ b/man3/strfromd.3
> @@ -127,13 +127,13 @@ infinity values:
>  .RS
>  If
>  .I fp
> -is a NaN, +NaN, or -NaN, and
> +is a NaN, +NaN, or \-NaN, and
>  .B f
>  (or
>  .BR a ,
>  .BR e ,
>  .BR g )
> -is the conversion specifier, the conversion is to "nan", "nan", or "-nan",
> +is the conversion specifier, the conversion is to "nan", "nan", or "\-nan",
>  respectively.
>  If
>  .B F
> @@ -141,7 +141,7 @@ If
>  .BR A ,
>  .BR E ,
>  .BR G )
> -is the conversion specifier, the conversion is to "NAN" or "-NAN".
> +is the conversion specifier, the conversion is to "NAN" or "\-NAN".
>  .PP
>  Likewise if
>  .I fp
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index d33c0f5ec..15616116d 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -424,7 +424,7 @@ conversion specification corresponds to the full alternative year representation
>  The
>  .I +hhmm
>  or
> -.I -hhmm
> +.I \-hhmm
>  numeric timezone (that is, the hour and minute offset from UTC). (SU)
>  .TP
>  .B %Z
> diff --git a/man3/system.3 b/man3/system.3
> index 997b1a3de..21f2e0304 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -50,7 +50,7 @@ as follows:
>  .PP
>  .in +4n
>  .EX
> -execl("/bin/sh", "sh", "-c", command, (char *) NULL);
> +execl("/bin/sh", "sh", "\-c", command, (char *) NULL);
>  .EE
>  .in
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
