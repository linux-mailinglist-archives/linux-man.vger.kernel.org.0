Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 812EB6DB7B3
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 02:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbjDHAQT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 20:16:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjDHAQS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 20:16:18 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D0361285A
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 17:16:16 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id o18so87783wro.12
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 17:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680912975; x=1683504975;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hfS0YQYyZSqCivB4BjtPoPVO3f4rVUpEMbkGApmiPc=;
        b=Yn+r17Ol/68htftWW0tQ+1lj8o+eXCwqLoj+jk50HfWhcMAWV67hV+pD/UHAlLjHV1
         k+mYifeCRXy7NhGflrlKR5JQaS3uYMjDH/Ugnv21cadX4C6n7proL/gkDoRglej5D0nk
         woFJRHCPcAlNFhQBXm6PCQS/McOcKPxEAKPJv/klRMArGtD5jTk0VCDNDGwFSYVypZ/s
         2poz1WVt6pnBm35wwy5EWwb2ypJmObkokxlOVqgR2xxZJLvJkeGXcVfnNGv0zmxxWDbK
         l4X1OK7v2l6CIjp8wJTfVEQqAxe2jiSq9Dl4i7xjuXelURH7KYeDMOft3XRJqALNiRyR
         2ayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680912975; x=1683504975;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/hfS0YQYyZSqCivB4BjtPoPVO3f4rVUpEMbkGApmiPc=;
        b=gVM9diOTvJM7XyenAF4VlRS5+0HauoMsZddVfZI9hEGj18iFG66pkGxeleEqqly4HI
         jBHDz0q00aXhNSzfa/DUvvUmgjNa2PUh8ieEWw3rxIWEbLDF89ns96k3ie5lSybCWErW
         oT9kA9a0XFH6jWecUUh29IAn9zBaXqRvpny05cDEGlY5jrJJdefSPHYzxHtbR6UD6t4e
         EkY7WVfqjY/iOJaeNzQoeB+ULDcDClBaH27X8b7YDlhi5aYpklr/yu2h7RImeiRK3Q2s
         bWt3wz2nPYgEFCvUH1mivAbDdpVehx29PNT3ijWW8oFaVRNgPHuVfhSxTKZtTQpL6hh0
         jd3g==
X-Gm-Message-State: AAQBX9fFWT0rNXL5QGIYZteCi4kckg1ad+k512W0ZtJn6ZXNqGu9rTgy
        dPr9SpBG12FZnEl9dvsDsO72Ml05qR8=
X-Google-Smtp-Source: AKy350ZTH5NW361x8Nye2xmJrWIhro5RqBAh89ptqem/B1gjxYvSrL4/LVO9tXfOJAueAWDrvl58JQ==
X-Received: by 2002:adf:fccb:0:b0:2ef:44d:e69c with SMTP id f11-20020adffccb000000b002ef044de69cmr2547165wrs.0.1680912974513;
        Fri, 07 Apr 2023 17:16:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id h18-20020a5d5052000000b002cfe0ab1246sm5617306wrt.20.2023.04.07.17.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 17:16:14 -0700 (PDT)
Message-ID: <c60a4b42-a5c3-c7c1-c525-a3cbed32ee8f@gmail.com>
Date:   Sat, 8 Apr 2023 02:16:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] personality.2: review, update for Linux 6.2
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
 <vfmpxt7sggfoj3zxrb2nbrcqr3hreyxxgmvjzc3jsvezugrpr2@qa2bjtt3zd2l>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <vfmpxt7sggfoj3zxrb2nbrcqr3hreyxxgmvjzc3jsvezugrpr2@qa2bjtt3zd2l>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mKKJyuOwhhc8MctKCoyF8CfX"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mKKJyuOwhhc8MctKCoyF8CfX
Content-Type: multipart/mixed; boundary="------------821RHpsLtig0YH6xGIu0qgUr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <c60a4b42-a5c3-c7c1-c525-a3cbed32ee8f@gmail.com>
Subject: Re: [PATCH 2/2] personality.2: review, update for Linux 6.2
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
 <vfmpxt7sggfoj3zxrb2nbrcqr3hreyxxgmvjzc3jsvezugrpr2@qa2bjtt3zd2l>
In-Reply-To: <vfmpxt7sggfoj3zxrb2nbrcqr3hreyxxgmvjzc3jsvezugrpr2@qa2bjtt3zd2l>

--------------821RHpsLtig0YH6xGIu0qgUr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

