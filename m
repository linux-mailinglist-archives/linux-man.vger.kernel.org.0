Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDF9475AABB
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 11:28:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbjGTJ2y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 05:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbjGTJ2T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 05:28:19 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B026272A
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 02:14:23 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6b9c434fe75so475057a34.0
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 02:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689844462; x=1690449262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oOolil+UuKcsALgNW8W/Ydocyu5y14NrCMHoEJ32Zuc=;
        b=PMd35FOL/Cd+yWEa/N4Q+aS52bF/7GT+Q3nqutJQO3oRTqysZcopeYn3Il+2IkDQQt
         Z4IZuyzFy0rpcwVfTdW0PBE/j+3QG6TgHXQShjLmX2Wr9Rn2fjX8ilfOq91G8whw0O1l
         mhyrjkIo1m1vr4LGs3WeiUs2Jw9tpTropcJUIsspIj2RxAjWDy85qjQotWi/8B7tdbII
         vBKwtkvX8qEyWPqkXQgmAE3N8p9M5+C3tkkA0Axf2BXsuFmiJaNIiTDnu4U/djmAZDnL
         i6WGPT8I7qOhXV4gTw6Sg5+3K+0kor2wJet7fSUDJ7rTDVXbigdXgz7QYgQuMo/ANPLZ
         0Xdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689844462; x=1690449262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oOolil+UuKcsALgNW8W/Ydocyu5y14NrCMHoEJ32Zuc=;
        b=bUqnqeM8B1rmuhVczlGYXIg+pDyFDsTVfNKF3WJLzYgy/nJTKPvJifwq/1U1GIfCKB
         LGWfhXmHoqtPegZC5t8jjmeCfXFajBWfFvw6E0r2YfjmRvi2nU+QsnLCKdCfRoQWqTqa
         8G6vdSqL7nDM8dWZwXURnW4VqKFBNWpdU0qWssMtLYmGfpxJwuKnuVmPWjTDc6/msPbT
         49uRJejce3CA9AKiLwq3BzGrhrNj6IYP0nNhFuQNNfvB7rQ63VR4rnYzhoERcDRDBFO/
         oQFQD1zVVlplz0HxIiJaXVw4dHHlIBP4T6d60JxQogWHvZTS+K6WQ0H1yxxrDT7M7RII
         gSEQ==
X-Gm-Message-State: ABy/qLZx8h/kS0k0fqq36SS+Y4GmW9iPmfFxJl/iotD3DNwx1a9T9oUn
        QE9qS8PAC2Tn7UZANcJA5zc=
X-Google-Smtp-Source: APBJJlH3OClAxP/DKya8R8ebHUFoSSaY/WYz9BUXkWesf3gUCup4UCWRnyf8Ak96jx22jB/BJEtCnA==
X-Received: by 2002:a05:6870:e2ce:b0:1b7:60a3:42c3 with SMTP id w14-20020a056870e2ce00b001b760a342c3mr1334280oad.20.1689844462211;
        Thu, 20 Jul 2023 02:14:22 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x140-20020a4a4192000000b0055e489a7fdasm291890ooa.0.2023.07.20.02.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 02:14:21 -0700 (PDT)
Date:   Thu, 20 Jul 2023 04:14:20 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
Message-ID: <20230720091420.p43czk2o6ooxsx35@illithid>
References: <20230719041832.ulsigsjae42rqh3g@illithid>
 <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
 <20230720021311.2wyrt5tlglsxcl3a@illithid>
 <b8431b23-4554-6e1b-c3da-817d153e1ca5@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ffn25e7fxbo7rnea"
Content-Disposition: inline
In-Reply-To: <b8431b23-4554-6e1b-c3da-817d153e1ca5@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ffn25e7fxbo7rnea
Content-Type: multipart/mixed; boundary="fbxhbtxgtfuo25lf"
Content-Disposition: inline


--fbxhbtxgtfuo25lf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-07-20T10:24:18+0200, Alejandro Colomar wrote:
> A gzip works,

And it did!  I see it on lore.kernel.org.

> although in such cases of scripted patches, you can just send the
> header of the patch, and maybe the first pages to allow me to check
> the results of the script, and then I will reproduce the patch myself
> by running the script.

I did not include my annotations of the changes I observed when applying
it.  I hope this will save you some time.  Attached.

Regards,
Branden

--fbxhbtxgtfuo25lf
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="dump-annotated.diff"
Content-Transfer-Encoding: quoted-printable

Annotation key:

[MR]: Hyphenation will be suppressed by migration to `MR` macro.

[CH]: Change in hyphenation break location due to undesired change of
      hyphenation mode by former use of `.hy` request outside of tbl(1)
      data, which caused the hyphenation mode to be set to "1", which
      works suboptimally with the TeX-based hyphenation patterns groff
      has used since around 1990.  (A better value for English is 4, and
      this is used by default [unless loading of troffrc is suppressed]
      in groff 1.23.0.  I have further ideas to improve quality-of-life
      around groff hyphenation; please raise the subject on groff@gnu if
      interested.)

[HY]: New hyphenation breaks appear because I only disabled hyphenation
      in text blocks that seemed to need it; that is, in the "Interface"
      column of "MT-safety" tables, where the only cell content is a
      list of C function names.  Two text blocks in namespaces(7) were
      ordinary prose that, other things being equal, should be formatted
      ordinarily.


--- DUMP1	2023-07-19 20:18:36.754653394 -0500
+++ DUMP2	2023-07-19 20:18:48.274710984 -0500
@@ -15162,8 +15162,9 @@
=20
 SEE ALSO
        prlimit(1), dup(2), fcntl(2), fork(2), getrusage(2), mlock(2), mmap=
