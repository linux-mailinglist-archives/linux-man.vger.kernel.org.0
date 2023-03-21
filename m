Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AACEA6C3AF5
	for <lists+linux-man@lfdr.de>; Tue, 21 Mar 2023 20:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbjCUTrS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Mar 2023 15:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjCUTrQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Mar 2023 15:47:16 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FB70C673
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 12:46:48 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id y14so14898254wrq.4
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 12:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679427984;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BcaYxu8WaJAD6ON+7bC+oyg5SMP0F//LWRcRKQfoSwI=;
        b=JN6OC0Qf1pn+cyuPRKFfW0H4OAcYYRgPdi8SXGzR/wwZg2CtVTdeI8ivRuwGoR0QrN
         B+8qTgJSMmJEDrdFKPcJMC+FdW0xUSIAVIuy3w+i8U0PG1kIRspMPAXLxs0l7EU9gx7Q
         2Cp00w8WUCJlZe2OGmNwC2JCyU3eIJjpvyWTlBJ76UZqdTloDZ/CmBs/mXkHHiZwdNWZ
         SgBrrtlGdWmAQIC/re/a2PmOJ3e1ZDdXYfOLY5heowH7lEnjPzSxnhU/QeETGh+f+MeF
         3b+vgt5sxlch7Y7w04DkHWBBcSgh6z0o+GCxQeFK9RrudkYtH3mrJilqUdAnDTUn6Zvq
         +XDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679427984;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BcaYxu8WaJAD6ON+7bC+oyg5SMP0F//LWRcRKQfoSwI=;
        b=OfEAGGMPE8sq451XKEWkIJ9nxtDEoPZT8q8sknIcSEfTYSBDzHvz2BNszDSdL9kPOx
         2NIlLNx7UWknprouon4dePMYIhMO7Nj7F5QQfjyGtzT8eAi1dpjyLsYyBk20Q1h/8X0v
         pxbtHFTT6tRHY5rm+KpMbzcWiNKUdTCVhh7ImI6FC3cWCDtd5IxfPNV/nL6wTUDUpB44
         fZfjQXA7d6VTcY5wtCRb7NZrrw2diQ4dJl3xOPRym4hPb6qX5jqpib2kQ77HEGig2to8
         giZduq2GuzGqp4aG5rI1szuVuJK/OQcObC9/OU7RXlz7XN2J3Z6VZLBjo2Cz1aKxjK7X
         7kkw==
X-Gm-Message-State: AO0yUKXQbqWUAuTv2UaMziOaQmxM00SyWgp5hDibOPtjliOgFUTAV7w9
        2e35n+s1EGgDeCm5Pz1/X4o=
X-Google-Smtp-Source: AK7set9U5D3gNr1sUSnxisZifD/CNHu9kfjqCdfyYqipXFkh6DI05+plXcZxZ11+Zje/1imuTzfG5Q==
X-Received: by 2002:a5d:595b:0:b0:2d2:107c:3e3b with SMTP id e27-20020a5d595b000000b002d2107c3e3bmr3253499wri.48.1679427983460;
        Tue, 21 Mar 2023 12:46:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y16-20020a056000109000b002c56013c07fsm11964520wrw.109.2023.03.21.12.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 12:46:23 -0700 (PDT)
Message-ID: <e7b5e116-d314-6569-7c4e-6cfbb9c7846c@gmail.com>
Date:   Tue, 21 Mar 2023 20:46:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] Many pages: Replace links to sources.redhat.com
Content-Language: en-US
To:     Yedidyah Bar David <didi@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <CAHRwYXvBfRbxXPXCf=tqDp_JYtrajTjyhADOCMLAXT-CMekTYw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAHRwYXvBfRbxXPXCf=tqDp_JYtrajTjyhADOCMLAXT-CMekTYw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hkXS1PZjjLI1TAJfA2KLRwPS"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------hkXS1PZjjLI1TAJfA2KLRwPS
Content-Type: multipart/mixed; boundary="------------LJzGJO3DDu0VmFRmHdozM3Q0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Yedidyah Bar David <didi@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <e7b5e116-d314-6569-7c4e-6cfbb9c7846c@gmail.com>
Subject: Re: [PATCH] Many pages: Replace links to sources.redhat.com
References: <CAHRwYXvBfRbxXPXCf=tqDp_JYtrajTjyhADOCMLAXT-CMekTYw@mail.gmail.com>
In-Reply-To: <CAHRwYXvBfRbxXPXCf=tqDp_JYtrajTjyhADOCMLAXT-CMekTYw@mail.gmail.com>

