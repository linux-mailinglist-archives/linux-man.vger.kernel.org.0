Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C492F29ADAB
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2443850AbgJ0Nmp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:42:45 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54848 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1752476AbgJ0Nmn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:42:43 -0400
Received: by mail-wm1-f65.google.com with SMTP id w23so1426567wmi.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 06:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yHO6FcS/makVlyYZpSx4wPZfjfJRPG4TDfMS5uy7+WE=;
        b=iW9B7f5JWpG2fKb5tNZ+yMjwTqYMZwwrTzvORCK9mCgVCAfnStfzcHxqQyhuvusTwv
         oHu1mb+v73rRtOxizM3FDWjaecLUDBepnh2FCZ+I/32C5jjHjSq3+4hgU6v0mRBos7XC
         9eWokzpLv6+sUYckii8fKWmXhcZQZ/WAv12xwQYv6UI9/GLmwMaXckrhpX6CqFzUiTkk
         3AkQfEGMA7omSgpZTDI9nQ/px9ILC7fLU+qX/D9xtscDj34zLRh2JFv2fnafY4Xf268Y
         Lw7Hj0Qn7TaCr8aMGRK7SLJwGK3qnQwsRmYAff4SrJRr7Zuw2wONgdQIjdfIt03B0a0C
         ehjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yHO6FcS/makVlyYZpSx4wPZfjfJRPG4TDfMS5uy7+WE=;
        b=dQzrkt9n6IwYXzxdTnkCcnjRg9ay0YYqcBCtBcmBqik5G4kOCIL/xyXyVBdjWeIUb4
         udxvwLydiAVLBxp+kXwrIH46/OUuamizoa/RF++fjMetCDkscpnJMiiOjdJC49ZVLGQx
         F/LWXKkMBIJwVuUUK5F5QT1Mx56unx0MV9V9EUrnmuA8GcnSmADsMAlM/F7AAnZ4Lurx
         Itg+T4OOt49QU7WQ0SiKsFxJPllIXBp8InmE1uoVp4bAxFUcJ3pS+RVWonMbRC7JVTSz
         QVzxq2gFuEMiQlVVkjfZ/01Vqb0G/HwL70upaIw/UAy2QYGdbRk8mEVW2xosqMFwUbRn
         FbwA==
X-Gm-Message-State: AOAM532vlh++rvXZ3njyMkleNXFWIj505nywW10jvC7puQbRSCDXlVtg
        ovSQWDYaWEd4i1XfXt3ASV4p+gON6KA=
X-Google-Smtp-Source: ABdhPJzQnFnKgEpI1tAQsgkCnYLhycM7L6N5wGxaVfJiJnZ2UHtp8UZ0qGrDjdhPdL/pVCb+haI3iA==
X-Received: by 2002:a7b:c00b:: with SMTP id c11mr2775746wmb.96.1603806158145;
        Tue, 27 Oct 2020 06:42:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id x64sm2002885wmg.33.2020.10.27.06.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:42:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201027130952.32092-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2df28933-340d-998f-d8eb-2136c1c1b404@gmail.com>
Date:   Tue, 27 Oct 2020 14:42:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201027130952.32092-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/27/20 2:09 PM, Alejandro Colomar wrote:
> Format section names inside each type.
> Follow the same pattern as in stat.2 (see line 158: ".IR Note :")
> 
> Before this ffix, it was visually harder to find sections inside a type.