(2),
-       open(2), quotactl(2), sbrk(2), shmctl(2), malloc(3), sigqueue(3), u=
lim=E2=80=90
-       it(3), core(5), capabilities(7), cgroups(7), credentials(7), signal=
(7)
+       open(2),  quotactl(2),  sbrk(2),  shmctl(2),  malloc(3),   sigqueue=
(3),
+       ulimit(3),  core(5),  capabilities(7), cgroups(7), credentials(7), =
sig=E2=80=90
+       nal(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
getrlimit(2)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -26226,8 +26227,8 @@
=20
        Certain flags constants are  defined  only  if  suitable  feature  =
test
        macros  are  defined  (possibly by default): _DEFAULT_SOURCE with g=
libc
-       2.19 or later; or _BSD_SOURCE or _SVID_SOURCE in glibc 2.19 and  ea=
rli=E2=80=90
-       er.   (Employing  _GNU_SOURCE  also  suffices, and requiring that m=
acro
+       2.19 or later; or _BSD_SOURCE or _SVID_SOURCE in glibc  2.19  and  =
ear=E2=80=90
+       lier.   (Employing  _GNU_SOURCE also suffices, and requiring that m=
acro

[CH]

        specifically would have been more logical, since these  flags  are =
 all
        Linux=E2=80=90specific.)  The relevant flags are: MAP_32BIT, MAP_AN=
ONYMOUS (and
        the   synonym   MAP_ANON),   MAP_DENYWRITE,  MAP_EXECUTABLE,  MAP_F=
ILE,
@@ -51676,8 +51677,8 @@
        the  inclusion  of SS_ONSTACK in ss.ss_flags is a no=E2=80=90op).  =
On other im=E2=80=90
        plementations, and according to POSIX.1, SS_ONSTACK appears only  a=
s  a
        reported  flag  in old_ss.ss_flags.  On Linux, there is no need eve=
r to
-       specify SS_ONSTACK in ss.ss_flags, and indeed doing so should be av=
oid=E2=80=90
-       ed on portability grounds: various  other  systems  give  an  error=
  if
+       specify SS_ONSTACK in  ss.ss_flags,  and  indeed  doing  so  should=
  be
+       avoided  on portability grounds: various other systems give an erro=
r if

[CH]

        SS_ONSTACK is specified in ss.ss_flags.
=20
 EXAMPLES
@@ -64251,19 +64252,20 @@
        These functions make some assumptions about how a function=E2=80=99=
s return ad=E2=80=90
        dress is stored on the stack.  Note the following:
=20
-       =E2=80=A2  Omission of the frame pointers (as implied by any of gcc=
(1)=E2=80=99s nonze=E2=80=90
-          ro optimization levels) may cause these assumptions to be violat=
ed.
+       =E2=80=A2  Omission  of  the  frame  pointers  (as  implied  by any=
 of gcc(1)=E2=80=99s
+          nonzero optimization levels) may cause these assumptions to be  =
vio=E2=80=90
+          lated.

[CH]

=20
        =E2=80=A2  Inlined functions do not have stack frames.
=20
        =E2=80=A2  Tail=E2=80=90call optimization causes one stack frame to=
 replace another.
=20
-       =E2=80=A2  backtrace() and backtrace_symbols_fd() don=E2=80=99t cal=
l malloc() explicit=E2=80=90
-          ly, but they are part of libgcc, which gets loaded dynamically  =
when
-          first  used.   Dynamic loading usually triggers a call to malloc=
(3).
-          If you need certain calls to these two  functions  to  not  allo=
cate
-          memory  (in  signal  handlers,  for  example), you need to make =
sure
-          libgcc is loaded beforehand.
+       =E2=80=A2  backtrace()  and  backtrace_symbols_fd() don=E2=80=99t c=
all malloc() explic=E2=80=90
+          itly, but they are part of libgcc,  which  gets  loaded  dynamic=
ally
+          when  first  used.   Dynamic loading usually triggers a call to =
mal=E2=80=90
+          loc(3).  If you need certain calls to these two functions to not=
 al=E2=80=90
+          locate memory (in signal handlers, for example), you  need  to  =
make
+          sure libgcc is loaded beforehand.

[CH]
[MR] (malloc(3))

=20
        The symbol names may be unavailable without the use of  special  li=
nker
        options.   For systems using the GNU linker, it is necessary to use=
 the
@@ -65238,8 +65240,8 @@
        by  a  correct program, then it may remove the bzero() call altoget=
her.
        This is a problem if the intent of the bzero() call was to erase se=
nsi=E2=80=90
        tive data (e.g., passwords) to prevent the possibility  that  the  =
data
-       was  leaked  by  an incorrect or compromised program.  Calls to exp=
lic=E2=80=90
-       it_bzero() are never optimized away by the compiler.
+       was leaked by an  incorrect  or  compromised  program.   Calls  to =
 ex=E2=80=90
+       plicit_bzero() are never optimized away by the compiler.

[CH]

=20
        The explicit_bzero() function does not solve  all  problems  associ=
ated
        with erasing sensitive data:
@@ -66177,8 +66179,8 @@
        rno  to  ERANGE,  or raise an FE_OVERFLOW exception).  In practice,=
 the
        result cannot overflow on any current machine, so  this  error=E2=
=80=90handling
        stuff is just nonsense.  (More precisely, overflow can happen only =
when
-       the maximum value of the exponent is smaller than the number of man=
tis=E2=80=90
-       sa  bits.   For  the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point
+       the maximum value of the exponent is smaller than the  number  of  =
man=E2=80=90
+       tissa bits.  For the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point

[CH]

        numbers the maximum value of the exponent is 127 (respectively,  10=
23),
        and  the  number of mantissa bits including the implicit bit is 24 =
(re=E2=80=90
        spectively, 53).)
@@ -68463,10 +68465,10 @@
        and does not employ the  double=E2=80=90fork  technique  (i.e.,  fo=
rk(2),  set=E2=80=90
        sid(2),  fork(2)) that is necessary to ensure that the resulting da=
emon
        process is not a session leader.  Instead, the resulting  daemon  i=
s  a
-       session  leader.  On systems that follow System V semantics (e.g., =
Lin=E2=80=90
-       ux), this means that if the daemon opens a terminal that is not alr=
eady
-       a controlling terminal for another session, then that terminal will=
 in=E2=80=90
-       advertently become the controlling terminal for the daemon.
+       session leader.  On systems  that  follow  System  V  semantics  (e=
=2Eg.,
+       Linux),  this means that if the daemon opens a terminal that is not=
 al=E2=80=90
+       ready a controlling terminal for another session,  then  that  term=
inal
+       will inadvertently become the controlling terminal for the daemon.

[CH]

=20
 SEE ALSO
        fork(2), setsid(2), daemon(7), logrotate(8)
@@ -69169,10 +69171,10 @@
        dlpi_phdr, and dlpi_phnum in addition to other  implementation=E2=
