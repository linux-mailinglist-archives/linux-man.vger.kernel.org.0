Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B055727854C
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 12:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727495AbgIYKkt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 06:40:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbgIYKkt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 06:40:49 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A8BC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:40:49 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a9so2758674wmm.2
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 03:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x5R07fhDrktDmVbW/xXluSBB9W0WLcGMQny03sIxjOc=;
        b=Wl4l41MzLY8vhCPVLHrQKD0FTHmm7oLnYYd1ujuX3vlE/sZ8z7HOEiTbg07XVQxnvY
         i6+P2S0PSauDgTttz9+6m1ivH2iB4ZNnEFyt/0N4GrJUjI2o7tmCsHyBCdvr4yAa/4cb
         WCO0kNVK6105rVHh3aLi+6zq2tqOoqevy26qVYBZX1xDzJDq+yPNWFb/kmwC5uLwoJ5N
         lqchV0/xCsJX7bTuDs5+R/cPshtI9YM4SxmAwyA3AMmoAy8NQAIvuhkXpP+ubdQiUXq+
         +Xq/hTWmRBqH/VJNBP5cSwKNwmeETj1wxoGni7FDLDaxbr7Fld7YPHpLwx8sGg5RA4UQ
         XzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x5R07fhDrktDmVbW/xXluSBB9W0WLcGMQny03sIxjOc=;
        b=O4mnziAdz6lBDNu7RRPjPKlNinxpHZRuEGQCAFHG75Ix2WgbChI9TLryyzvpbe64UG
         9jv8CobVe6l3Y4/5Ap85N0UzA+mYgWdQ20QKogJBaelPMeJJAqa7k2mbGofUY3aUqM0R
         4t1E72NTBuZeti6OSX0Sx5Y4h4iCXgCdPSQV6rZ88N/pkMdRYQ1tshI7aaeJPlHbj7sg
         WTQ/uALJDIqxHkq1q/3d0Y1YGeGvCrvW6PrPF1sHC4ABwhyOsdnQSlI5fN5TnGEFj8KX
         1uEs1dzL3Ppgoq9e3FE2HeePuwgesbrQmeKXZxW91SsMAHSoHgHyxhH/v3IIdNuROD7i
         fdEQ==
X-Gm-Message-State: AOAM5308xvrggb9gcQ89VENM/4UNRRjOK1RsOP2QNLNsfJ+TW2GMygaV
        VO0zpVfOdIlP2Go9PNvGGcWq4IPhZpU=
X-Google-Smtp-Source: ABdhPJy6aHufQTd5rXGbh49jDJJCgD1997oYD6wF9xjQUPF1oE1u/PTWYoAlTfwxuDRuPUmdd4l06A==
X-Received: by 2002:a1c:19c1:: with SMTP id 184mr2553845wmz.114.1601030447184;
        Fri, 25 Sep 2020 03:40:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 76sm2544842wma.42.2020.09.25.03.40.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 03:40:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200925080330.184303-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16c0890e-33c0-d052-d7ee-39385cd79299@gmail.com>
Date:   Fri, 25 Sep 2020 12:40:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925080330.184303-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/25/20 10:03 AM, Alejandro Colomar wrote:
> The contents of each type are a logic block that is indented as a block.
> They are not separate paragraphs that happen to be indented separately,
> but a set of continuous paragraphs, all in the same level,
> indented as a block from the list entry--the name of the type--.
> Therefore, it makes more sense to use block indentation, represented by
> .RS/.RE, rather than indenting each paragraph separately.
> That way it's also easier to further indent a separate paragraph inside
> a block, which happens for example in the case of float_t & double_t.
> It's simply much easier now to use .IP specifically in those cases where
> you want to indent just a single paragraph.
> 
> Also added an ending separator comment line just after the last type.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Just to confirm: I think I'm supposed to waiting on a revised 
version of this patch, right? (This version of the patch doesn't
apply in my tree.)

Thanks,

Michael