--------------LJzGJO3DDu0VmFRmHdozM3Q0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Yedidyah,

On 3/21/23 12:04, Yedidyah Bar David wrote:
> sources.redhat.com/bugzilla seems broken right now.
>=20
> Apparently it was replaced, quite a long time ago - based on what I can=

> find on the net - with www.sourceware.org/bugzilla, which does work.
>=20
> This patch was created with:
>=20
> files=3D$(find man* -type f -print0 | xargs -0 grep -l

Since we don't use weird file names, you could simplify a little bit
there.

> sources.redhat.com/bugzilla)
> for f in $files; do sed -i

And you could use xargs(1) again to simplify a bit more.

> 's;http://sources.redhat.com/bugzilla/;https://www.sourceware.org/bugzi=
lla/;g'
> $f; done

I tweaked that command to:

    $ find man* -type f \
    | xargs grep -l 'sources.redhat.com/bugzilla' \
    | xargs sed -i 's;http://sources.redhat.com/bugzilla/;https://www.sou=
rceware.org/bugzilla/;g'

which I compared to your patch, just to check.

I also tweaked the commit message a little bit more, for example
changing 'Many pages:' by 'man*/:'.

>=20
> Verified with:
>=20
> git diff | sed -n
> 's;^+.*\(https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D[0-9]*\)=
=2E*;\1;p'
>> URLs
> mkdir test
> cd test
> wget -i ../URLs

Thanks for detailing the commands to patch and test!  =3D)

>=20
> Signed-off-by: Yedidyah Bar David <didi@redhat.com>

Patch applied.

Cheers,

Alex

> ---
>  man2/getrlimit.2                 | 2 +-
>  man2/inotify_rm_watch.2          | 2 +-
>  man2/ioprio_set.2                | 2 +-
>  man3/atanh.3                     | 2 +-
>  man3/cos.3                       | 2 +-
>  man3/cproj.3                     | 2 +-
>  man3/erf.3                       | 2 +-
>  man3/erfc.3                      | 2 +-
>  man3/exp10.3                     | 2 +-
>  man3/expm1.3                     | 6 +++---
>  man3/fma.3                       | 2 +-
>  man3/fmod.3                      | 2 +-
>  man3/ilogb.3                     | 2 +-
>  man3/j0.3                        | 2 +-
>  man3/lgamma.3                    | 2 +-
>  man3/logb.3                      | 2 +-
>  man3/lrint.3                     | 2 +-
>  man3/lround.3                    | 2 +-
>  man3/mallopt.3                   | 4 ++--
>  man3/pow.3                       | 8 ++++----
>  man3/pthread_attr_setguardsize.3 | 2 +-
>  man3/rcmd.3                      | 2 +-
>  man3/remainder.3                 | 4 ++--
>  man3/remquo.3                    | 2 +-
>  man3/scalb.3                     | 4 ++--
>  man3/scalbln.3                   | 2 +-
>  man3/sin.3                       | 2 +-
>  man3/tgamma.3                    | 4 ++--
>  man3/y0.3                        | 4 ++--
>  man7/inotify.7                   | 2 +-
>  man7/tcp.7                       | 4 ++--
>  man7/unix.7                      | 2 +-
>  32 files changed, 43 insertions(+), 43 deletions(-)
>=20
> diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
> index 700fd6438..fdcc9c96f 100644
> --- a/man2/getrlimit.2
> +++ b/man2/getrlimit.2
> @@ -738,7 +738,7 @@ the kernel represents resource limits on 32-bit pla=
tforms as
>  .IR "unsigned long" .
>  However, a 32-bit data type is not wide enough.
>  .\" https://bugzilla.kernel.org/show_bug.cgi?id=3D5042
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12201
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12201