=80=90specific
        fields.
=20
-       Future  versions  of the C library may add further fields to the dl=
_ph=E2=80=90
-       dr_info structure; in that event, the size argument provides  a  me=
cha=E2=80=90
-       nism  for  the callback function to discover whether it is running =
on a
-       system with added fields.
+       Future versions of  the  C  library  may  add  further  fields  to =
 the
+       dl_phdr_info  structure;  in  that  event, the size argument provid=
es a
+       mechanism for the callback function to discover whether it  is  run=
ning
+       on a system with added fields.

[CH]

=20
 STANDARDS
        None.
@@ -70202,13 +70204,13 @@
=20
 NOTES
        There  are  several  scenarios  when  the address of a global symbo=
l is
-       NULL.  For example, a symbol can be placed at zero address by the l=
ink=E2=80=90
-       er, via a linker script or with --defsym  command=E2=80=90line  opt=
ion.   Unde=E2=80=90
-       fined weak symbols also have NULL value.  Finally, the symbol value=
 may
-       be the result of a GNU indirect function (IFUNC) resolver function =
that
-       returns  NULL  as the resolved value.  In the latter case, dlsym() =
also
-       returns NULL without error.  However, in the former two cases, the =
 be=E2=80=90
-       havior  of  GNU  dynamic  linker is inconsistent: relocation proces=
sing
+       NULL.   For  example,  a  symbol  can  be placed at zero address by=
 the
+       linker, via a linker script or with --defsym command=E2=80=90line o=
ption.   Un=E2=80=90
+       defined  weak  symbols also have NULL value.  Finally, the symbol v=
alue
+       may be the result of a GNU indirect function (IFUNC) resolver  func=
tion
+       that  returns  NULL as the resolved value.  In the latter case, dls=
ym()
+       also returns NULL without error.  However, in the former two cases,=
 the
+       behavior of GNU dynamic linker is inconsistent:  relocation  proces=
sing

[CH]

        succeeds and the symbol can be observed to have NULL value, but dls=
ym()
        fails and dlerror() indicates a lookup error.
=20
@@ -72116,8 +72118,8 @@
        AT_EACCESS and AT_SYMLINK_NOFOLLOW.
=20
 SEE ALSO
-       access(2), chmod(2), chown(2), faccessat(2), open(2), setgid(2),  s=
etu=E2=80=90
-       id(2), stat(2), credentials(7), path_resolution(7)
+       access(2),  chmod(2),  chown(2),  faccessat(2), open(2), setgid(2),=
 se=E2=80=90