Yes, better! Applied. Thanks!

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 283 ++++++++++++++++++++-------------------
>  1 file changed, 147 insertions(+), 136 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index e1e8f01ca..e93495eea 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -54,7 +54,7 @@ system_data_types \- overview of system data types
>  .TP
>  .I aiocb
>  .RS
> -Include:
> +.IR Include :
>  .IR <aio.h> .
>  .PP
>  .EX
> @@ -72,10 +72,10 @@ struct aiocb {
>  For further information about this structure, see
>  .BR aio (7).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR aio_cancel (3),
>  .BR aio_error (3),
>  .BR aio_fsync (3),
> @@ -89,7 +89,7 @@ See also:
>  .TP
>  .I clock_t
>  .RS
> -Include:
> +.IR Include :
>  .I <time.h>
>  or
>  .IR <sys/types.h> .
> @@ -103,10 +103,10 @@ Used for system time in clock ticks or
>  According to POSIX,
>  it shall be an integer type or a real-floating type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR times (2),
>  .BR clock (3)
>  .RE
> @@ -114,7 +114,7 @@ See also:
>  .TP
>  .I clockid_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <time.h> .
> @@ -123,10 +123,10 @@ Used for clock ID type in the clock and timer functions.
>  According to POSIX,
>  it shall be defined as an arithmetic type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR clock_adjtime (2),
>  .BR clock_getres (2),
>  .BR clock_nanosleep (2),
> @@ -137,7 +137,7 @@ See also:
>  .TP
>  .I dev_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <sys/stat.h> .
> @@ -148,10 +148,10 @@ it shall be an integer type.
>  For further details of this type, see
>  .BR makedev (3).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR mknod (2),
>  .BR stat (2)
>  .RE
> @@ -159,7 +159,7 @@ See also:
>  .TP
>  .I div_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdlib.h> .
>  .PP
>  .EX
> @@ -173,17 +173,17 @@ It is the type of the value returned by the
>  .BR div (3)
>  function.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR div (3)
>  .RE
>  .\"------------------------------------- double_t ---------------------/
>  .TP
>  .I double_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <math.h> .
>  .PP
>  The implementation's most efficient floating type at least as wide as
> @@ -214,10 +214,11 @@ the type of
>  .I double_t
>  is implementation-defined.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I float_t
>  type in this page.
>  .RE
> @@ -225,7 +226,7 @@ type in this page.
>  .TP
>  .I fd_set
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/select.h> .
>  Alternatively,
>  .IR <sys/time.h> .
> @@ -237,61 +238,61 @@ the maximum number of file descriptors in an
>  structure is the value of the macro
>  .BR FD_SETSIZE .
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR select (2)
>  .RE
>  .\"------------------------------------- fenv_t -----------------------/
>  .TP
>  .I fenv_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <fenv.h> .
>  .PP
>  This type represents the entire floating-point environment,
>  including control modes and status flags; for further details, see
>  .BR fenv (3).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR fenv (3)
>  .RE
>  .\"------------------------------------- fexcept_t --------------------/
>  .TP
>  .I fexcept_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <fenv.h> .
>  .PP
>  This type represents the floating-point status flags collectively;
>  for further details see
>  .BR fenv (3).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR fenv (3)
>  .RE
>  .\"------------------------------------- FILE -------------------------/
>  .TP
>  .I FILE
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdio.h> .
>  Alternatively,
>  .IR <wchar.h> .
>  .PP
>  An object type used for streams.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR fclose (3),
>  .BR flockfile (3),
>  .BR fopen (3),
> @@ -305,7 +306,7 @@ See also:
>  .TP
>  .I float_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <math.h> .
>  .PP
>  The implementation's most efficient floating type at least as wide as
> @@ -336,10 +337,11 @@ the type of
>  .I float_t
>  is implementation-defined.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I double_t
>  type in this page.
>  .RE
> @@ -347,7 +349,7 @@ type in this page.
>  .TP
>  .I gid_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <grp.h> ,
> @@ -363,10 +365,10 @@ A type used to hold group IDs.
>  According to POSIX,
>  this shall be an integer type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR chown (2),
>  .BR getgid (2),
>  .BR getegid (2),
> @@ -379,7 +381,7 @@ See also:
>  .TP
>  .I id_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <sys/resource.h> .
> @@ -392,10 +394,10 @@ this shall be an integer type that can be used to contain a
>  or
>  .IR gid_t .
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR getpriority (2),
>  .BR waitid (2)
>  .RE
> @@ -403,7 +405,7 @@ See also:
>  .TP
>  .I imaxdiv_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <inttypes.h> .
>  .PP
>  .EX
> @@ -417,17 +419,17 @@ It is the type of the value returned by the
>  .BR imaxdiv (3)
>  function.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR imaxdiv (3)
>  .RE
>  .\"------------------------------------- intmax_t ---------------------/
>  .TP
>  .I intmax_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -462,10 +464,10 @@ for printing
>  .I intmax_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -Bugs:
> +.IR Bugs :
>  .I intmax_t
>  is not large enough to represent values of type
>  .I __int128
> @@ -475,7 +477,8 @@ is defined and
>  .I long long
>  is less than 128 bits wide.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I uintmax_t
>  type in this page.
>  .RE
> @@ -483,7 +486,7 @@ type in this page.
>  .TP
>  .IR int N _t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -550,10 +553,11 @@ for scanning
>  .I int8_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .IR intmax_t ,
>  .IR uint N _t ,
>  and
> @@ -564,7 +568,7 @@ types in this page.
>  .TP
>  .I intptr_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -615,10 +619,11 @@ for scanning
>  .I intptr_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I uintptr_t
>  and
>  .I void *
> @@ -628,7 +633,7 @@ types in this page.
>  .TP
>  .I lconv
>  .RS
> -Include:
> +.IR Include :
>  .IR <locale.h> .
>  .PP
>  .EX
> @@ -664,10 +669,10 @@ Contains members related to the formatting of numeric values.
>  In the "C" locale, its members have the values
>  shown in the comments above.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C11 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR setlocale (3),
>  .BR localeconv (3),
>  .BR charsets (5),
> @@ -677,7 +682,7 @@ See also:
>  .TP
>  .I ldiv_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdlib.h> .
>  .PP
>  .EX
> @@ -691,17 +696,17 @@ It is the type of the value returned by the
>  .BR ldiv (3)
>  function.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR ldiv (3)
>  .RE
>  .\"------------------------------------- lldiv_t ----------------------/
>  .TP
>  .I lldiv_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdlib.h> .
>  .PP
>  .EX
> @@ -715,17 +720,17 @@ It is the type of the value returned by the
>  .BR lldiv (3)
>  function.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR lldiv (3)
>  .RE
>  .\"------------------------------------- off_t ------------------------/
>  .TP
>  .I off_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <aio.h> ,
> @@ -740,7 +745,7 @@ Used for file sizes.
>  According to POSIX,
>  this shall be a signed integer type.
>  .PP
> -Versions:
> +.IR Versions :
>  .I <aio.h>
>  and
>  .I <stdio.h>
> @@ -748,10 +753,10 @@ define
>  .I off_t
>  since POSIX.1-2008.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .\" .BR fallocate (2),
>  .BR lseek (2),
>  .BR mmap (2),
> @@ -775,7 +780,7 @@ See also:
>  .TP
>  .I pid_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <fcntl.h> ,
> @@ -800,10 +805,10 @@ where the width of
>  is no greater than the width of the type
>  .IR long .
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR fork (2),
>  .BR getpid (2),
>  .BR getppid (2),
> @@ -821,7 +826,7 @@ See also:
>  .TP
>  .I ptrdiff_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stddef.h> .
>  .PP
>  Used for a count of elements, and array indices.
> @@ -847,10 +852,11 @@ for printing
>  .I ptrdiff_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I size_t
>  and
>  .I ssize_t
> @@ -860,7 +866,7 @@ types in this page.
>  .TP
>  .I regex_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <regex.h> .
>  .PP
>  .EX
> @@ -873,17 +879,17 @@ This is a structure type used in regular expression matching.
>  It holds a compiled regular expression, compiled with
>  .BR regcomp (3).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR regex (3)
>  .RE
>  .\"------------------------------------- regmatch_t -------------------/
>  .TP
>  .I regmatch_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <regex.h> .
>  .PP
>  .EX
> @@ -898,17 +904,17 @@ typedef struct {
>  .PP
>  This is a structure type used in regular expression matching.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR regexec (3)
>  .RE
>  .\"------------------------------------- regoff_t ---------------------/
>  .TP
>  .I regoff_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <regex.h> .
>  .PP
>  According to POSIX, it shall be a signed integer type
> @@ -918,7 +924,7 @@ type or a
>  .I ssize_t
>  type.
>  .PP
> -Versions:
> +.IR Versions :
>  Prior to POSIX.1-2008, the type was capable of storing
>  the largest value that can be stored in either an
>  .I off_t
> @@ -926,10 +932,11 @@ type or a
>  .I ssize_t
>  type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I regmatch_t
>  structure and the
>  .I ptrdiff_t
> @@ -941,7 +948,7 @@ types in this page.
>  .TP
>  .I sigevent
>  .RS
> -Include:
> +.IR Include :
>  .IR <signal.h> .
>  Alternatively,
>  .IR <aio.h> ,
> @@ -964,7 +971,7 @@ struct sigevent {
>  For further details about this type, see
>  .BR sigevent (7).
>  .PP
> -Versions:
> +.IR Versions :
>  .I <aio.h>
>  and
>  .I <time.h>
> @@ -972,10 +979,10 @@ define
>  .I sigevent
>  since POSIX.1-2008.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR timer_create (2),
>  .BR getaddrinfo_a (3),
>  .BR lio_listio (3),
> @@ -989,7 +996,7 @@ structure in this page.
>  .TP
>  .I siginfo_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <signal.h> .
>  Alternatively,
>  .IR <sys/wait.h> .
> @@ -1011,10 +1018,10 @@ For further details on this structure
>  (including additional, Linux-specific fields), see
>  .BR sigaction (2).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR pidfd_send_signal (2),
>  .BR rt_sigqueueinfo (2),
>  .BR sigaction (2),
> @@ -1025,7 +1032,7 @@ See also:
>  .TP
>  .I sigset_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <signal.h> .
>  Alternatively,
>  .IR <spawn.h> ,
> @@ -1035,10 +1042,10 @@ or
>  This is a type that represents a set of signals.
>  According to POSIX, this shall be an integer or structure type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR epoll_pwait (2),
>  .BR ppoll (2),
>  .BR pselect (2),
> @@ -1054,7 +1061,7 @@ See also:
>  .TP
>  .I sigval
>  .RS
> -Include:
> +.IR Include :
>  .IR <signal.h> .
>  .PP
>  .EX
> @@ -1066,10 +1073,10 @@ union sigval {
>  .PP
>  Data passed with a signal.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR pthread_sigqueue (3),
>  .BR sigqueue (3),
>  .BR sigevent (7)
> @@ -1086,7 +1093,7 @@ in this page.
>  .TP
>  .I size_t
>  .RS
> -Include:
> +.IR Include :
>  .I <stddef.h>
>  or
>  .IR <sys/types.h> .
> @@ -1148,7 +1155,7 @@ for printing
>  .I size_t
>  values.
>  .PP
> -Versions:
> +.IR Versions :
>  .IR <aio.h> ,
>  .IR <glob.h> ,
>  .IR <grp.h> ,
> @@ -1162,10 +1169,10 @@ define
>  .I size_t
>  since POSIX.1-2008.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR read (2),
>  .BR write (2),
>  .BR fread (3),
> @@ -1185,7 +1192,7 @@ types in this page.
>  .TP
>  .I ssize_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <aio.h> ,
> @@ -1234,10 +1241,10 @@ by converting the value to
>  and using its length modifier
>  .RB ( j ).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR read (2),
>  .BR readlink (2),
>  .BR readv (2),
> @@ -1255,7 +1262,7 @@ types in this page.
>  .TP
>  .I suseconds_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <sys/select.h> ,
> @@ -1271,10 +1278,11 @@ where the width of
>  is no greater than the width of the type
>  .IR long .
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I timeval
>  structure in this page.
>  .RE
> @@ -1282,7 +1290,7 @@ structure in this page.
>  .TP
>  .I time_t
>  .RS
> -Include:
> +.IR Include :
>  .I <time.h>
>  or
>  .IR <sys/types.h> .
> @@ -1304,16 +1312,16 @@ According to POSIX, it shall be an integer type.
>  .\" used an integer type, and POSIX.1-2008 tightened the specification
>  .\" to reflect this.
>  .PP
> -Versions:
> +.IR Versions :
>  .I <sched.h>
>  defines
>  .I time_t
>  since POSIX.1-2008.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR stime (2),
>  .BR time (2),
>  .BR ctime (3),
> @@ -1323,7 +1331,7 @@ See also:
>  .TP
>  .I timer_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <time.h> .
> @@ -1333,10 +1341,10 @@ Used for timer ID returned by
>  According to POSIX,
>  there are no defined comparison or assignment operators for this type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR timer_create (2),
>  .BR timer_delete (2),
>  .BR timer_getoverrun (2),
> @@ -1346,7 +1354,7 @@ See also:
>  .TP
>  .I timespec
>  .RS
> -Include:
> +.IR Include :
>  .IR <time.h> .
>  Alternatively,
>  .IR <aio.h> ,
> @@ -1366,10 +1374,10 @@ struct timespec {
>  .PP
>  Describes times in seconds and nanoseconds.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C11 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR clock_gettime (2),
>  .BR clock_nanosleep (2),
>  .BR nanosleep (2),
> @@ -1380,7 +1388,7 @@ See also:
>  .TP
>  .I timeval
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/time.h> .
>  Alternatively,
>  .IR <sys/resource.h> ,
> @@ -1397,10 +1405,10 @@ struct timeval {
>  .PP
>  Describes times in seconds and microseconds.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR gettimeofday (2),
>  .BR select (2),
>  .BR utimes (2),
> @@ -1412,7 +1420,7 @@ See also:
>  .TP
>  .I uid_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <sys/types.h> .
>  Alternatively,
>  .IR <pwd.h> ,
> @@ -1427,10 +1435,10 @@ A type used to hold user IDs.
>  According to POSIX,
>  this shall be an integer type.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR chown (2),
>  .BR getuid (2),
>  .BR geteuid (2),
> @@ -1442,7 +1450,7 @@ See also:
>  .TP
>  .I uintmax_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -1476,10 +1484,10 @@ for printing
>  .I uintmax_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -Bugs:
> +.IR Bugs :
>  .I uintmax_t
>  is not large enough to represent values of type
>  .I unsigned __int128
> @@ -1489,7 +1497,8 @@ is defined and
>  .I unsigned long long
>  is less than 128 bits wide.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I intmax_t
>  type in this page.
>  .RE
> @@ -1497,7 +1506,7 @@ type in this page.
>  .TP
>  .IR uint N _t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -1567,10 +1576,11 @@ for scanning
>  .I uint16_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .IR intmax_t ,
>  .IR int N _t ,
>  and
> @@ -1581,7 +1591,7 @@ types in this page.
>  .TP
>  .I uintptr_t
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdint.h> .
>  Alternatively,
>  .IR <inttypes.h> .
> @@ -1635,10 +1645,11 @@ for scanning
>  .I uintptr_t
>  values.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also the
> +.IR "See also" :
> +the
>  .I intptr_t
>  and
>  .I void *
> @@ -1648,7 +1659,7 @@ types in this page.
>  .TP
>  .I va_list
>  .RS
> -Include:
> +.IR Include :
>  .IR <stdarg> .
>  Alternatively,
>  .IR <stdio.h> ,
> @@ -1666,10 +1677,10 @@ and
>  .BR va_end (3)
>  to traverse the list of arguments.
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR va_start (3),
>  .BR va_arg (3),
>  .BR va_copy (3),
> @@ -1728,16 +1739,16 @@ and the
>  families of functions is
>  .BR p .
>  .PP
> -Versions:
> +.IR Versions :
>  The POSIX requirement about compatibility between
>  .I void *
>  and function pointers was added in
>  POSIX.1-2008 Technical Corrigendum 1 (2013).
>  .PP
> -Conforming to:
> +.IR "Conforming to" :
>  C99 and later; POSIX.1-2001 and later.
>  .PP
> -See also:
> +.IR "See also" :
>  .BR malloc (3),
>  .BR memcmp (3),
>  .BR memcpy (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