Ughh, Drepper was so harsh...

>  The most pertinent limit here is
>  .BR RLIMIT_FSIZE ,
>  which specifies the maximum size to which a file can grow:
> diff --git a/man2/inotify_rm_watch.2 b/man2/inotify_rm_watch.2
> index 64731c090..6ec0fd667 100644
> --- a/man2/inotify_rm_watch.2
> +++ b/man2/inotify_rm_watch.2
> @@ -17,7 +17,7 @@ Standard C library
>  .PP
>  .BI "int inotify_rm_watch(int " fd ", int " wd );
>  .\" Before glibc 2.10, the second argument was types as uint32_t.
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D7040
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D7040
>  .fi
>  .SH DESCRIPTION
>  .BR inotify_rm_watch ()
> diff --git a/man2/ioprio_set.2 b/man2/ioprio_set.2
> index 26f440d3e..8f964af68 100644
> --- a/man2/ioprio_set.2
> +++ b/man2/ioprio_set.2
> @@ -345,7 +345,7 @@ must follow both rules, or the call will fail with =
the error
>  .BR EPERM .
>  .SH BUGS
>  .\" 6 May 07: Bug report raised:
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D4464
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D4464
>  .\" Ulrich Drepper replied that he wasn't going to add these
>  .\" to glibc.
>  glibc does not yet provide a suitable header file defining
> diff --git a/man3/atanh.3 b/man3/atanh.3
> index 5b21a01c7..1caa364de 100644
> --- a/man3/atanh.3
> +++ b/man3/atanh.3
> @@ -137,7 +137,7 @@ also conforms to
>  SVr4, 4.3BSD.
>  .SH BUGS
>  In glibc 2.9 and earlier,
> -.\" Bug: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6759
> +.\" Bug: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6759
>  .\" This can be seen in sysdeps/ieee754/k_standard.c
>  when a pole error occurs,
>  .I errno
> diff --git a/man3/cos.3 b/man3/cos.3
> index c59150f2c..69f88044b 100644
> --- a/man3/cos.3
> +++ b/man3/cos.3
> @@ -103,7 +103,7 @@ also conforms to
>  SVr4, 4.3BSD.
>  .SH BUGS
>  Before glibc 2.10, the glibc implementation did not set
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6780
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6780
>  .I errno
>  to
>  .B EDOM
> diff --git a/man3/cproj.3 b/man3/cproj.3
> index b05e98a72..32dd29165 100644
> --- a/man3/cproj.3
> +++ b/man3/cproj.3
> @@ -55,7 +55,7 @@ In glibc 2.11 and earlier, the implementation does
> something different
>  (a
>  .I stereographic
>  projection onto a Riemann Sphere).
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D10401
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D10401
>  .SH SEE ALSO
>  .BR cabs (3),
>  .BR complex (7)
> diff --git a/man3/erf.3 b/man3/erf.3
> index a66b08da4..a2a100236 100644
> --- a/man3/erf.3
> +++ b/man3/erf.3
> @@ -99,7 +99,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" It is intentional that these functions do not set errno for this c=
ase
> -.\" see http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6785
> +.\" see https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6785
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/erfc.3 b/man3/erfc.3
> index 90cac21a1..267dda8dd 100644
> --- a/man3/erfc.3
> +++ b/man3/erfc.3
> @@ -92,7 +92,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" It is intentional that these functions do not set errno for this c=
ase
> -.\" see http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6785
> +.\" see https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6785
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/exp10.3 b/man3/exp10.3
> index f739b8025..290d495ca 100644
> --- a/man3/exp10.3
> +++ b/man3/exp10.3
> @@ -76,7 +76,7 @@ Before glibc 2.19, the glibc implementation of these
> functions did not set
>  to
>  .B ERANGE
>  when an underflow error occurred.
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6787
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6787
>  .SH SEE ALSO
>  .BR cbrt (3),
>  .BR exp (3),
> diff --git a/man3/expm1.3 b/man3/expm1.3
> index ed3e7c341..832660f2f 100644
> --- a/man3/expm1.3
> +++ b/man3/expm1.3
> @@ -130,7 +130,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
>  .\" BSD.
>  .SH BUGS
>  Before glibc 2.17,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6778
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6778
>  on certain architectures (e.g., x86, but not x86_64)
>  .BR expm1 ()
>  raised a bogus underflow floating-point exception
> @@ -139,7 +139,7 @@ for some large negative
>  values (where the function result approaches \-1).
>  .PP
>  Before approximately glibc 2.11,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6814
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6814
>  .\" e.g., expm1(1e5) through expm1(1.00199970127e5),
>  .\" but not expm1(1.00199970128e5) and beyond.
>  .BR expm1 ()
> @@ -155,7 +155,7 @@ Before glibc 2.11,
>  .\" From the source (sysdeps/i386/fpu/s_expm1.S) it looks
>  .\" like the changes were in glibc 2.11.
>  the glibc implementation did not set
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6788
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6788
>  .I errno
>  to
>  .B ERANGE
> diff --git a/man3/fma.3 b/man3/fma.3
> index e170136c8..616a26592 100644
> --- a/man3/fma.3
> +++ b/man3/fma.3
> @@ -140,7 +140,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" FIXME . Is it intentional that these functions do not set errno?
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
801
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6801
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/fmod.3 b/man3/fmod.3
> index 5c9c2be38..57546fe32 100644
> --- a/man3/fmod.3
> +++ b/man3/fmod.3
> @@ -145,7 +145,7 @@ also conforms to
>  SVr4, 4.3BSD, C89.
>  .SH BUGS
>  Before glibc 2.10, the glibc implementation did not set
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6784
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6784
>  .I errno
>  to
>  .B EDOM
> diff --git a/man3/ilogb.3 b/man3/ilogb.3
> index f6e016fd1..3e141e323 100644
> --- a/man3/ilogb.3
> +++ b/man3/ilogb.3
> @@ -130,7 +130,7 @@ T}  Thread safety   MT-Safe
>  .SH STANDARDS
>  C99, POSIX.1-2001, POSIX.1-2008.
>  .SH BUGS
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
794
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6794
>  Before glibc 2.16, the following bugs existed in the
>  glibc implementation of these functions:
>  .IP \[bu] 3
> diff --git a/man3/j0.3 b/man3/j0.3
> index 358b73ddf..c9ee0561e 100644
> --- a/man3/j0.3
> +++ b/man3/j0.3
> @@ -128,7 +128,7 @@ These functions do not raise exceptions for
>  .BR fetestexcept (3).
>  .\" e.g., j0(1.5e16)
>  .\" This is intentional.
> -.\" See http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6805
> +.\" See https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6805
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/lgamma.3 b/man3/lgamma.3
> index f3def3a04..c86ac24c1 100644
> --- a/man3/lgamma.3
> +++ b/man3/lgamma.3
> @@ -163,7 +163,7 @@ The
>  functions are nonstandard, but present on several other systems.
>  .SH BUGS
>  In glibc 2.9 and earlier,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6777
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6777
>  when a pole error occurs,
>  .I errno
>  is set to
> diff --git a/man3/logb.3 b/man3/logb.3
> index 817ef6463..3fbb9a3f1 100644
> --- a/man3/logb.3
> +++ b/man3/logb.3
> @@ -110,7 +110,7 @@ These functions do not set
>  .IR errno .
>  .\" FIXME . Is it intentional that these functions do not set errno?
>  .\" log(), log2(), log10() do set errno
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
793
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6793
>  .\"
>  .\" .SH HISTORY
>  .\" The
> diff --git a/man3/lrint.3 b/man3/lrint.3
> index 8c405578e..87dc6aaec 100644
> --- a/man3/lrint.3
> +++ b/man3/lrint.3
> @@ -76,7 +76,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" FIXME . Is it intentional that these functions do not set errno?
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
798
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6798
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/lround.3 b/man3/lround.3
> index 83927601f..c2084518c 100644
> --- a/man3/lround.3
> +++ b/man3/lround.3
> @@ -79,7 +79,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" FIXME . Is it intentional that these functions do not set errno?
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
797
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6797
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/mallopt.3 b/man3/mallopt.3
> index f4f31eda3..f9af38ee2 100644
> --- a/man3/mallopt.3
> +++ b/man3/mallopt.3
> @@ -462,7 +462,7 @@ a call of the form:
>  .\" setting the M_MXFAST limit rounds up:    (s + SIZE_SZ) &
> ~MALLOC_ALIGN_MASK)
>  .\" malloc requests are rounded up:
>  .\"    (req) + SIZE_SZ + MALLOC_ALIGN_MASK) & ~MALLOC_ALIGN_MASK
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12129
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12129
>  .PP
>  .in +4n
>  .EX
> @@ -494,7 +494,7 @@ the bytes of the region are initialized to the
> byte specified in
>  However, there is an
>  .RI off-by- sizeof(size_t)
>  error in the implementation:
> -.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12140=

