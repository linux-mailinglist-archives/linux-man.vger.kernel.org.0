Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8B12785D0
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 13:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727290AbgIYL2p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 07:28:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728042AbgIYL2p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 07:28:45 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29947C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:28:45 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z4so3228013wrr.4
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5yC7KUUrPdGHzFh3T2GN6cblJyiqS6gU6oOYSissH/U=;
        b=t6fG9CqWNZnLo7O5TSW8tif5iuoWaumJ0HitFBo1CjnEGEWM0HaDZ0zgoioZZhh8MR
         MJuI5kTzkd99Qq5jly2pXESzmCcMIhy3Mt0k44pJqNbLggDcBFlcEdIdQ0cB6bs9dbE4
         TRkrd89Ou13mueccMZTssG2sVfQpVhiz7WOPttGjwFfkpZJfydc1scvFu69lqZwTmR8k
         y4Oze1jvVlRMDBeTlsbMZ56A1azkCknp2AjvqQFuy0qprLYWRxSyazX6Pm8FUULnS2yy
         5CrEmrrvqCn52LGwTgQLYff/3m8tdLOx1AF5ewxjii+HjH+OnB4My1MyJiun189Mkn6l
         C6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5yC7KUUrPdGHzFh3T2GN6cblJyiqS6gU6oOYSissH/U=;
        b=qI3hRA8w7ijQr7T5KoZEUh3ta43zdYgaRw2Hkpj7x6qPZarP7ufM9w9PItY7fpt0qs
         A7+06EuOE9EbjAeiV8CHvuu8Rg+hp/5DnpT52/peCC/N0tiVINqPWUB2TMf8Zf3dP+xo
         OeZPXquAqhqHKikXttnQdld3uBofRCoOGB65I3PU/OBxC57Vt6Bb7MUNN0Kw1OPvx+jV
         VgaCldCiGjB+POTHu3OxQvWZOp7VOZ2pGsctHhdRIBNr6/sWW7Mrc/U2LY7mEo/eghXM
         +7mvS/YYE3mE19m5oMPEycct1bCH3sBR0ebS9ygSdxyc0oMFlre+ukjXE10316nt7JK5
         AHDg==
X-Gm-Message-State: AOAM5316syIAkMUNeiTj0lgyFo493jKiP0jgBD/Oegf6hu2uyJAO3ANs
        vXa+ysLunxE0Bv8Fth7Z/ws=
X-Google-Smtp-Source: ABdhPJxvby+z1YWqrIa6PyTF3/RTn5s7OEeVfj2OMGMpNdI2+n58FxrKGPmTcyBvBHyNNJIvqT1LAw==
X-Received: by 2002:a05:6000:1282:: with SMTP id f2mr4220943wrx.251.1601033323188;
        Fri, 25 Sep 2020 04:28:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id z127sm2665569wmc.2.2020.09.25.04.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 04:28:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 2/2] system_data_types.7: srcfix
Date:   Fri, 25 Sep 2020 13:28:23 +0200
Message-Id: <20200925112822.223218-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <16c0890e-33c0-d052-d7ee-39385cd79299@gmail.com>
References: <16c0890e-33c0-d052-d7ee-39385cd79299@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The contents of each type are a logic block that is indented as a block.
They are not separate paragraphs that happen to be indented separately,
but a set of continuous paragraphs, all in the same level,
indented as a block from the list entry--the name of the type--.
Therefore, it makes more sense to use block indentation, represented by
.RS/.RE, rather than indenting each paragraph separately.
That way it's also easier to further indent a separate paragraph inside
a block, which happens for example in the case of float_t & double_t.
It's simply much easier now to use .IP specifically in those cases where
you want to indent just a single paragraph.

Also added an ending separator comment line just after the last type.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,


On 2020-09-25 12:40, Michael Kerrisk (man-pages) wrote:
> Just to confirm: I think I'm supposed to waiting on a revised
> version of this patch, right? (This version of the patch doesn't
> apply in my tree.)
> 
> Thanks,
> 
> Michael

Right.

It was somewhat complicated to fix the commits in the middle
and rebase and then fix breakages and rebase again and fix more commits...
I learned a lot of git today :)

Cheers,

Alex


 man7/system_data_types.7 | 331 +++++++++++++++++++++++----------------
 1 file changed, 192 insertions(+), 139 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e3a3856a2..0837087fb 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -65,10 +65,11 @@ system_data_types \- overview of system data types
 .\"------------------------------------- aiocb ------------------------/
 .TP
 .I aiocb
