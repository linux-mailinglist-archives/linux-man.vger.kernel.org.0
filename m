Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C7D96DB6C1
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjDGXCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjDGXCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:02:41 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D76B2AF33
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:02:39 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id eo6-20020a05600c82c600b003ee5157346cso1494816wmb.1
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680908558; x=1683500558;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4VmJd5nifaM8YmtUdMnhHE2G0FkeQ6vAZPaG6NSvEk=;
        b=esPzNhbu4wl4J2BCBEYC/FiCWB+Kzf0l9gWOZicl0zXIbBSwt7cc3JOrJkjhA7mU1m
         hgMcOjuVdI2qEHKASZf6niHLXh1++EB/3RMQ4ls3RrbGvnj2WBJdfUGedbrLUCiTVyzd
         BbAPPnURx4E+bKIZWnSsnutB5qFpiWhOKkMPaq6hsLNAtfA3R2Ofkax351gdVTMNi2o0
         gCFyW9IKcdfSglmQMwiEm+uSykshuqCDd07tyW4lKmn3gbAIG/IEAkOuq94I3Dy41w/D
         smGxWWm4Zb58VDRnRKnrJj7cKrJ5J+qTZyPErqCmlT0h+3u7MILHljmi106Zog8P1598
         /mCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680908558; x=1683500558;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o4VmJd5nifaM8YmtUdMnhHE2G0FkeQ6vAZPaG6NSvEk=;
        b=symeIvdfdw0QfTnUBtMUqU52ObvY8NhdRcWpQGFUPurBRlfcX67eIFA61Sw8MQJwOV
         6WvL8D5ls5rSTLvZe7dE1NLb3ZOEn5M0JG1O6AfqeFP2tjSDcC08YfX+YUbPRmpghbPi
         7hFy9Wf/mT44muN2wn4tkUocSD3hfHSE5aLYgVMrwGJQwjeEFYet7EYZRWGE0/lEn3qh
         iY5PnWVH4X1aIpeD5vazV9kK2c47D2aWe6RQdktlk4YOnOhgLAOXXc/JGI3tQRfxkMJg
         p6I/Vsl2uE0HKFiUkL+e9C7rWMiN8bJwu7iSPVcd3ewM23k0B5Z6qY1mzJIcCojjv/0U
         NyeA==
X-Gm-Message-State: AAQBX9dmHWPy8+dLc2hzy0ICtFkMINE5mVNRTPgFkDjsRyF09skrTRA1
        yoWU4AyiuGegSm/zeNXx1h8=
X-Google-Smtp-Source: AKy350a4U3nVxGfnTHSmalj4j9gyuslYunJa2gKSCWGkFFwRiPVRDBS9ro57uHa6DCFRN8kEybJpOQ==
X-Received: by 2002:a1c:f219:0:b0:3ea:d620:57a7 with SMTP id s25-20020a1cf219000000b003ead62057a7mr2405696wmc.8.1680908557987;
        Fri, 07 Apr 2023 16:02:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n18-20020a5d51d2000000b002ef222822d5sm5063737wrv.74.2023.04.07.16.02.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:02:37 -0700 (PDT)
Message-ID: <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
Date:   Sat, 8 Apr 2023 01:02:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] personality.2: review, update for Linux 6.2
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------B0JneLRVgwEtkaCJCGXWiCLp"
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
--------------B0JneLRVgwEtkaCJCGXWiCLp
Content-Type: multipart/mixed; boundary="------------5P0nhKIl0uVkuPZYy8yLOpTa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
Subject: Re: [PATCH 2/2] personality.2: review, update for Linux 6.2
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>

--------------5P0nhKIl0uVkuPZYy8yLOpTa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/7/23 17:39, =D0=BD=D0=B0=D0=B1 wrote:
> Settle on "no effect", concretify vaguely-described behaviours;
> both [to be documented]s replaced with documentation
> (these match my 6.2 checkout, if there were subtleties in the history
>  they got lost).
>=20
> Added the full system names to the PER_s that lacked them;
> no clue what UW7 is though.
>=20
> Didn't validate or chase down the versions except for PER_RISCOS.
>=20
> Having these be sorted instead of in the original enumeration order is
> really more trouble than it's worth.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man2/personality.2 | 96 ++++++++++++++++++++++++++++++++--------------=

>  1 file changed, 68 insertions(+), 28 deletions(-)
>=20
> diff --git a/man2/personality.2 b/man2/personality.2
> index caca709b8..598e2cd2f 100644
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
> +report a 2.6.(40+x) version number rather than a MAJ.x version number.=


I prefer MAJOR.

>  Added as a stopgap measure to support broken applications that
>  could not handle the
>  kernel version-numbering switch from Linux 2.6.x to Linux 3.x.
> @@ -127,111 +129,149 @@ Implies
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
> +.BR PER_LINUX32 ;
> +implies
>  .BR ADDR_LIMIT_3GB .

I'm not sure I understand.  Why on the description for tag A we
say that B implies C?  What's the relationship?

Cheers,
Alex

>  .TP
>  .BR PER_LINUX_32BIT " (since Linux 2.0)"
> -Implies
> +.BR PER_LINUX ;
> +implies
>  .BR ADDR_LIMIT_32BIT .
>  .TP
>  .BR PER_LINUX_FDPIC " (since Linux 2.6.11)"
> -Implies
> +.BR PER_LINUX ;
> +implies
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

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5P0nhKIl0uVkuPZYy8yLOpTa--

--------------B0JneLRVgwEtkaCJCGXWiCLp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwoQYACgkQnowa+77/
2zKIrhAAoh3k0uknGiQa+bXLSJkbTq5rene/NrTAfqtRHlChkwXeK5mdtvfQhS15
dPr0+1O4yNJsSq/no0QzMo5Pii7gLUY8uJvHUtyMmC2QCWYHWfUDYLOq1tvwVUgO
dTSpIOC8RRCB+YwclVFDHhTyYjIETnR423PDQymFUX0wPUM/aAX1OhfFaX2cpo5+
W8ZKK17w6WjlAu24pcqs/IL5tzO9noYWgo4WYBkCHh4esOBMkKh1JZq+5pPYIKz0
uu9JnK2YGbsmdHJmN4Q3jX0gBPJLatVz416Pyh7B83HlFVClyfjfm17nTY3XbOmF
BbIFHUI1dEtc4vJ3UhRsgKXLh03RQ0yp/89FTywmFj5cDvRUUYt9h7baSFyiTWNV
SdE334pJIQZ8+u8Rt2LwdrhdLkAJ9pQCFiMbFw3SUFqzZlK9Vm/VWkQOd7w5qFae
srHrzE3isf4+JtWwifjHL3lULDSmTCkO7xeld5NNmkDm0Wah/GZ0INY2H71MhcwT
6lbmaoKIZmJj1lNNW2uoiOHs0rOqkcSsLJKl8wYW+3B5cLF5SrzcILUzIIHyAvqb
y9i20sJ44ss+qr11k5C3jtXebZOk0iZ3dTPh8DP4QHXvHbk6q4kuEFY0tfTkSfV8
rt68pc6QtZlIpaLoMhcWnJ3kmsN/+5A1FcEP78CyV2zqwSUzsjA=
=f3Mk
-----END PGP SIGNATURE-----

--------------B0JneLRVgwEtkaCJCGXWiCLp--