> +.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D1214=
0
>  instead of initializing precisely the block of memory
>  being freed by the call
>  .IR free(p) ,
> diff --git a/man3/pow.3 b/man3/pow.3
> index b9a66c929..a1c48c31b 100644
> --- a/man3/pow.3
> +++ b/man3/pow.3
> @@ -66,7 +66,7 @@ If result underflows, and is not representable,
>  a range error occurs,
>  and 0.0 with the appropriate sign is returned.
>  .\" POSIX.1 does not specify the sign of the zero,
> -.\" but http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D2678
> +.\" but https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D2678
>  .\" points out that the zero has the wrong sign in some cases.
>  .PP
>  .\" pow(\(+-0, <0 [[odd]]) =3D HUGE_VAL*
> @@ -249,7 +249,7 @@ is a NaN, the result is a NaN.
>  .SH ERRORS
>  .\" FIXME . review status of this error
>  .\" longstanding bug report for glibc:
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D369
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D369
>  .\" For negative x, and -large and +large y, glibc 2.8 gives incorrect=

>  .\" results
>  .\" pow(-0.5,-DBL_MAX)=3Dnan
> @@ -351,14 +351,14 @@ This problem was fixed
>  in glibc 2.28.
>  .PP
>  A number of bugs
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D3866
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D3866
>  in the glibc implementation of
>  .BR pow ()
>  were fixed in glibc 2.16.
>  .PP
>  In glibc 2.9 and earlier,
>  .\"
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6776
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6776
>  when a pole error occurs,
>  .I errno
>  is set to
> diff --git a/man3/pthread_attr_setguardsize.3 b/man3/pthread_attr_setgu=
ardsize.3
> index f6007c682..01d9af47c 100644
> --- a/man3/pthread_attr_setguardsize.3
> +++ b/man3/pthread_attr_setguardsize.3
> @@ -145,7 +145,7 @@ allocating extra space at the end of the stack for
> the guard area.
>  .\" which looks pretty clearly to be in violation of POSIX.
>  .\"
>  .\" Filed bug, 22 Oct 2008:
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6973
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6973
>  .\"
>  .\" Older reports:
>  .\" https//bugzilla.redhat.com/show_bug.cgi?id=3D435337
> diff --git a/man3/rcmd.3 b/man3/rcmd.3
> index a17238af8..35168c4c3 100644
> --- a/man3/rcmd.3
> +++ b/man3/rcmd.3
> @@ -293,7 +293,7 @@ and
>  .BR iruserok_af ()
>  are declared in glibc headers only since glibc 2.12.
>  .\" Bug filed 25 Nov 2007:
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D5399
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D5399
>  .SH SEE ALSO
>  .BR rlogin (1),
>  .BR rsh (1),
> diff --git a/man3/remainder.3 b/man3/remainder.3
> index 0de1d26d3..19ca62544 100644
> --- a/man3/remainder.3
> +++ b/man3/remainder.3
> @@ -199,7 +199,7 @@ Avoid the use of these functions in favor of
>  etc.
>  .SH BUGS
>  Before glibc 2.15,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6779
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6779
>  the call
>  .PP
>  .in +4n
> @@ -212,7 +212,7 @@ returned a NaN, as expected, but wrongly caused a
> domain error.
>  Since glibc 2.15, a silent NaN (i.e., no domain error) is returned.
>  .PP
>  Before glibc 2.15,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6783
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6783
>  .I errno
>  was not set to
>  .B EDOM
> diff --git a/man3/remquo.3 b/man3/remquo.3
> index c2232ee0e..8c764c9e0 100644
> --- a/man3/remquo.3
> +++ b/man3/remquo.3
> @@ -110,7 +110,7 @@ is raised.
>  These functions do not set
>  .IR errno .
>  .\" FIXME . Is it intentional that these functions do not set errno?
> -.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6=
802
> +.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D=
6802
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man3/scalb.3 b/man3/scalb.3
> index f116c74d4..a25ca078f 100644
> --- a/man3/scalb.3
> +++ b/man3/scalb.3
> @@ -196,8 +196,8 @@ is nevertheless present on several other systems
>  .\" BSDs, Tru64, HP-UX 11, Irix 6.5; scalbl() is on HP-UX 11 and Tru64=
=2E
>  .SH BUGS
>  Before glibc 2.20,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6803
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6804
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6803
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6804
>  these functions did not set
>  .I errno
>  for domain and range errors.
> diff --git a/man3/scalbln.3 b/man3/scalbln.3
> index 4ffe1ac6a..4a6acc58b 100644
> --- a/man3/scalbln.3
> +++ b/man3/scalbln.3
> @@ -167,7 +167,7 @@ is equivalent to
>  .BR ldexp (3).
>  .SH BUGS
>  Before glibc 2.20,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6803
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6803
>  these functions did not set
>  .I errno
>  for range errors.
> diff --git a/man3/sin.3 b/man3/sin.3
> index ccfddf87a..65386e10a 100644
> --- a/man3/sin.3
> +++ b/man3/sin.3
> @@ -107,7 +107,7 @@ also conforms to
>  SVr4, 4.3BSD, C89.
>  .SH BUGS
>  Before glibc 2.10, the glibc implementation did not set
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6781
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6781
>  .I errno
>  to
>  .B EDOM
> diff --git a/man3/tgamma.3 b/man3/tgamma.3
> index 749720741..298e6f109 100644
> --- a/man3/tgamma.3
> +++ b/man3/tgamma.3
> @@ -188,7 +188,7 @@ that returns something else (see
>  for details).
>  .SH BUGS
>  Before glibc 2.18, the glibc implementation of these functions did not=
 set
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6809
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6809
>  .I errno
>  to
>  .B EDOM
> @@ -197,7 +197,7 @@ when
>  is negative infinity.
>  .PP
>  Before glibc 2.19,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6810
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6810
>  the glibc implementation of these functions did not set
>  .I errno
>  to
> diff --git a/man3/y0.3 b/man3/y0.3
> index e7033f8f8..a2c9e2174 100644
> --- a/man3/y0.3
> +++ b/man3/y0.3
> @@ -181,7 +181,7 @@ No
>  .B FE_UNDERFLOW
>  exception is returned by
>  .\" This is intended behavior
> -.\" See http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6806
> +.\" See https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6806
>  .BR fetestexcept (3)
>  for this case.
>  .TP
> @@ -243,7 +243,7 @@ and no
>  exception was raised.
>  .PP
>  Before glibc 2.17,
> -.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6808
> +.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D6808
>  did not set
>  .I errno
>  for "range error: result underflow".
> diff --git a/man7/inotify.7 b/man7/inotify.7
> index 92f833afa..4b9fa0200 100644
> --- a/man7/inotify.7
> +++ b/man7/inotify.7
> @@ -90,7 +90,7 @@ struct inotify_event {
>  .\" FIXME . The type of the 'wd' field should probably be "int32_t".
>  .\" I submitted a patch to fix this.  See the LKML thread
>  .\" "[patch] Fix type errors in inotify interfaces", 18 Nov 2008
> -.\" glibc bug filed: http://sources.redhat.com/bugzilla/show_bug.cgi?i=
d=3D7040
> +.\" glibc bug filed: https://www.sourceware.org/bugzilla/show_bug.cgi?=
id=3D7040
>      uint32_t mask;     /* Mask describing event */
>      uint32_t cookie;   /* Unique cookie associating related
>                            events (for rename(2)) */
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index c0c4a838b..dda714afb 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -1426,7 +1426,7 @@ is returned.
>  .B SIOCINQ
>  is defined in
>  .IR <linux/sockios.h> .
> -.\" FIXME http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12002,
> +.\" FIXME https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12002,=

>  .\" filed 2010-09-10, may cause SIOCINQ to be defined in glibc headers=

>  Alternatively,
>  you can use the synonymous
> @@ -1477,7 +1477,7 @@ is returned.
>  .B SIOCOUTQ
>  is defined in
>  .IR <linux/sockios.h> .
> -.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12002=
,
> +.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D1200=
2,
>  .\" filed 2010-09-10, may cause SIOCOUTQ to be defined in glibc header=
s
>  Alternatively,
>  you can use the synonymous
> diff --git a/man7/unix.7 b/man7/unix.7
> index e9fe40c9b..e23ccbc12 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -665,7 +665,7 @@ is returned.
>  .B SIOCINQ
>  is defined in
>  .IR <linux/sockios.h> .
> -.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D12002=
,
> +.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D1200=
2,
>  .\" filed 2010-09-10, may cause SIOCINQ to be defined in glibc headers=

>  Alternatively,
>  you can use the synonymous

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------LJzGJO3DDu0VmFRmHdozM3Q0--

--------------hkXS1PZjjLI1TAJfA2KLRwPS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQaCYcACgkQnowa+77/
2zKY+xAAkxoStGHfGmXjtAf6G4Y3cyb/h4z2SwBJY2Qpb9DHdly9llERf9abOZ4r
yh55IlTUigd6gWlbrTx40X12YGxo/KstcZpyUwEjxPAToLH1Nk3Xc1rA+M0tdwol
zVqecHMDWLU8FV/RXZak9xGlX7I86Kuwa86nwoytY7fJ2Hrl9LmYv5m8K77jMqmX
SUoN3WDOYsuxJ3CpWs5o1RPgU38xk61H5bqEernyG0QZ1K6pqzJc+xo9/h+S2XxT
FVUnBvjlF+tyVJ4Xg9ajXfJxU4IJtKy/Df2R3j3Yn4iOvzd4lVNrej32A6PVA/jj
5oADPZbpr/M1lyPRizrcbmyxQu4bPcx1Zrn4W55akCc9L8Uv6iFv8ELXnaikNzpR
9hYnGW4sVU2cagYOI2rzBGmuA85oXaQqdClkb1byat/xLE4ujCrL5C1Y1Ufue/qO
Z4P4LaFxlFUw5T+Ubh7wU9jqVakqV77paD6dxK+mehARmKvthzFpe+K7kNiHc3nt
wUUsHTzMxX3EfKeuNrmScPBkoV1Q6qaBJv+qz2CsY0ZGn2ny/3mHcX+i+nsVwnRu
dQy4KgR4nQABV08AD5LHCOY8FcbaJnU/8b5M9wt8FhXZPJ5WdIqGxKlLn7R6OTmA
2plX/CvcqaDuA6Fu95rMp/scvIM0R6oZDm6+G1mp+zDv2+w5LOM=
=ST4Y
-----END PGP SIGNATURE-----

--------------hkXS1PZjjLI1TAJfA2KLRwPS--