+       tuid(2), stat(2), credentials(7), path_resolution(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                       e=
uidaccess(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -72414,13 +72416,13 @@
=20
        Except in the above cases, where the signalled processes may  be  c=
hil=E2=80=90
        dren  of  the terminating process, termination of a process does no=
t in
-       general cause a signal to be sent to children of that process.   Ho=
wev=E2=80=90
-       er,  a  process  can  use  the  prctl(2)  PR_SET_PDEATHSIG operatio=
n to
+       general  cause  a  signal to be sent to children of that process.  =
How=E2=80=90
+       ever, a process can use  the  prctl(2)  PR_SET_PDEATHSIG  operation=
  to

[CH]

        arrange that it receives a signal if its parent terminates.
=20
 SEE ALSO
-       _exit(2), get_robust_list(2), setpgid(2),  wait(2),  atexit(3),  on=
_ex=E2=80=90
-       it(3), tmpfile(3)
+       _exit(2),    get_robust_list(2),    setpgid(2),   wait(2),   atexit=
(3),
+       on_exit(3), tmpfile(3)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
     exit(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -73545,9 +73547,9 @@
=20
 NOTES
        It  is not advisable to mix calls to input functions from the stdio=
 li=E2=80=90
-       brary with low=E2=80=90level calls to read(2) for the file descript=
or associat=E2=80=90
-       ed with the input stream; the results will be undefined and very pr=
oba=E2=80=90
-       bly not what you want.
+       brary  with  low=E2=80=90level calls to read(2) for the file descri=
ptor associ=E2=80=90
+       ated with the input stream; the results  will  be  undefined  and  =
very
+       probably not what you want.

[CH]

=20
 SEE ALSO
        read(2), write(2), ferror(3), fgetwc(3), fgetws(3), fopen(3), fread=
(3),
@@ -73823,8 +73825,8 @@
        it is reasonable to expect that fgetws() will actually read a multi=
byte
        string from the stream and then convert it to a wide=E2=80=90charac=
ter string.
=20
-       This function is unreliable, because it does not permit to deal pro=
per=E2=80=90
-       ly with null wide characters that may be present in the input.
+       This function is unreliable, because it does not permit to  deal  p=
rop=E2=80=90
+       erly with null wide characters that may be present in the input.

[CH]

=20
 SEE ALSO
        fgetwc(3), unlocked_stdio(3)
@@ -74117,8 +74119,8 @@
        rno  to  ERANGE,  or raise an FE_OVERFLOW exception).  In practice,=
 the
        result cannot overflow on any current machine, so  this  error=E2=
=80=90handling
        stuff is just nonsense.  (More precisely, overflow can happen only =
when
-       the maximum value of the exponent is smaller than the number of man=
tis=E2=80=90
-       sa  bits.   For  the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point
+       the  maximum  value  of the exponent is smaller than the number of =
man=E2=80=90
+       tissa bits.  For the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point

[CH]

        numbers the maximum value of the exponent is 127 (respectively,  10=
23),
        and  the  number of mantissa bits including the implicit bit is 24 =
(re=E2=80=90
        spectively, 53).)
@@ -74407,10 +74409,10 @@
=20
 BUGS
        Before  glibc 2.22, if size is specified as zero, fmemopen() fails =
with
-       the error EINVAL.  It would be more consistent if this case success=
ful=E2=80=90
-       ly created a stream that then returned end=E2=80=90of=E2=80=90file =
on the first attempt
-       at reading; since glibc 2.22, the glibc  implementation  provides  =
that
-       behavior.
+       the error EINVAL.  It would be more consistent if  this  case  succ=
ess=E2=80=90
+       fully  created a stream that then returned end=E2=80=90of=E2=80=90f=
ile on the first at=E2=80=90
+       tempt at reading; since glibc 2.22, the glibc  implementation  prov=
ides
+       that behavior.

[CH]

=20
        Before  glibc 2.22, specifying append mode ("a" or "a+") for fmemop=
en()
        sets the initial buffer position to the first null byte,  but  (if =
 the
@@ -82129,10 +82131,10 @@
=20
 VERSIONS
        POSIX specifies that the argv array argument should be const, but t=
hese
-       functions permute its elements unless the environment  variable  PO=
SIX=E2=80=90
-       LY_CORRECT is set.  const is used in the actual prototype to be com=
pat=E2=80=90
-       ible with other systems; however, this page doesn=E2=80=99t show th=
e qualifier,
-       to avoid confusing readers.
+       functions  permute  its  elements  unless  the   environment   vari=
able
+       POSIXLY_CORRECT  is  set.   const is used in the actual prototype t=
o be
+       compatible with other systems; however,  this  page  doesn=E2=80=99=
t  show  the
+       qualifier, to avoid confusing readers.

[CH]

=20
 STANDARDS
        getopt()
@@ -82157,8 +82159,8 @@
 NOTES
        A  program  that  scans  multiple argument vectors, or rescans the =
same
        vector more than once, and wants to make use of GNU extensions such=
  as
-       '+'  and  '-' at the start of optstring, or changes the value of PO=
SIX=E2=80=90
-       LY_CORRECT between  scans,  must  reinitialize  getopt()  by  reset=
ting
+       '+'  and  '-'  at  the  start  of  optstring,  or  changes the valu=
e of
+       POSIXLY_CORRECT between scans, must reinitialize getopt() by  reset=
ting

[CH]

        optind  to  0, rather than the traditional value of 1.  (Resetting =
to 0
        forces the  invocation  of  an  internal  initialization  routine  =
that
        rechecks POSIXLY_CORRECT and checks for GNU extensions in optstring=
=2E)
@@ -86999,8 +87001,8 @@
        This is still what you will get if _GNU_SOURCE is  defined  before =
 in=E2=80=90
        cluding <search.h>.
=20
-       The location of the prototypes for these functions differs among se=
ver=E2=80=90
-       al  versions  of  UNIX.   The above is the POSIX version.  Some sys=
tems
+       The  location  of the prototypes for these functions differs among =
sev=E2=80=90
+       eral versions of UNIX.  The above is the POSIX version.   Some  sys=
tems

[CH]

        place them in <string.h>.
=20
 STANDARDS
@@ -89391,9 +89393,9 @@
 SEE ALSO
        fcntl(2), flock(2)
=20
-       locks.txt and mandatory-locking.txt in the Linux kernel source dire=
cto=E2=80=90
-       ry Documentation/filesystems (on older kernels, these files are dir=
ect=E2=80=90
-       ly  under  the  Documentation  directory,  and mandatory-locking.tx=
t is
+       locks.txt and mandatory-locking.txt in the Linux kernel  source  di=
rec=E2=80=90
+       tory  Documentation/filesystems  (on older kernels, these files are=
 di=E2=80=90
+       rectly under the Documentation directory, and mandatory-locking.txt=
  is

[CH]

        called mandatory.txt)
=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
    lockf(3)
@@ -90237,20 +90239,20 @@
        use POSIX threads instead.
=20
 NOTES
-       The interpretation of ucp->uc_stack is just as in sigaltstack(2), n=
ame=E2=80=90
-       ly,  this  struct  contains the start and length of a memory area t=
o be
-       used as the stack, regardless of the direction of growth of the  st=
ack.
-       Thus,  it is not necessary for the user program to worry about this=
 di=E2=80=90
-       rection.
+       The interpretation of  ucp->uc_stack  is  just  as  in  sigaltstack=
(2),
+       namely,  this  struct contains the start and length of a memory are=
a to
+       be used as the stack, regardless of the  direction  of  growth  of =
 the
+       stack.   Thus,  it is not necessary for the user program to worry a=
bout
+       this direction.

[CH]

=20
        On architectures where int and pointer types are the same  size  (e=
=2Eg.,
        x86=E2=80=9032, where both types are 32 bits), you may be able to g=
et away with
-       passing  pointers as arguments to makecontext() following argc.  Ho=
wev=E2=80=90
-       er, doing this is not guaranteed to be portable, is undefined accor=
ding
-       to the standards, and won=E2=80=99t work on architectures  where  p=
ointers  are
-       larger  than  ints.  Nevertheless, starting with glibc 2.8, glibc m=
akes
-       some changes to makecontext(), to permit this on some 64=E2=80=90bi=
t  architec=E2=80=90
-       tures (e.g., x86=E2=80=9064).
+       passing  pointers  as  arguments to makecontext() following argc.  =
How=E2=80=90
+       ever, doing this is not guaranteed to be portable, is undefined acc=
ord=E2=80=90
+       ing to the standards, and won=E2=80=99t work on  architectures  whe=
re  pointers
+       are  larger  than  ints.   Nevertheless, starting with glibc 2.8, g=
libc
+       makes some changes to makecontext(), to permit this on some 64=E2=
=80=90bit  ar=E2=80=90
+       chitectures (e.g., x86=E2=80=9064).

[CH]

=20
 EXAMPLES
        The  example program below demonstrates the use of getcontext(3), m=
ake=E2=80=90
@@ -90512,8 +90514,8 @@
=20
 EXAMPLES
        The program below employs mallinfo2()  to  retrieve  memory  alloca=
tion
-       statistics before and after allocating and freeing some blocks of m=
emo=E2=80=90
-       ry.  The statistics are displayed on standard output.
+       statistics  before and after allocating and freeing some blocks of =
mem=E2=80=90
+       ory.  The statistics are displayed on standard output.

[CH]

=20
        The  first  two  command=E2=80=90line  arguments specify the number=
 and size of
        blocks to be allocated with malloc(3).
@@ -90832,8 +90834,8 @@
        tions; see "Replacing malloc" in the glibc manual for details.
=20
        Crashes in memory allocators are almost always related to heap  cor=
rup=E2=80=90
-       tion, such as overflowing an allocated chunk or freeing the same po=
int=E2=80=90
-       er twice.
+       tion, such as overflowing  an  allocated  chunk  or  freeing  the  =
same
+       pointer twice.

[CH]

=20
        The  malloc()  implementation is tunable via environment variables;=
 see
        mallopt(3) for details.
@@ -93728,8 +93730,8 @@
               glibc 2.4.  POSIX.1=E2=80=902008.
=20
 SEE ALSO
-       mkfifo(1), close(2), open(2), read(2), stat(2), umask(2), write(2),=
 fi=E2=80=90
-       fo(7)
+       mkfifo(1), close(2), open(2),  read(2),  stat(2),  umask(2),  write=
(2),
+       fifo(7)

[CH] (but would also be addressed by [MR])

=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
   mkfifo(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -96025,8 +96027,8 @@
        None.
=20
 HISTORY
-       SunOS  4, glibc.  Removed in Solaris (SunOS 5).  Use the standard a=
tex=E2=80=90
-       it(3) instead.
+       SunOS 4, glibc.  Removed  in  Solaris  (SunOS  5).   Use  the  stan=
dard
+       atexit(3) instead.

[CH] (but would also be addressed by [MR])

=20
 CAVEATS
        By the time function is executed, stack (auto)  variables  may  alr=
eady
@@ -98160,8 +98162,8 @@
=20
        Code  such as printf(foo); often indicates a bug, since foo may con=
tain
        a % character.  If foo comes from untrusted user input, it may  con=
tain
-       %n, causing the printf() call to write to memory and creating a sec=
uri=E2=80=90
-       ty hole.
+       %n, causing the printf() call to write to memory and creating  a  s=
ecu=E2=80=90
+       rity hole.

[CH]

=20
 EXAMPLES
        To print Pi to five decimal places:
@@ -99386,10 +99388,10 @@
=20
 NOTES
        The  PTHREAD_SCOPE_SYSTEM  contention  scope typically indicates th=
at a
-       user=E2=80=90space thread is bound directly to a single kernel=E2=
=80=90scheduling enti=E2=80=90
-       ty.  This is the case on Linux for the obsolete LinuxThreads  imple=
men=E2=80=90
-       tation and the modern NPTL implementation, which are both 1:1 threa=
ding
-       implementations.
+       user=E2=80=90space thread is bound directly to a single  kernel=E2=
=80=90scheduling  en=E2=80=90
+       tity.   This  is the case on Linux for the obsolete LinuxThreads im=
ple=E2=80=90
+       mentation and the  modern  NPTL  implementation,  which  are  both =
 1:1
+       threading implementations.

[CH]

=20
        POSIX.1  specifies that the default contention scope is implementat=
ion=E2=80=90
        defined.
@@ -99466,8 +99468,8 @@
 NOTES
        The signal mask attribute determines the signal mask that will  be =
 as=E2=80=90
        signed to a thread created using the thread attributes object attr.=
  If
-       this attribute is not set, then a thread created using attr will in=
her=E2=80=90
-       it a copy of the creating thread=E2=80=99s signal mask.
+       this  attribute  is  not set, then a thread created using attr will=
 in=E2=80=90
+       herit a copy of the creating thread=E2=80=99s signal mask.

[CH]

=20
        For  more  details on signal masks, see sigprocmask(2).  For a desc=
rip=E2=80=90
        tion of a set of macros that can be used to manipulate and inspect =
sig=E2=80=90
@@ -100684,8 +100686,8 @@
=20
 NOTES
        The pthread_equal() function is necessary because thread IDs should=
  be
-       considered opaque: there is no portable way for applications to dir=
ect=E2=80=90
-       ly compare two pthread_t values.
+       considered opaque: there is no portable way  for  applications  to =
 di=E2=80=90
+       rectly compare two pthread_t values.

[CH]

=20
 SEE ALSO
        pthread_create(3), pthread_self(3), pthreads(7)
@@ -101361,8 +101363,8 @@
        }
=20
 SEE ALSO
-       clock_gettime(2), clock_settime(2), timer_create(2), clock_getcpucl=
ock=E2=80=90
-       id(3), pthread_self(3), pthreads(7), time(7)
+       clock_gettime(2),  clock_settime(2),   timer_create(2),   clock_get=
cpu=E2=80=90
+       clockid(3), pthread_self(3), pthreads(7), time(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)            pthread_getc=
puclockid(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -101443,8 +101445,8 @@
        threads (or processes).
=20
        There is no pthreads analog of waitpid(-1, &status, 0), that is,  "=
join
-       with any terminated thread".  If you believe you need this function=
ali=E2=80=90
-       ty, you probably need to rethink your application design.
+       with any terminated thread".  If you believe you need this  functio=
nal=E2=80=90
+       ity, you probably need to rethink your application design.

[CH]

=20
        All of the threads in a process are peers: any thread can join with=
 any
        other thread in the process.
@@ -101453,8 +101455,8 @@
        See pthread_create(3).
=20
 SEE ALSO
-       pthread_cancel(3),  pthread_create(3),  pthread_detach(3),  pthread=
_ex=E2=80=90
-       it(3), pthread_tryjoin_np(3), pthreads(7)
+       pthread_cancel(3),         pthread_create(3),        pthread_detach=
(3),
+       pthread_exit(3), pthread_tryjoin_np(3), pthreads(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                     pth=
read_join(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -102729,13 +102731,13 @@
        In  the  following  run,  the main thread sets its scheduling polic=
y to
        SCHED_FIFO with a priority of 10, and initializes a  thread  attrib=
utes
        object  with a scheduling policy attribute of SCHED_RR and a schedu=
ling
-       priority attribute of 20.  The program  then  sets  (using  pthread=
_at=E2=80=90
-       tr_setinheritsched(3))  the  inherit  scheduler attribute of the th=
read
-       attributes object to PTHREAD_EXPLICIT_SCHED, meaning that threads  =
cre=E2=80=90
-       ated  using this attributes object should take their scheduling att=
rib=E2=80=90
-       utes from the thread attributes object.  The  program  then  create=
s  a
-       thread using the thread attributes object, and that thread displays=
 its
-       scheduling policy and priority.
+       priority   attribute   of   20.    The   program   then   sets   (u=
sing
+       pthread_attr_setinheritsched(3)) the inherit scheduler attribute of=
 the
+       thread   attributes  object  to  PTHREAD_EXPLICIT_SCHED,  meaning  =
that
+       threads created using this attributes object should take their sche=
dul=E2=80=90
+       ing attributes from the thread attributes  object.   The  program  =
then
+       creates  a  thread  using the thread attributes object, and that th=
read
+       displays its scheduling policy and priority.

[CH] (but the first hyphenation break would also be addressed by [MR])

=20
            $ su      # Need privilege to set real-time scheduling policies
            Password:
@@ -102750,8 +102752,8 @@
            Scheduler attributes of new thread
                policy=3DSCHED_RR, priority=3D20
=20
-       In the above output, one can see that the scheduling policy and pri=
ori=E2=80=90
-       ty  were  taken  from the values specified in the thread attributes=
 ob=E2=80=90
+       In the above output, one can see that the scheduling policy and  pr=
ior=E2=80=90
+       ity  were  taken from the values specified in the thread attributes=
 ob=E2=80=90

[CH]

        ject.
=20
        The next run is the same as  the  previous,  except  that  the  inh=
erit
@@ -102771,8 +102773,8 @@
            Scheduler attributes of new thread
                policy=3DSCHED_FIFO, priority=3D10
=20
-       In the above output, one can see that the scheduling policy and pri=
ori=E2=80=90
-       ty were taken from the creating thread, rather than the thread  att=
rib=E2=80=90
+       In the above output, one can see that the scheduling policy and  pr=
ior=E2=80=90
+       ity were taken from the creating thread, rather than the thread att=
rib=E2=80=90

[CH]

        utes object.
=20
        Note that if we had omitted the -i i option, the output would have =
been
@@ -103572,9 +103574,9 @@
 BUGS
        The pthread_timedjoin_np() function measures time by internally  ca=
lcu=E2=80=90
        lating  a  relative  sleep  interval  that is then measured against=
 the
-       CLOCK_MONOTONIC clock instead of the CLOCK_REALTIME clock.  Consequ=
ent=E2=80=90
-       ly, the timeout is unaffected by discontinuous changes to the CLOCK=
_RE=E2=80=90
-       ALTIME clock.
+       CLOCK_MONOTONIC clock instead  of  the  CLOCK_REALTIME  clock.   Co=
nse=E2=80=90
+       quently,  the  timeout  is  unaffected  by discontinuous changes to=
 the
+       CLOCK_REALTIME clock.

[CH]

=20
 EXAMPLES
        The following code waits to join for up to 5 seconds:
@@ -104528,9 +104530,9 @@
 NOTES
        Random=E2=80=90number  generation  is a complex topic.  Numerical R=
ecipes in C:
        The Art of Scientific Computing (William H. Press, Brian  P.  Flann=
ery,
-       Saul A. Teukolsky, William T. Vetterling; New York: Cambridge Unive=
rsi=E2=80=90
-       ty Press, 2007, 3rd ed.)  provides an excellent discussion of pract=
ical
-       random=E2=80=90number generation issues in Chapter 7 (Random Number=
s).
+       Saul  A.  Teukolsky, William T. Vetterling; New York: Cambridge Uni=
ver=E2=80=90
+       sity Press, 2007, 3rd ed.)  provides an excellent discussion of pra=
cti=E2=80=90
+       cal random=E2=80=90number generation issues in Chapter 7 (Random Nu=
mbers).

[CH]

=20
        For  a more theoretical discussion which also covers many practical=
 is=E2=80=90
        sues in depth, see Chapter 3 (Random Numbers) in Donald E. Knuth=E2=
=80=99s  The
@@ -105008,10 +105010,10 @@
        unspecified size, with at most NAME_MAX characters preceding the te=
rmi=E2=80=90
        nating null byte ('\0').
=20
-       POSIX.1 explicitly notes that this field should not be used as an l=
val=E2=80=90
-       ue.   The  standard also notes that the use of sizeof(d_name) is in=
cor=E2=80=90
-       rect; use strlen(d_name) instead.  (On some systems, this field is =
 de=E2=80=90
-       fined  as  char  d_name[1]!)   By  implication,  the  use sizeof(st=
ruct
+       POSIX.1 explicitly notes that this field  should  not  be  used  as=
  an
+       lvalue.   The standard also notes that the use of sizeof(d_name) is=
 in=E2=80=90
+       correct; use strlen(d_name) instead.  (On some systems, this  field=
  is
+       defined  as  char  d_name[1]!)   By  implication, the use sizeof(st=
ruct
        dirent) to capture the size of the record including the size of  d_=
name
        is also incorrect.

[CH]

=20
@@ -105021,8 +105023,8 @@
=20
        returns  the value 255 for most filesystems, on some filesystems (e=
=2Eg.,
        CIFS, Windows SMB servers), the null=E2=80=90terminated filename th=
at is  (cor=E2=80=90
-       rectly) returned in d_name can actually exceed this size.  In such =
cas=E2=80=90
-       es,  the  d_reclen  field will contain a value that exceeds the siz=
e of
+       rectly)  returned  in  d_name  can  actually exceed this size.  In =
such
+       cases, the d_reclen field will contain a value that exceeds the siz=
e of

[CH]

        the glibc dirent structure shown above.
=20
 STANDARDS
@@ -106501,8 +106503,8 @@
        rno  to  ERANGE,  or raise an FE_OVERFLOW exception).  In practice,=
 the
        result cannot overflow on any current machine, so  this  error=E2=
=80=90handling
        stuff is just nonsense.  (More precisely, overflow can happen only =
when
-       the maximum value of the exponent is smaller than the number of man=
tis=E2=80=90
-       sa  bits.   For  the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point
+       the  maximum  value  of the exponent is smaller than the number of =
man=E2=80=90
+       tissa bits.  For the IEEE=E2=80=90754 standard 32=E2=80=90bit and 6=
4=E2=80=90bit floating=E2=80=90point

[CH]

        numbers the maximum value of the exponent is 127 (respectively,  10=
23),
        and  the  number of mantissa bits including the implicit bit is 24 =
(re=E2=80=90
        spectively, 53).)
@@ -109348,11 +109350,11 @@
        mends avoiding the use of these functions from signal handlers and =
goes
        on to point out that if these functions are called from a  signal  =
han=E2=80=90
        dler  that  interrupted  a call to a non=E2=80=90async=E2=80=90sign=
al=E2=80=90safe function (or
-       some equivalent, such as the steps equivalent to exit(3) that occur=
 up=E2=80=90
-       on a return from the initial call to main()), the behavior is undef=
ined
-       if the program subsequently makes a  call  to  a  non=E2=80=90async=
=E2=80=90signal=E2=80=90safe
-       function.  The only way of avoiding undefined behavior is to ensure=
 one
-       of the following:
+       some equivalent, such as the steps equivalent  to  exit(3)  that  o=
ccur
+       upon  a  return from the initial call to main()), the behavior is u=
nde=E2=80=90
+       fined if the program subsequently makes a call to  a  non=E2=80=90a=
sync=E2=80=90signal=E2=80=90
+       safe  function.   The only way of avoiding undefined behavior is to=
 en=E2=80=90
+       sure one of the following:

[CH]

=20
        =E2=80=A2  After  long  jumping  from  the signal handler, the prog=
ram does not
           call any non=E2=80=90async=E2=80=90signal=E2=80=90safe functions=
 and does  not  return  from
@@ -109416,12 +109418,12 @@
=20
        If  locale  is an empty string, "", each part of the locale that sh=
ould
        be modified is set according to the environment variables.  The det=
ails
-       are implementation=E2=80=90dependent.  For glibc, first (regardless=
 of  catego=E2=80=90
-       ry), the environment variable LC_ALL is inspected, next the environ=
ment
-       variable  with the same name as the category (see the table above),=
 and
-       finally the environment variable LANG.  The first existing  environ=
ment
-       variable  is  used.   If its value is not a valid locale specificat=
ion,
-       the locale is unchanged, and setlocale() returns NULL.
+       are implementation=E2=80=90dependent.  For glibc, first  (regardles=
s  of  cate=E2=80=90
+       gory),  the environment variable LC_ALL is inspected, next the envi=
ron=E2=80=90
+       ment variable with the same name as the category (see the table abo=
ve),
+       and finally the environment variable LANG.  The first existing envi=
ron=E2=80=90
+       ment variable is used.  If its value is not a valid  locale  specif=
ica=E2=80=90
+       tion, the locale is unchanged, and setlocale() returns NULL.

[CH]

=20
        The locale "C" or "POSIX" is a portable locale; it exists on  all  =
con=E2=80=90
        forming systems.
@@ -109460,8 +109462,8 @@
        honored.
=20
 ATTRIBUTES
-       For an explanation of the terms used in  this  section,  see  attri=
but=E2=80=90
-       es(7).
+       For  an  explanation  of  the  terms  used in this section, see att=
rib=E2=80=90
+       utes(7).

[MR]

        =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=AC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=AC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
        =E2=94=82 Interface              =E2=94=82 Attribute     =E2=94=82 =
Value                      =E2=94=82
        =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=BC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
@@ -109836,8 +109838,8 @@
=20
    Program source: pshm_ucase.h
        The following header file is included by both programs below.  Its =
pri=E2=80=90
-       mary purpose is to define a structure that will be imposed on the m=
emo=E2=80=90
-       ry object that is shared between the two programs.
+       mary purpose is to define a structure that will be imposed on the  =
mem=E2=80=90
+       ory object that is shared between the two programs.

[CH]

=20
            #include <fcntl.h>
            #include <semaphore.h>
@@ -109870,8 +109872,8 @@
        semaphores inside the object to 0.
=20
        After  the  "send"  program has posted the first of the semaphores,=
 the
-       "bounce" program upper cases the data that has been placed in the m=
emo=E2=80=90
-       ry by the "send" program and then posts the second  semaphore  to  =
tell
+       "bounce" program upper cases the data that has been placed in the  =
mem=E2=80=90
+       ory  by  the "send" program and then posts the second semaphore to =
tell

[CH]

        the "send" program that it may now access the shared memory.
=20
            /* pshm_ucase_bounce.c
@@ -110849,8 +110851,8 @@
        See pthread_sigmask(3).
=20
 SEE ALSO
-       sigaction(2),  signalfd(2),  sigpending(2),  sigsuspend(2),  sigwai=
tin=E2=80=90
-       fo(2), sigsetops(3), signal(7)
+       sigaction(2),   signalfd(2),   sigpending(2),  sigsuspend(2),  sigw=
ait=E2=80=90
+       info(2), sigsetops(3), signal(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
  sigwait(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -114260,8 +114262,8 @@
        strftime_l()
               POSIX.1=E2=80=902008.
=20
-       There are strict inclusions between the set of conversions given in=
 AN=E2=80=90
-       SI C (unmarked), those given in the Single UNIX  Specification  (ma=
rked
+       There  are  strict  inclusions  between the set of conversions give=
n in
+       ANSI C (unmarked), those given in the Single UNIX Specification (ma=
rked

[CH]

        SU),  those  given  in  Olson=E2=80=99s timezone package (marked TZ=
), and those
        given in glibc (marked GNU), except that %+ is not supported in gli=
bc2.
        On the other hand glibc2 has several  more  extensions.   POSIX.1  =
only
@@ -114310,8 +114312,8 @@
        ^      Convert alphabetic characters in result string to uppercase.
=20
        #      Swap  the case of the result string.  (This flag works only =
with
-              certain conversion specifier characters, and of these, it is=
 on=E2=80=90
-              ly really useful with %Z.)
+              certain  conversion  specifier  characters,  and of these, i=
t is
+              only really useful with %Z.)

[CH]

=20
        An optional decimal width specifier may follow  the  (possibly  abs=
ent)
        flag.   If  the  natural  size of the field is smaller than this wi=
dth,
@@ -115457,8 +115459,8 @@
 VERSIONS
        In  the  glibc implementation, the n=E2=80=90char=E2=80=90sequence =
that optionally fol=E2=80=90
        lows "NAN" is interpreted as an integer number (with an optional =
=E2=80=990=E2=80=99 or
-       =E2=80=990x=E2=80=99 prefix to select base 8 or 16) that is to be p=
laced in the mantis=E2=80=90
-       sa component of the returned value.
+       =E2=80=990x=E2=80=99 prefix to select base 8 or 16) that is to be p=
laced  in  the  man=E2=80=90
+       tissa component of the returned value.

[CH]

=20
 STANDARDS
        C11, POSIX.1=E2=80=902008.
@@ -115710,8 +115712,8 @@
            exit(EXIT_SUCCESS);
        }
=20
-       Another example program using  strtok()  can  be  found  in  getadd=
rin=E2=80=90
-       fo_a(3).
+       Another   example  program  using  strtok()  can  be  found  in  ge=
tad=E2=80=90
+       drinfo_a(3).

[MR]

=20
 SEE ALSO
        memchr(3),  strchr(3),  string(3),  strpbrk(3),  strsep(3),  strspn=
(3),
@@ -116805,8 +116807,8 @@
                system(" -unfortunate-command-name");
=20
 SEE ALSO
-       sh(1), execve(2), fork(2), sigaction(2), sigprocmask(2),  wait(2), =
 ex=E2=80=90
-       ec(3), signal(7)
+       sh(1),   execve(2),  fork(2),  sigaction(2),  sigprocmask(2),  wait=
(2),
+       exec(3), signal(7)

[MR]

=20
 Linux man=E2=80=90pages (unreleased)        (date)                        =
   system(3)
 =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
@@ -118358,9 +118360,9 @@
        Before  glibc 2.19, the glibc implementation of these functions did=
 not
        set errno to ERANGE on an underflow range error.
=20
-       In glibc versions 2.3.3 and earlier, an argument of +0 or -0 incorr=
ect=E2=80=90
-       ly produced a domain error (errno set to EDOM and an FE_INVALID  ex=
cep=E2=80=90
-       tion raised), rather than a pole error.
+       In  glibc  versions  2.3.3  and earlier, an argument of +0 or -0 in=
cor=E2=80=90
+       rectly produced a domain error (errno set to EDOM and an FE_INVALID=
 ex=E2=80=90
+       ception raised), rather than a pole error.

[CH]

=20
 SEE ALSO
        gamma(3), lgamma(3)
@@ -120347,8 +120349,8 @@
        Only the EINVAL error return is documented by SUSv2 and POSIX.1=E2=
=80=902001.
=20
 CAVEATS
-       The interaction of this function with the SIGALRM signal, and with =
oth=E2=80=90
-       er  timer  functions  such   as   alarm(2),   sleep(3),   nanosleep=
(2),
+       The  interaction  of  this  function  with the SIGALRM signal, and =
with
+       other  timer  functions  such  as  alarm(2),  sleep(3),   nanosleep=
(2),

[CH]

        setitimer(2),  timer_create(2),  timer_delete(2),  timer_getoverrun=
(2),
        timer_gettime(2), timer_settime(2), ualarm(3) is unspecified.
=20
@@ -122641,8 +122643,8 @@
        ing their Unicode (ISO/IEC 10646) code point, but other platforms d=
on=E2=80=99t
        do this.  Also, the use of C99 universal character names  of  the  =
form
        \unnnn  does  not solve this problem.)  Therefore, in international=
ized
-       programs, the format string should consist of ASCII wide characters=
 on=E2=80=90
-       ly, or should be constructed at run time in  an  internationalized =
 way
+       programs, the format string should consist  of  ASCII  wide  charac=
ters
+       only,  or should be constructed at run time in an internationalized=
 way

[CH]

        (e.g., using gettext(3) or iconv(3), followed by mbstowcs(3)).
=20
 SEE ALSO
@@ -164342,8 +164344,8 @@
        umn  is  a  summary of the resources that are isolated by the names=
pace
        type.
        Namespace Flag            Page                  Isolates
-       Cgroup    CLONE_NEWCGROUP cgroup_namespaces(7)  Cgroup root
-                                                       directory
+       Cgroup    CLONE_NEWCGROUP cgroup_namespaces(7)  Cgroup  root di=E2=
=80=90
+                                                       rectory

[HY]

        IPC       CLONE_NEWIPC    ipc_namespaces(7)     System V IPC,
                                                        POSIX message
                                                        queues
@@ -164352,8 +164354,8 @@
                                                        etc.
        Mount     CLONE_NEWNS     mount_namespaces(7)   Mount points
        PID       CLONE_NEWPID    pid_namespaces(7)     Process IDs
-       Time      CLONE_NEWTIME   time_namespaces(7)    Boot and
-                                                       monotonic clocks
+       Time      CLONE_NEWTIME   time_namespaces(7)    Boot and monoto=E2=
=80=90
+                                                       nic clocks

[HY]

        User      CLONE_NEWUSER   user_namespaces(7)    User and group
                                                        IDs
        UTS       CLONE_NEWUTS    uts_namespaces(7)     Hostname and NIS

--fbxhbtxgtfuo25lf--

--ffn25e7fxbo7rnea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS4+usACgkQ0Z6cfXEm
bc5v8A//VcFD57fiM02dHQFG8RMzmMd9uYyhnc6WP8psgfkphqo1nTp+91mbU0Gw
55b66o15eAOBwwdRIRsVAiuOOuJM48BCTRd+bb23S10B+UAYOwYKMsJNgEMgz+od
LqIFQRehnx5xDIOYTBTYClUHipTaaNIA9CQXVgBqhwQnuR4Uxw2J0MldKFVjpaK4
CW/JROnInRsFxthuLCsxVY042GMNvKotCm85fw8aqCmLx8pa6d/X4IYFZOBu2mVn
CdTdxXd5B2pn+Cnjb+VBAGFOJcuJZHOUUqRFb9vgG5u0vJLf7opdrSSpHNEdHSG1
YK6cKI6WgFq0UXUh58QX8fagmFBNh3YicnmJAJQWiekJHaWix5nBh3JmG68Y25W7
u5qlJG3aWd5+iuI2wCpdRVUyJWRB0f9q9/ndBiyp5qNtqh+KaARXO8r7pFObG2A3
uDTljykQwFUjJ4Pxzpr4Tmv43oItjLP8TFgO7oHokZxuL7Zqt1RCHRtlPlbSRCVy
Up9higIzZsTj3BtrHGwADRffz42P44dAnJMPYzhIn5AKRoU3hEAZuiPopwhBrhMQ
uETxp1YPzUTwbnOKzcp5BemgtaX/6vmD8TYpGvR0TXqH/ayCodtJGnCPe7EPlvdN
nC7y8MENs78EMz/8J6xZ5kNHtkUjC7+oCvUi0lZA483/g5pPmvI=
=rdtF
-----END PGP SIGNATURE-----

--ffn25e7fxbo7rnea--