On 4/8/23 02:02, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Sat, Apr 08, 2023 at 01:02:29AM +0200, Alejandro Colomar wrote:
>> On 4/7/23 17:39, =D0=BD=D0=B0=D0=B1 wrote:
>>> @@ -99,7 +101,7 @@ interrupted by a signal handler.
>>>  .BR UNAME26 " (since Linux 3.1)"
>>>  Have
>>>  .BR uname (2)
>>> -report a 2.6.40+ version number rather than a 3.x version number.
>>> +report a 2.6.(40+x) version number rather than a MAJ.x version numbe=
r.
>> I prefer MAJOR.
> Applied.
>=20
>>>  .TP
>>>  .BR PER_LINUX32_3GB " (since Linux 2.4)"
>>> -Implies
>>> +.BR PER_LINUX32 ;
>>> +implies
>>>  .BR ADDR_LIMIT_3GB .
>> I'm not sure I understand.  Why on the description for tag A we
>> say that B implies C?  What's the relationship?
>=20
> Cf. the UAPI definition:
>   /*
>    * Personality types.
>    *
>    * These go in the low byte.  Avoid using the top bit, it will
>    * conflict with error returns.
>    */
>   enum {
>           PER_LINUX =3D             0x0000,
>           PER_LINUX_32BIT =3D       0x0000 | ADDR_LIMIT_32BIT,
>           PER_LINUX_FDPIC =3D       0x0000 | FDPIC_FUNCPTRS,
>           PER_SVR4 =3D              0x0001 | STICKY_TIMEOUTS | MMAP_PAG=
E_ZERO,
>           PER_SVR3 =3D              0x0002 | STICKY_TIMEOUTS | SHORT_IN=
ODE,
>           PER_SCOSVR3 =3D           0x0003 | STICKY_TIMEOUTS |
>                                            WHOLE_SECONDS | SHORT_INODE,=

>           PER_OSR5 =3D              0x0003 | STICKY_TIMEOUTS | WHOLE_SE=
CONDS,
>           PER_WYSEV386 =3D          0x0004 | STICKY_TIMEOUTS | SHORT_IN=
ODE,
>           PER_ISCR4 =3D             0x0005 | STICKY_TIMEOUTS,
>           PER_BSD =3D               0x0006,
>           PER_SUNOS =3D             0x0006 | STICKY_TIMEOUTS,
>           PER_XENIX =3D             0x0007 | STICKY_TIMEOUTS | SHORT_IN=
ODE,
>           PER_LINUX32 =3D           0x0008,
>           PER_LINUX32_3GB =3D       0x0008 | ADDR_LIMIT_3GB,
>           PER_IRIX32 =3D            0x0009 | STICKY_TIMEOUTS,/* IRIX5 3=
2-bit */
>           PER_IRIXN32 =3D           0x000a | STICKY_TIMEOUTS,/* IRIX6 n=
ew 32-bit */
>           PER_IRIX64 =3D            0x000b | STICKY_TIMEOUTS,/* IRIX6 6=
4-bit */
>           PER_RISCOS =3D            0x000c,
>           PER_SOLARIS =3D           0x000d | STICKY_TIMEOUTS,
>           PER_UW7 =3D               0x000e | STICKY_TIMEOUTS | MMAP_PAG=
E_ZERO,
>           PER_OSF4 =3D              0x000f,                  /* OSF/1 v=
4 */
>           PER_HPUX =3D              0x0010,
>           PER_MASK =3D              0x00ff,
>   };
>=20
> PER_LINUX is a base personality, PER_LINUX_{32BIT,FDPIC} are
> PER_LINUX|ADDR_LIMIT_32BIT and PER_LINUX|FDPIC_FUNCPTRS, resp.
>=20
> PER_BSD is a base personality, PER_SUNOS is PER_BSD|STICKY_TIMEOUTS.
>=20
> PER_LINUX32 is a base personality, PER_LINUX32_3GB is
> PER_LINUX32|ADDR_LIMIT_3GB.
>=20
> I updated these all to be "Same as {base personality},
> but implies {...}.". PER_SCOSVR3 has an "also", since it's the only one=

> where the base case PER_OSR5 has a list.

I appended these details to the commit message.  :)

>=20
> Should make more sense.
>=20
> Scissor-patch below.

Patch applied.

>=20
> Best,
> -- >8 --

Best scissors,
Alex

=3D)

> Settle on "no effect", concretify vaguely-described behaviours;
> both [to be documented]s replaced with documentation
> (these match my 6.2 checkout, if there were subtleties in the history
>  they got lost).
>=20
> Added the full system names to the PER_s that lacked them.
>=20
> Didn't validate or chase down the versions except for PER_RISCOS.
>=20
> Having these be sorted instead of in the original enumeration order is
> really more trouble than it's worth.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man2/personality.2 | 103 +++++++++++++++++++++++++++++++--------------=