-.IP
+.RS
+.PP
 Include:
 .IR <aio.h> .
-.IP
+.PP
 .EX
 struct aiocb {
     int             aio_fildes;    /* File descriptor */
@@ -80,12 +81,12 @@ struct aiocb {
     int             aio_lio_opcode;/* Operation to be performed */
 };
 .EE
-.IP
+.PP
 For further information about this structure, see
 .BR aio (7).
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR aio_cancel (3),
 .BR aio_error (3),
@@ -95,42 +96,45 @@ See also:
 .BR aio_suspend (3),
 .BR aio_write (3),
 .BR lio_listio (3)
+.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-.IP
+.RS
+.PP
 Include:
 .IR <stdlib.h> .
-.IP
+.PP
 .EX
 typedef struct {
     int quot; /* Quotient */
     int rem;  /* Remainder */
 } div_t;
 .EE
-.IP
+.PP
 It is the type of the value returned by the
 .BR div (3)
 function.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR div (3)
+.RE
 .\"------------------------------------- double_t ---------------------/
 .TP
 .I double_t
-.IP
+.RS
+.PP
 Include:
 .IR <math.h> .
-.IP
+.PP
 The implementation's most efficient floating type at least as wide as
 .IR double .
 Its type depends on the value of the macro
 .BR FLT_EVAL_METHOD ,
 defined in
 .IR <float.h> :
-.RS
 .TP
 0
 .I double_t
@@ -152,57 +156,61 @@ For other values of
 the type of
 .I double_t
 is implementation-defined.
-.RE
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also the
 .I float_t
 type in this page.
+.RE
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-.IP
+.RS
+.PP
 Include:
 .IR <fenv.h> .
-.IP
+.PP
 This type represents the entire floating-point environment,
 including control modes and status flags; for further details, see
 .BR fenv (3).
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR fenv (3)
+.RE
 .\"------------------------------------- fexcept_t --------------------/
 .TP
 .I fexcept_t
-.IP
+.RS
+.PP
 Include:
 .IR <fenv.h> .
-.IP
+.PP
 This type represents the floating-point status flags collectively;
 for further details see
 .BR fenv (3).
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR fenv (3)
+.RE
 .\"------------------------------------- float_t ----------------------/
 .TP
 .I float_t
-.IP
+.RS
+.PP
 Include:
 .IR <math.h> .
-.IP
+.PP
 The implementation's most efficient floating type at least as wide as
 .IR float .
 Its type depends on the value of the macro
 .BR FLT_EVAL_METHOD ,
 defined in
 .IR <float.h> :
-.RS
 .TP
 0
 .I float_t
@@ -224,17 +232,18 @@ For other values of
 the type of
 .I float_t
 is implementation-defined.
-.RE
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also the
 .I double_t
 type in this page.
+.RE
 .\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
@@ -251,13 +260,13 @@ or
 .I <sys/stat.h>
 or
 .IR <unistd.h> .
-.IP
+.PP
 A type used to hold group IDs.
 According to POSIX,
 this shall be an integer type.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR chown (2),
 .BR getgid (2),
@@ -266,15 +275,17 @@ See also:
 .BR getresgid (2),
 .BR getgrnam (2),
 .BR credentials (7)
+.RE
 .\"------------------------------------- id_t -------------------------/
 .TP
 .I id_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
 .IR <sys/resource.h> .
-.IP
+.PP
 A type used to hold a general identifier.
 According to POSIX,
 this shall be an integer type that can be used to contain a
@@ -282,41 +293,45 @@ this shall be an integer type that can be used to contain a
 .IR uid_t ,
 or
 .IR gid_t .
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR getpriority (2),
 .BR waitid (2)
+.RE
 .\"------------------------------------- imaxdiv_t --------------------/
 .TP
 .I imaxdiv_t
-.IP
+.RS
+.PP
 Include:
 .IR <inttypes.h> .
-.IP
+.PP
 .EX
 typedef struct {
     intmax_t    quot; /* Quotient */
     intmax_t    rem;  /* Remainder */
 } imaxdiv_t;
 .EE
-.IP
+.PP
 It is the type of the value returned by the
 .BR imaxdiv (3)
 function.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR imaxdiv (3)
+.RE
 .\"------------------------------------- lconv ------------------------/
 .TP
 .I lconv
-.IP
+.RS
+.PP
 Include:
 .IR <locale.h> .
-.IP
+.PP
 .EX
 struct lconv {                  /* Values in the "C" locale: */
     char   *decimal_point;      /* "." */
@@ -345,66 +360,72 @@ struct lconv {                  /* Values in the "C" locale: */
     char    int_n_sign_posn;    /* CHAR_MAX */
 };
 .EE
-.IP
+.PP
 Contains members related to the formatting of numeric values.
 In the "C" locale, its members have the values
 shown in the comments above.
-.IP
+.PP
 Conforming to: C11 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR setlocale (3),
 .BR localeconv (3),
 .BR charsets (5),
 .BR locale (7)
+.RE
 .\"------------------------------------- ldiv_t -----------------------/
 .TP
 .I ldiv_t
-.IP
+.RS
+.PP
 Include:
 .IR <stdlib.h> .
-.IP
+.PP
 .EX
 typedef struct {
     long    quot; /* Quotient */
     long    rem;  /* Remainder */
 } ldiv_t;
 .EE
-.IP
+.PP
 It is the type of the value returned by the
 .BR ldiv (3)
 function.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR ldiv (3)
+.RE
 .\"------------------------------------- lldiv_t ----------------------/
 .TP
 .I lldiv_t
-.IP
+.RS
+.PP
 Include:
 .IR <stdlib.h> .
-.IP
+.PP
 .EX
 typedef struct {
     long long   quot; /* Quotient */
     long long   rem;  /* Remainder */
 } lldiv_t;
 .EE
-.IP
+.PP
 It is the type of the value returned by the
 .BR lldiv (3)
 function.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR lldiv (3)
+.RE
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-.IP
+.RS
+.PP
 Include
 .IR <sys/types.h> ;
 or
@@ -431,7 +452,7 @@ or
 .I <unistd.h>
 or
 .IR <utmpx.h> .
-.IP
+.PP
 This type is used for storing process IDs, process group IDs, and session IDs.
 According to POSIX, it shall be a signed integer type,
 and the implementation shall support one or more programming environments
@@ -439,9 +460,9 @@ where the width of
 .I pid_t
 is no greater than the width of the type
 .IR long .
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR fork (2),
 .BR getpid (2),
@@ -455,20 +476,22 @@ See also:
 .BR waitpid (2),
 .BR sigqueue (3),
 .BR credentials (7),
+.RE
 .\"------------------------------------- ptrdiff_t --------------------/
 .TP
 .I ptrdiff_t
-.IP
+.RS
+.PP
 Include:
 .IR <stddef.h> .
-.IP
+.PP
 Used for a count of elements, and array indices.
 It is the result of subtracting two pointers.
 According to the C language standard, it shall be a signed integer type
 capable of storing values in the range
 .RB [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
-.IP
+.PP
 The length modifier for
 .I ptrdiff_t
 for the
@@ -484,21 +507,23 @@ or
 for printing
 .I ptrdiff_t
 values.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also the
 .I size_t
 and
 .I ssize_t
 types in this page.
+.RE
 .\"------------------------------------- regmatch_t -------------------/
 .TP
 .I regmatch_t
-.IP
+.RS
+.PP
 Include:
 .IR <regex.h> .
-.IP
+.PP
 .EX
 typedef struct {
     regoff_t    rm_so; /* Byte offset from start of string
@@ -508,36 +533,38 @@ typedef struct {
                           substring */
 } regmatch_t;
 .EE
-.IP
+.PP
 This is a structure type used in regular expression matching.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR regexec (3)
+.RE
 .\"------------------------------------- regoff_t ---------------------/
 .TP
 .I regoff_t
-.IP
+.RS
+.PP
 Include:
 .IR <regex.h> .
-.IP
+.PP
 According to POSIX, it shall be a signed integer type
 capable of storing the largest value that can be stored in either a
 .I ptrdiff_t
 type or a
 .I ssize_t
 type.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 Notes: Prior to POSIX.1-2008, the type was capable of storing
 the largest value that can be stored in either an
 .I off_t
 type or a
 .I ssize_t
 type.
-.IP
+.PP
 See also the
 .I regmatch_t
 structure and the
@@ -545,10 +572,12 @@ structure and the
 and
 .I ssize_t
 types in this page.
+.RE
 .\"------------------------------------- sigevent ---------------------/
 .TP
 .I sigevent
-.IP
+.RS
+.PP
 Include:
 .IR <signal.h> ;
 or
@@ -557,7 +586,7 @@ or
 .I <mqueue.h>
 or
 .IR <time.h> .
-.IP
+.PP
 .EX
 struct sigevent {
     int             sigev_notify; /* Notification type */
@@ -569,12 +598,12 @@ struct sigevent {
                                   /* Notification attributes */
 };
 .EE
-.IP
+.PP
 For further details about this type, see
 .BR sigevent (7).
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 Notes:
 .I <aio.h>
 and
@@ -582,25 +611,27 @@ and
 define
 .I sigevent
 since POSIX.1-2008.
-.IP
+.PP
 See also:
 .BR timer_create (2),
 .BR getaddrinfo_a (3),
 .BR lio_listio (3),
 .BR mq_notify (3)
-.IP
+.PP
 See also the
 .I aiocb
 structure in this page.
+.RE
 .\"------------------------------------- siginfo_t --------------------/
 .TP
 .I siginfo_t
-.IP
+.RS
+.PP
 Include:
 .IR <signal.h> ;
 or
 .IR <sys/wait.h> .
-.IP
+.PP
 .EX
 typedef struct {
     int      si_signo;  /* Signal number */
@@ -612,36 +643,38 @@ typedef struct {
     union sigval si_value;  /* Signal value */
 } siginfo_t;
 .EE
-.IP
+.PP
 Information associated with a signal.
 For further details on this structure
 (including additional, Linux-specific fields), see
 .BR sigaction (2).
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR pidfd_send_signal (2),
 .BR rt_sigqueueinfo (2),
 .BR sigaction (2),
 .BR sigwaitinfo (2),
 .BR psiginfo (3)
+.RE
 .\"------------------------------------- sigset_t ---------------------/
 .TP
 .I sigset_t
-.IP
+.RS
+.PP
 Include:
 .IR <signal.h> ;
 or
 .I <spawn.h>
 or
 .IR <sys/select.h> .
-.IP
+.PP
 This is a type that represents a set of signals.
 According to POSIX, this shall be an integer or structure type.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR epoll_pwait (2),
 .BR ppoll (2),
@@ -653,29 +686,31 @@ See also:
 .BR sigsuspend (2),
 .BR sigwaitinfo (2),
 .BR signal (7)
+.RE
 .\"------------------------------------- sigval -----------------------/
 .TP
 .I sigval
-.IP
+.RS
+.PP
 Include:
 .IR <signal.h> .
-.IP
+.PP
 .EX
 union sigval {
     int     sigval_int; /* Integer value */
     void   *sigval_ptr; /* Pointer value */
 };
 .EE
-.IP
+.PP
 Data passed with a signal.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR pthread_sigqueue (3),
 .BR sigqueue (3),
 .BR sigevent (7)
-.IP
+.PP
 See also the
 .I sigevent
 structure
@@ -683,10 +718,12 @@ and the
 .I siginfo_t
 type
 in this page.
+.RE
 .\"------------------------------------- size_t -----------------------/
 .TP
 .I size_t
-.IP
+.RS
+.PP
 Include:
 .I <stddef.h>
 or
@@ -741,7 +778,7 @@ or
 .I <wchar.h>
 or
 .IR <wordexp.h> .
-.IP
+.PP
 Used for a count of bytes.  It is the result of the
 .I sizeof
 operator.
@@ -755,7 +792,7 @@ where the width of
 .I size_t
 is no greater than the width of the type
 .IR long .
-.IP
+.PP
 The length modifier for
 .I size_t
 for the
@@ -771,9 +808,9 @@ or
 for printing
 .I size_t
 values.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 Notes:
 .IR <aio.h> ,
 .IR <glob.h> ,
@@ -787,7 +824,7 @@ and
 define
 .I size_t
 since POSIX.1-2008.
-.IP
+.PP
 See also:
 .BR read (2),
 .BR write (2),
@@ -798,16 +835,18 @@ See also:
 .BR memcpy (3),
 .BR memset (3),
 .BR offsetof (3)
-.IP
+.PP
 See also the
 .I ptrdiff_t
 and
 .I ssize_t
 types in this page.
+.RE
 .\"------------------------------------- ssize_t ----------------------/
 .TP
 .I ssize_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
@@ -826,7 +865,7 @@ or
 .I <sys/uio.h>
 or
 .IR <unistd.h> .
-.IP
+.PP
 Used for a count of bytes or an error indication.
 According to POSIX, it shall be a signed integer type
 capable of storing values at least in the range [-1,
@@ -836,7 +875,7 @@ where the width of
 .I ssize_t
 is no greater than the width of the type
 .IR long .
-.IP
+.PP
 Glibc and most other implementations provide a length modifier for
 .I ssize_t
 for the
@@ -862,9 +901,9 @@ by converting the value to
 .I intmax_t
 and using its length modifier
 .RB ( j ).
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR read (2),
 .BR readlink (2),
@@ -872,23 +911,25 @@ See also:
 .BR recv (2),
 .BR send (2),
 .BR write (2)
-.IP
+.PP
 See also the
 .I ptrdiff_t
 and
 .I size_t
 types in this page.
+.RE
 .\"------------------------------------- suseconds_t ------------------/
 .TP
 .I suseconds_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
 .I <sys/select.h>
 or
 .IR <sys/time.h> .
-.IP
+.PP
 Used for time in microseconds.
 According to POSIX, it shall be a signed integer type
 capable of storing values at least in the range [-1, 1000000],
@@ -897,16 +938,18 @@ where the width of
 .I suseconds_t
 is no greater than the width of the type
 .IR long .
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also the
 .I timeval
 structure in this page.
+.RE
 .\"------------------------------------- time_t -----------------------/
 .TP
 .I time_t
-.IP
+.RS
+.PP
 Include:
 .I <sys/types.h>
 or
@@ -927,48 +970,52 @@ or
 .I <sys/time.h>
 or
 .IR <utime.h> .
-.IP
+.PP
 Used for time in seconds.
 According to POSIX, it shall be an integer type.
-.IP
+.PP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.IP
+.PP
 Notes:
 .I <sched.h>
 defines
 .I time_t
 since POSIX.1-2008.
-.IP
+.PP
 See also:
 .BR stime (2),
 .BR time (2),
 .BR ctime (3),
 .BR difftime (3)
+.RE
 .\"------------------------------------- timer_t ----------------------/
 .TP
 .I timer_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
 .IR <time.h> .
-.IP
+.PP
 Used for timer ID returned by
 .BR timer_create (2).
 According to POSIX,
 there are no defined comparison or assignment operators for this type.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR timer_create (2),
 .BR timer_delete (2),
 .BR timer_getoverrun (2),
 .BR timer_settime (2)
+.RE
 .\"------------------------------------- timespec ---------------------/
 .TP
 .I timespec
-.IP
+.RS
+.PP
 Include:
 .IR <time.h> ;
 or
@@ -983,28 +1030,30 @@ or
 .I <sys/select.h>
 or
 .IR <sys/stat.h> .
-.IP
+.PP
 .EX
 struct timespec {
     time_t  tv_sec;  /* Seconds */
     long    tv_nsec; /* Nanoseconds */
 };
 .EE
-.IP
+.PP
 Describes times in seconds and nanoseconds.
-.IP
+.PP
 Conforming to: C11 and later; POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
 .BR nanosleep (2),
 .BR timerfd_gettime (2),
 .BR timer_gettime (2)
+.RE
 .\"------------------------------------- timeval ----------------------/
 .TP
 .I timeval
-.IP
+.RS
+.PP
 Include:
 .IR <sys/time.h> ;
 or
@@ -1013,18 +1062,18 @@ or
 .I <sys/select.h>
 or
 .IR <utmpx.h> .
-.IP
+.PP
 .EX
 struct timeval {
     time_t      tv_sec;  /* Seconds */
     suseconds_t tv_usec; /* Microseconds */
 };
 .EE
-.IP
+.PP
 Describes times in seconds and microseconds.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR gettimeofday (2),
 .BR select (2),
@@ -1032,10 +1081,12 @@ See also:
 .BR adjtime (3),
 .BR futimes (3),
 .BR timeradd (3)
+.RE
 .\"------------------------------------- uid_t ----------------------/
 .TP
 .I uid_t
-.IP
+.RS
+.PP
 Include:
 .IR <sys/types.h> ;
 or
@@ -1050,13 +1101,13 @@ or
 .I <sys/stat.h>
 or
 .IR <unistd.h> .
-.IP
+.PP
 A type used to hold user IDs.
 According to POSIX,
 this shall be an integer type.
-.IP
+.PP
 Conforming to: POSIX.1-2001 and later.
-.IP
+.PP
 See also:
 .BR chown (2),
 .BR getuid (2),
@@ -1064,6 +1115,8 @@ See also:
 .BR getresuid (2),
 .BR getpwnam (2),
 .BR credentials (7)
+.RE
+.\"--------------------------------------------------------------------/
 .SH NOTES
 The structures described in this manual page shall contain,
 at least, the members shown in their definition, in no particular order.
-- 
2.28.0