> ---
> 
> Hi Michael,
> 
> Please, apply after float_t patches.
> 
> Thanks,
> 
> Alex
> 
>  man7/system_data_types.7 | 331 +++++++++++++++++++++++----------------
>  1 file changed, 192 insertions(+), 139 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index caca5bb3c..e07ddb468 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -65,10 +65,11 @@ system_data_types \- overview of system data types
>  .\"------------------------------------- aiocb ------------------------/
>  .TP
>  .I aiocb
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <aio.h> .
> -.IP
> +.PP
>  .EX
>  struct aiocb {
>      int             aio_fildes;    /* File descriptor */
> @@ -80,12 +81,12 @@ struct aiocb {
>      int             aio_lio_opcode;/* Operation to be performed */
>  };
>  .EE
> -.IP
> +.PP
>  For further information about this structure, see
>  .BR aio (7).
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR aio_cancel (3),
>  .BR aio_error (3),
> @@ -95,40 +96,43 @@ See also:
>  .BR aio_suspend (3),
>  .BR aio_write (3),
>  .BR lio_listio (3)
> +.RE
>  .\"------------------------------------- div_t ------------------------/
>  .TP
>  .I div_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <stdlib.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      int quot; /* Quotient */
>      int rem;  /* Remainder */
>  } div_t;
>  .EE
> -.IP
> +.PP
>  It is the type of the value returned by the
>  .BR div (3)
>  function.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR div (3)
> +.RE
>  .\"------------------------------------- double_t ---------------------/
>  .TP
>  .I double_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <math.h> .
> -.IP
> +.PP
>  The implementation's most efficient floating type at least as wide as
>  .IR double .
>  Its type depends on the value of the macro
>  .BR FLT_EVAL_METHOD :
> -.RS
>  .IP *
>  0;
>  .I double_t
> @@ -146,55 +150,59 @@ is
>  .IR "long double" .
>  .IP *
>  Other implementation-defined values.
> -.RE
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also the
>  .I float_t
>  type in this page.
> +.RE
>  .\"------------------------------------- fenv_t -----------------------/
>  .TP
>  .I fenv_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <fenv.h> .
> -.IP
> +.PP
>  This type represents the entire floating-point environment,
>  including control modes and status flags; for further details, see
>  .BR fenv (3).
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR fenv (3)
> +.RE
>  .\"------------------------------------- fexcept_t --------------------/
>  .TP
>  .I fexcept_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <fenv.h> .
> -.IP
> +.PP
>  This type represents the floating-point status flags collectively;
>  for further details see
>  .BR fenv (3).
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR fenv (3)
> +.RE
>  .\"------------------------------------- float_t ----------------------/
>  .TP
>  .I float_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <math.h> .
> -.IP
> +.PP
>  The implementation's most efficient floating type at least as wide as
>  .IR float .
>  Its type depends on the value of the macro
>  .BR FLT_EVAL_METHOD :
> -.RS
>  .IP *
>  0;
>  .I float_t
> @@ -212,17 +220,18 @@ is
>  .IR "long double" .
>  .IP *
>  Other implementation-defined values.
> -.RE
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also the
>  .I double_t
>  type in this page.
> +.RE
>  .\"------------------------------------- gid_t ------------------------/
>  .TP
>  .I gid_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -239,13 +248,13 @@ or
>  .I <sys/stat.h>
>  or
>  .IR <unistd.h> .
> -.IP
> +.PP
>  A type used to hold group IDs.
>  According to POSIX,
>  this shall be an integer type.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR chown (2),
>  .BR getgid (2),
> @@ -254,15 +263,17 @@ See also:
>  .BR getresgid (2),
>  .BR getgrnam (2),
>  .BR credentials (7)
> +.RE
>  .\"------------------------------------- id_t -------------------------/
>  .TP
>  .I id_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
>  .IR <sys/resource.h> .
> -.IP
> +.PP
>  A type used to hold a general identifier.
>  According to POSIX,
>  this shall be an integer type that can be used to contain a
> @@ -270,41 +281,45 @@ this shall be an integer type that can be used to contain a
>  .IR uid_t ,
>  or
>  .IR gid_t .
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR getpriority (2),
>  .BR waitid (2)
> +.RE
>  .\"------------------------------------- imaxdiv_t --------------------/
>  .TP
>  .I imaxdiv_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <inttypes.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      intmax_t    quot; /* Quotient */
>      intmax_t    rem;  /* Remainder */
>  } imaxdiv_t;
>  .EE
> -.IP
> +.PP
>  It is the type of the value returned by the
>  .BR imaxdiv (3)
>  function.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR imaxdiv (3)
> +.RE
>  .\"------------------------------------- lconv ------------------------/
>  .TP
>  .I lconv
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <locale.h> .
> -.IP
> +.PP
>  .EX
>  struct lconv {                  /* Values in the "C" locale: */
>      char   *decimal_point;      /* "." */
> @@ -333,66 +348,72 @@ struct lconv {                  /* Values in the "C" locale: */
>      char    int_n_sign_posn;    /* CHAR_MAX */
>  };
>  .EE
> -.IP
> +.PP
>  Contains members related to the formatting of numeric values.
>  In the "C" locale, its members have the values
>  shown in the comments above.
> -.IP
> +.PP
>  Conforming to: C11 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR setlocale (3),
>  .BR localeconv (3),
>  .BR charsets (5),
>  .BR locale (7)
> +.RE
>  .\"------------------------------------- ldiv_t -----------------------/
>  .TP
>  .I ldiv_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <stdlib.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      long    quot; /* Quotient */
>      long    rem;  /* Remainder */
>  } ldiv_t;
>  .EE
> -.IP
> +.PP
>  It is the type of the value returned by the
>  .BR ldiv (3)
>  function.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR ldiv (3)
> +.RE
>  .\"------------------------------------- lldiv_t ----------------------/
>  .TP
>  .I lldiv_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <stdlib.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      long long   quot; /* Quotient */
>      long long   rem;  /* Remainder */
>  } lldiv_t;
>  .EE
> -.IP
> +.PP
>  It is the type of the value returned by the
>  .BR lldiv (3)
>  function.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR lldiv (3)
> +.RE
>  .\"------------------------------------- pid_t ------------------------/
>  .TP
>  .I pid_t
> -.IP
> +.RS
> +.PP
>  Include
>  .IR <sys/types.h> ;
>  or
> @@ -419,7 +440,7 @@ or
>  .I <unistd.h>
>  or
>  .IR <utmpx.h> .
> -.IP
> +.PP
>  This type is used for storing process IDs, process group IDs, and session IDs.
>  According to POSIX, it shall be a signed integer type,
>  and the implementation shall support one or more programming environments
> @@ -427,9 +448,9 @@ where the width of
>  .I pid_t
>  is no greater than the width of the type
>  .IR long .
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR fork (2),
>  .BR getpid (2),
> @@ -443,20 +464,22 @@ See also:
>  .BR waitpid (2),
>  .BR sigqueue (3),
>  .BR credentials (7),
> +.RE
>  .\"------------------------------------- ptrdiff_t --------------------/
>  .TP
>  .I ptrdiff_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <stddef.h> .
> -.IP
> +.PP
>  Used for a count of elements, and array indices.
>  It is the result of subtracting two pointers.
>  According to the C language standard, it shall be a signed integer type
>  capable of storing values in the range
>  .RB [ PTRDIFF_MIN ,
>  .BR PTRDIFF_MAX ].
> -.IP
> +.PP
>  The length modifier for
>  .I ptrdiff_t
>  for the
> @@ -472,21 +495,23 @@ or
>  for printing
>  .I ptrdiff_t
>  values.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also the
>  .I size_t
>  and
>  .I ssize_t
>  types in this page.
> +.RE
>  .\"------------------------------------- regmatch_t -------------------/
>  .TP
>  .I regmatch_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <regex.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      regoff_t    rm_so; /* Byte offset from start of string
> @@ -496,36 +521,38 @@ typedef struct {
>                            substring */
>  } regmatch_t;
>  .EE
> -.IP
> +.PP
>  This is a structure type used in regular expression matching.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR regexec (3)
> +.RE
>  .\"------------------------------------- regoff_t ---------------------/
>  .TP
>  .I regoff_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <regex.h> .
> -.IP
> +.PP
>  According to POSIX, it shall be a signed integer type
>  capable of storing the largest value that can be stored in either a
>  .I ptrdiff_t
>  type or a
>  .I ssize_t
>  type.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  Notes: Prior to POSIX.1-2008, the type was capable of storing
>  the largest value that can be stored in either an
>  .I off_t
>  type or a
>  .I ssize_t
>  type.
> -.IP
> +.PP
>  See also the
>  .I regmatch_t
>  structure and the
> @@ -533,10 +560,12 @@ structure and the
>  and
>  .I ssize_t
>  types in this page.
> +.RE
>  .\"------------------------------------- sigevent ---------------------/
>  .TP
>  .I sigevent
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <signal.h> ;
>  or
> @@ -545,7 +574,7 @@ or
>  .I <mqueue.h>
>  or
>  .IR <time.h> .
> -.IP
> +.PP
>  .EX
>  struct sigevent {
>      int             sigev_notify; /* Notification type */
> @@ -557,12 +586,12 @@ struct sigevent {
>                                    /* Notification attributes */
>  };
>  .EE
> -.IP
> +.PP
>  For further details about this type, see
>  .BR sigevent (7).
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  Notes:
>  .I <aio.h>
>  and
> @@ -570,25 +599,27 @@ and
>  define
>  .I sigevent
>  since POSIX.1-2008.
> -.IP
> +.PP
>  See also:
>  .BR timer_create (2),
>  .BR getaddrinfo_a (3),
>  .BR lio_listio (3),
>  .BR mq_notify (3)
> -.IP
> +.PP
>  See also the
>  .I aiocb
>  structure in this page.
> +.RE
>  .\"------------------------------------- siginfo_t --------------------/
>  .TP
>  .I siginfo_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <signal.h> ;
>  or
>  .IR <sys/wait.h> .
> -.IP
> +.PP
>  .EX
>  typedef struct {
>      int      si_signo;  /* Signal number */
> @@ -600,36 +631,38 @@ typedef struct {
>      union sigval si_value;  /* Signal value */
>  } siginfo_t;
>  .EE
> -.IP
> +.PP
>  Information associated with a signal.
>  For further details on this structure
>  (including additional, Linux-specific fields), see
>  .BR sigaction (2).
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR pidfd_send_signal (2),
>  .BR rt_sigqueueinfo (2),
>  .BR sigaction (2),
>  .BR sigwaitinfo (2),
>  .BR psiginfo (3)
> +.RE
>  .\"------------------------------------- sigset_t ---------------------/
>  .TP
>  .I sigset_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <signal.h> ;
>  or
>  .I <spawn.h>
>  or
>  .IR <sys/select.h> .
> -.IP
> +.PP
>  This is a type that represents a set of signals.
>  According to POSIX, this shall be an integer or structure type.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR epoll_pwait (2),
>  .BR ppoll (2),
> @@ -641,29 +674,31 @@ See also:
>  .BR sigsuspend (2),
>  .BR sigwaitinfo (2),
>  .BR signal (7)
> +.RE
>  .\"------------------------------------- sigval -----------------------/
>  .TP
>  .I sigval
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <signal.h> .
> -.IP
> +.PP
>  .EX
>  union sigval {
>      int     sigval_int; /* Integer value */
>      void   *sigval_ptr; /* Pointer value */
>  };
>  .EE
> -.IP
> +.PP
>  Data passed with a signal.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR pthread_sigqueue (3),
>  .BR sigqueue (3),
>  .BR sigevent (7)
> -.IP
> +.PP
>  See also the
>  .I sigevent
>  structure
> @@ -671,10 +706,12 @@ and the
>  .I siginfo_t
>  type
>  in this page.
> +.RE
>  .\"------------------------------------- size_t -----------------------/
>  .TP
>  .I size_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .I <stddef.h>
>  or
> @@ -729,7 +766,7 @@ or
>  .I <wchar.h>
>  or
>  .IR <wordexp.h> .
> -.IP
> +.PP
>  Used for a count of bytes.  It is the result of the
>  .I sizeof
>  operator.
> @@ -743,7 +780,7 @@ where the width of
>  .I size_t
>  is no greater than the width of the type
>  .IR long .
> -.IP
> +.PP
>  The length modifier for
>  .I size_t
>  for the
> @@ -759,9 +796,9 @@ or
>  for printing
>  .I size_t
>  values.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  Notes:
>  .IR <aio.h> ,
>  .IR <glob.h> ,
> @@ -775,7 +812,7 @@ and
>  define
>  .I size_t
>  since POSIX.1-2008.
> -.IP
> +.PP
>  See also:
>  .BR read (2),
>  .BR write (2),
> @@ -786,16 +823,18 @@ See also:
>  .BR memcpy (3),
>  .BR memset (3),
>  .BR offsetof (3)
> -.IP
> +.PP
>  See also the
>  .I ptrdiff_t
>  and
>  .I ssize_t
>  types in this page.
> +.RE
>  .\"------------------------------------- ssize_t ----------------------/
>  .TP
>  .I ssize_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -814,7 +853,7 @@ or
>  .I <sys/uio.h>
>  or
>  .IR <unistd.h> .
> -.IP
> +.PP
>  Used for a count of bytes or an error indication.
>  According to POSIX, it shall be a signed integer type
>  capable of storing values at least in the range [-1,
> @@ -824,7 +863,7 @@ where the width of
>  .I ssize_t
>  is no greater than the width of the type
>  .IR long .
> -.IP
> +.PP
>  Glibc and most other implementations provide a length modifier for
>  .I ssize_t
>  for the
> @@ -850,9 +889,9 @@ by converting the value to
>  .I intmax_t
>  and using its length modifier
>  .RB ( j ).
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR read (2),
>  .BR readlink (2),
> @@ -860,23 +899,25 @@ See also:
>  .BR recv (2),
>  .BR send (2),
>  .BR write (2)
> -.IP
> +.PP
>  See also the
>  .I ptrdiff_t
>  and
>  .I size_t
>  types in this page.
> +.RE
>  .\"------------------------------------- suseconds_t ------------------/
>  .TP
>  .I suseconds_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
>  .I <sys/select.h>
>  or
>  .IR <sys/time.h> .
> -.IP
> +.PP
>  Used for time in microseconds.
>  According to POSIX, it shall be a signed integer type
>  capable of storing values at least in the range [-1, 1000000],
> @@ -885,16 +926,18 @@ where the width of
>  .I suseconds_t
>  is no greater than the width of the type
>  .IR long .
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also the
>  .I timeval
>  structure in this page.
> +.RE
>  .\"------------------------------------- time_t -----------------------/
>  .TP
>  .I time_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .I <sys/types.h>
>  or
> @@ -915,48 +958,52 @@ or
>  .I <sys/time.h>
>  or
>  .IR <utime.h> .
> -.IP
> +.PP
>  Used for time in seconds.
>  According to POSIX, it shall be an integer type.
> -.IP
> +.PP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  Notes:
>  .I <sched.h>
>  defines
>  .I time_t
>  since POSIX.1-2008.
> -.IP
> +.PP
>  See also:
>  .BR stime (2),
>  .BR time (2),
>  .BR ctime (3),
>  .BR difftime (3)
> +.RE
>  .\"------------------------------------- timer_t ----------------------/
>  .TP
>  .I timer_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
>  .IR <time.h> .
> -.IP
> +.PP
>  Used for timer ID returned by
>  .BR timer_create (2).
>  According to POSIX,
>  there are no defined comparison or assignment operators for this type.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR timer_create (2),
>  .BR timer_delete (2),
>  .BR timer_getoverrun (2),
>  .BR timer_settime (2)
> +.RE
>  .\"------------------------------------- timespec ---------------------/
>  .TP
>  .I timespec
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <time.h> ;
>  or
> @@ -971,28 +1018,30 @@ or
>  .I <sys/select.h>
>  or
>  .IR <sys/stat.h> .
> -.IP
> +.PP
>  .EX
>  struct timespec {
>      time_t  tv_sec;  /* Seconds */
>      long    tv_nsec; /* Nanoseconds */
>  };
>  .EE
> -.IP
> +.PP
>  Describes times in seconds and nanoseconds.
> -.IP
> +.PP
>  Conforming to: C11 and later; POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR clock_gettime (2),
>  .BR clock_nanosleep (2),
>  .BR nanosleep (2),
>  .BR timerfd_gettime (2),
>  .BR timer_gettime (2)
> +.RE
>  .\"------------------------------------- timeval ----------------------/
>  .TP
>  .I timeval
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/time.h> ;
>  or
> @@ -1001,18 +1050,18 @@ or
>  .I <sys/select.h>
>  or
>  .IR <utmpx.h> .
> -.IP
> +.PP
>  .EX
>  struct timeval {
>      time_t      tv_sec;  /* Seconds */
>      suseconds_t tv_usec; /* Microseconds */
>  };
>  .EE
> -.IP
> +.PP
>  Describes times in seconds and microseconds.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR gettimeofday (2),
>  .BR select (2),
> @@ -1020,10 +1069,12 @@ See also:
>  .BR adjtime (3),
>  .BR futimes (3),
>  .BR timeradd (3)
> +.RE
>  .\"------------------------------------- uid_t ----------------------/
>  .TP
>  .I uid_t
> -.IP
> +.RS
> +.PP
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -1038,13 +1089,13 @@ or
>  .I <sys/stat.h>
>  or
>  .IR <unistd.h> .
> -.IP
> +.PP
>  A type used to hold user IDs.
>  According to POSIX,
>  this shall be an integer type.
> -.IP
> +.PP
>  Conforming to: POSIX.1-2001 and later.
> -.IP
> +.PP
>  See also:
>  .BR chown (2),
>  .BR getuid (2),
> @@ -1052,6 +1103,8 @@ See also:
>  .BR getresuid (2),
>  .BR getpwnam (2),
>  .BR credentials (7)
> +.RE
> +.\"--------------------------------------------------------------------/
>  .SH NOTES
>  The structures described in this manual page shall contain,
>  at least, the members shown in their definition, in no particular order.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