>  1 file changed, 72 insertions(+), 31 deletions(-)
>=20
> diff --git a/man2/personality.2 b/man2/personality.2
> index caca709b8..d9418b38e 100644
> --- a/man2/personality.2
> +++ b/man2/personality.2
> @@ -67,10 +67,12 @@ With this flag set, use 0xc0000000 as the offset at=
 which to search
>  a virtual memory chunk on
>  .BR mmap (2);
>  otherwise use 0xffffe000.
> +Applies to 32-bit x86 processes only.
>  .TP
>  .BR FDPIC_FUNCPTRS " (since Linux 2.6.11)"
>  User-space function pointers to signal handlers point
> -(on certain architectures) to descriptors.
> +to descriptors.
> +Applies only to ARM if BINFMT_ELF_FDPIC and SuperH.
>  .TP
>  .BR MMAP_PAGE_ZERO " (since Linux 2.4.0)"
>  Map page 0 as read-only
> @@ -85,7 +87,7 @@ for
>  .BR mmap (2).
>  .TP
>  .BR SHORT_INODE " (since Linux 2.4.0)"
> -No effects(?).
> +No effect.
>  .TP
>  .BR STICKY_TIMEOUTS " (since Linux 1.2.0)"
>  With this flag set,
> @@ -99,7 +101,7 @@ interrupted by a signal handler.
>  .BR UNAME26 " (since Linux 3.1)"
>  Have
>  .BR uname (2)
> -report a 2.6.40+ version number rather than a 3.x version number.
> +report a 2.6.(40+x) version number rather than a MAJOR.x version numbe=
r.
>  Added as a stopgap measure to support broken applications that
>  could not handle the
>  kernel version-numbering switch from Linux 2.6.x to Linux 3.x.
> @@ -127,111 +129,150 @@ Implies
>  IRIX 6 64-bit.
>  Implies
>  .BR STICKY_TIMEOUTS ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_IRIXN32 " (since Linux 2.2)"
>  IRIX 6 new 32-bit.
>  Implies
>  .BR STICKY_TIMEOUTS ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_ISCR4 " (since Linux 1.2.0)"
>  Implies
>  .BR STICKY_TIMEOUTS ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_LINUX " (since Linux 1.2.0)"
>  Linux.
>  .TP
>  .BR PER_LINUX32 " (since Linux 2.2)"
> -[To be documented.]
> +.BR uname (2)
> +returns the name of the 32-bit architecture in the
> +.I machine
> +field ("i686" instead of "x86_64", &c.).
> +.IP
> +Under ia64 (Itanium), processes with this personality don't have the
> +O_LARGEFILE
> +.BR open (2)
> +flag forced.
> +.IP
> +Under 64-bit ARM, setting this personality is forbidden if
> +.BR execve (2)ing
> +a 32-bit process would also be forbidden
> +(cf. the allow_mismatched_32bit_el0 kernel parameter and
> +.IR Documentation/arm64/asymmetric-32bit.rst ).
>  .TP
>  .BR PER_LINUX32_3GB " (since Linux 2.4)"
> -Implies
> +Same as
> +.BR PER_LINUX32 ,
> +but implies
>  .BR ADDR_LIMIT_3GB .
>  .TP
>  .BR PER_LINUX_32BIT " (since Linux 2.0)"
> -Implies
> +Same as
> +.BR PER_LINUX ,
> +but implies
>  .BR ADDR_LIMIT_32BIT .
>  .TP
>  .BR PER_LINUX_FDPIC " (since Linux 2.6.11)"
> -Implies
> +Same as
> +.BR PER_LINUX ,
> +but implies
>  .BR FDPIC_FUNCPTRS .
>  .TP
>  .BR PER_OSF4 " (since Linux 2.4)"
>  OSF/1 v4.
> -On alpha,
> +.\" commit 987f20a9dcce3989e48d87cff3952c095c994445
> +No effect since Linux 6.1, which removed a.out binary support.
> +Before, on alpha,
>  .\" Following is from a comment in arch/alpha/kernel/osf_sys.c
> -clear top 32 bits of iov_len in the user's buffer for
> +would clear top 32 bits of iov_len in the user's buffer for
>  compatibility with old versions of OSF/1 where iov_len
>  was defined as.
>  .IR int .
>  .TP
>  .BR PER_OSR5 " (since Linux 2.4)"
> +SCO OpenServer 5.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR WHOLE_SECONDS ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
> -.BR PER_RISCOS " (since Linux 2.2)"
> -[To be documented.]
> +.BR PER_RISCOS " (since Linux 2.3.7; macro since Linux 2.3.13)"
> +Acorn RISC OS/Arthur (MIPS).
> +No effect.
> +.\" commit 125ec7b4e90cbae4eed5a7ff1ee479cc331dcf3c
> +Up to Linux v4.0, would set the emulation altroot to
> +.I /usr/gnemul/riscos
> +(cf.\&
> +.BR PER_SUNOS,
> +below).
> +Before then, up to Linux 2.6.3, just Arthur emulation.
>  .TP
>  .BR PER_SCOSVR3 " (since Linux 1.2.0)"
> -Implies
> -.BR STICKY_TIMEOUTS ,
> -.BR WHOLE_SECONDS ,
> -and
> -.BR SHORT_INODE ;
> -otherwise no effects.
> +SCO UNIX System V Release 3.
> +Same as
> +.BR PER_OSR5 ,
> +but also implies
> +.BR SHORT_INODE .
>  .TP
>  .BR PER_SOLARIS " (since Linux 2.4)"
> +Solaris.
>  Implies
>  .BR STICKY_TIMEOUTS ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_SUNOS " (since Linux 2.4.0)"
> -Implies
> +Sun OS.
> +Same as
> +.BR PER_BSD ,
> +but implies
>  .BR STICKY_TIMEOUTS .
> -Divert library and dynamic linker searches to
> +Prior to Linux 2.6.26,
> +diverted library and dynamic linker searches to
>  .IR /usr/gnemul .
> -Buggy, largely unmaintained, and almost entirely unused;
> -support was removed in Linux 2.6.26.
> +Buggy, largely unmaintained, and almost entirely unused.
>  .TP
>  .BR PER_SVR3 " (since Linux 1.2.0)"
> +AT&T UNIX System V Release 3.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR SHORT_INODE ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_SVR4 " (since Linux 1.2.0)"
> +AT&T UNIX System V Release 4.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR MMAP_PAGE_ZERO ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_UW7 " (since Linux 2.4)"
> +UnixWare 7.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR MMAP_PAGE_ZERO ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_WYSEV386 " (since Linux 1.2.0)"
> +WYSE UNIX System V/386.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR SHORT_INODE ;
> -otherwise no effects.
> +otherwise no effect.
>  .TP
>  .BR PER_XENIX " (since Linux 1.2.0)"
> +XENIX.
>  Implies
>  .B STICKY_TIMEOUTS
>  and
>  .BR SHORT_INODE ;
> -otherwise no effects.
> +otherwise no effect.
>  .SH RETURN VALUE
>  On success, the previous
>  .I persona

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------821RHpsLtig0YH6xGIu0qgUr--

--------------mKKJyuOwhhc8MctKCoyF8CfX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwskYACgkQnowa+77/
2zI4mRAAjat5ZJQ8hDFb08OMghBRFKaZV/R/0ygiBdDdg5Q9GZOEtoJ5gmYyMUTR
kcJAOPZbYM96WG8GrofQhy5f3RAR9pRllxNUqp6ftt+0EdR0PBVNMbQcIyo4LeU6
/y+4n3PXxhSb6H/dK7eljN/kUbLqcjhfS26ToYYIb4nZXRgvNEoDeJ2t/I4BZ6Df
yWMPod7AHyQua8LGv54l0p2aRW1xafZ3Up76qOgaP7MArCP1fr/WfNUKLsaxw/fX
MbMpPoDixgXKrIo63CT+oKWgQg9yGH3FHeO3X2piFTp+H8G5zHY6MtdnZ6B31q5O
EgsW/gbOsyo8lcsE23OuuVXhlvhCZc9gMN1FR/+xPD6qt6vzDFaVPiEcMSE5h0Wq
X7M7ELmINyORaIk8SeOq6lep5vP4t0ksUwiFoUKhctrUNnbuwsZWrjcuD3ngLyUe
q0fjKGmusYvzUdXF39ezirSwZw5RaB/UBRaBkge/0mJIiD2urtnto2ZlJk0QN2sW
CDCg5x/ElQsZkR/69VSPboDYOpgs8kC+19AUF6utQW1oFRrvXaB/dP0OAqE6Y1s0
SCofFMAfbp6z9QqhrGeAkiSyyIh1V1X908kSNJJNQshZTAa1rGic/XhsDv5uMoVE
3YgKvfipuGTe+1RzIa8NTsm5ViejqsKjhYYQB+jFE3BjM5RFTbA=
=TV6F
-----END PGP SIGNATURE-----

--------------mKKJyuOwhhc8MctKCoyF8CfX--
