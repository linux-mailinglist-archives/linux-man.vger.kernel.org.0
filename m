Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F761754CFB
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 03:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjGPBJK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 21:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjGPBJJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 21:09:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92FB271F
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 18:09:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8712160C47
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 01:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7D52C433C7;
        Sun, 16 Jul 2023 01:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689469746;
        bh=aYk5hcF1utD8hVfRewSs2Aon89baYEYyDp2Wr0Q7y1A=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ogllNY9GZdux8jyUztAPwduMWtoa8EGfaUeVY+9kVAlMeH/RXzy7F4zAdu0iIoT35
         HFFCu4tL4AciT4zHVFQ8Plg6Xx9Fiqwy+TT5LZmdJqDh8r+A7eNTi9BF7Dn8EVT+dK
         QrLrFhy/D0J/3ky5TaNeAIQFxzpc8FMs84r1qpbze1b6gaPf9ZGNmJDBLxHHNk3LFq
         7PZqu74PXS0wvfd4MaN7JG8intly4wz2xUCmdyG+dNurdLxi42uJvsmIm28AXBq5M5
         X1z04O6WInjDCKyAEIDhJp80XyY3fArsMcUi9sajelCriWixG4xZB2VdWFtuU45b7c
         RoepXc2piiw0Q==
Message-ID: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
Date:   Sun, 16 Jul 2023 03:09:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4] grantpt.3: no-op on modern glibc and other UNIXes
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
 <prx5h5lm7gnytjwm3jgmm2d5vrg3xgdnxssocx2gplcubexvf7@fkdavhrtedoo>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <prx5h5lm7gnytjwm3jgmm2d5vrg3xgdnxssocx2gplcubexvf7@fkdavhrtedoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------16w0uSB40qB8UuFz5xNsgx2g"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------16w0uSB40qB8UuFz5xNsgx2g
Content-Type: multipart/mixed; boundary="------------hnDVL7aTtdjXR3l9ne1hIYmu";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
Subject: Re: [PATCH v4] grantpt.3: no-op on modern glibc and other UNIXes
References: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
 <prx5h5lm7gnytjwm3jgmm2d5vrg3xgdnxssocx2gplcubexvf7@fkdavhrtedoo>
In-Reply-To: <prx5h5lm7gnytjwm3jgmm2d5vrg3xgdnxssocx2gplcubexvf7@fkdavhrtedoo>

--------------hnDVL7aTtdjXR3l9ne1hIYmu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-07-15 20:49, =D0=BD=D0=B0=D0=B1 wrote:
> FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2)=
,
> and grantpt(3) is a no-op (that checks whether the fd is a pty, except =
on
> musl).
>=20
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commi=
t
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
>  "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").
>=20
> glibc 2.33 completely kills BSD PTY support on Linux
> (Debian hasn't configured with them on any architecture since 2007:
>    https://bugs.debian.org/338404
>  and even earlier on some arches; they're really just trivia under
>  Linux =E2=80=92 this may be better served stuffed into HISTORY as an e=
xplainer
>  for the SIGCHLD thing, since regardless of the "version", the behaviou=
r
>  is well-defined and consistent).
>=20
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate comm=
it
> paren level 1
>   v
>>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
> paren level 2
>    v
>>   Driven Device Naming"), which kills pt_chmod, notes that it's been
> this is an in-line 2-column quote of the commit message
> (which I've misindented to 3)
>    vvv
>>     6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).=

>=20
> So it works by "it doesn't", it's psycho indent, probably related to
>   Date: Mon Jun 19 02:01:46 2023 +0200
> I turned the blockquote into a ""-quote, which should make more sense.

Makes sense.  Or should I say it doesn't...  :-)

Thanks!  Just a minor comment below.

>=20
> Numberised open() and grantpt().
>=20
>  man3/grantpt.3 | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..e3d4e4aaa 100644
> --- a/man3/grantpt.3
> +++ b/man3/grantpt.3
> @@ -84,17 +84,15 @@ .SH ATTRIBUTES
>  .ad
>  .sp 1
>  .SH VERSIONS
> -Many systems implement this function via a set-user-ID helper binary
> +Historical systems implemented this function via a set-user-ID helper =
binary
>  called "pt_chown".
> -On Linux systems with a devpts filesystem (present since Linux 2.2),
> -the kernel normally sets the correct ownership and permissions
> -for the pseudoterminal slave when the master is opened
> -.RB ( posix_openpt (3)),
> -so that nothing must be done by
> -.BR grantpt ().
> -Thus, no such helper binary is required
> -(and indeed it is configured to be absent during the
> -glibc build that is typical on many systems).
> +glibc on Linux before glibc 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op\[em]with
> +permissions configured on pty allocation,
> +as is the case on Linux\[em]or an
> +.BR ioctl (2).

This still didn't address the following comment of mine to v2:

On 2023-07-08 17:54, Alejandro Colomar wrote:
>> +in order to support configurations with only BSD pseudoterminals;
>> +this support has been removed.
>> +On modern systems this is either a no-op\[em]with
> \[em] clearly breaks/interrupts a clause or phrase.
> Semantic newlines should apply here --I guess that you probably put the=

> two words together to not add an extra space, but I do like that space
> (and I know this may be controversial)--.
>=20
> Cheers,
> Alex
>=20
>> +permissions configured on pty allocation,
>> +as is the case on Linux\[em]or an
>> +.BR ioctl (2).
>>   .SH STANDARDS

I wonder if you confirm your intention to have it this way, or if you
just missed that comment.  Please document your intention.  I don't feel
strong about it.  It's just that using '--' next to the "parenthesised"
part and with a space at the other side makes it more straightforward to
parse, even if some Powers might be against it.  It also fits better with=

semantic newlines.

Branden, any opinion on this?

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------hnDVL7aTtdjXR3l9ne1hIYmu--

--------------16w0uSB40qB8UuFz5xNsgx2g
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzQzAACgkQnowa+77/
2zIoBQ/+O+DcrcCAc23zSr63fdH8UklAg1bKFQegb4DytdTDTvJs7V/+NNzJC/PY
kBBdSDEgAt0jQS9powVhI2ruAMJM/uI8RGC6Z7uTenOoMOr8xILu8GaTxHz3YFeW
Ug2kxorflkdddY0U+f4ERGixPTA4oTsIGhUN/fz1VAi+6x2Hb30ZN5lMHl+kfPzE
iLTWkZ89AlrcplbqcLvTaEmdw+pvToe8G39NZmKZ/ZYmF4h4d9UiWjrZ+GXAoHlR
CQCgAQG3twRJUhf12z4iXYAz2LvBW/cOX11+HPcvJjmeI3YtTJJGOJhB1V2ciUHx
oVrJ/M2a8dvpGP6GKTR2dzbgXmANSkBTrzZPsKML0RgEVMMiujPAvexJQa0+RftA
azE6oejrMLoXFNCTsDWkizD7YuGA/WxW0qWF4H7i87rCKwcAvpB3K6sWraVZByYD
NPacbM9FnJwiT9dNKCFi2Sw3GZZLVGKUQFm48r+ftlb4++N/1xq68E2lfSnmVVzj
X4/yZBZLQGKXtUYno8+EUvuLPbhY4pCCYMZ4qAIL/hdSeHHiMXVr9PMeecRlsIW2
90XcnrwbOLpWuNvjHhnKJQ2B0Pg0o/Mhii3bBeKDiNKJbnDxYnuhG13twFTWyn7n
W81gJW1jnepQJ5N0tg4cb4RG+OmGPeW5w7HTnq9Tj7857A8Gvqw=
=8mPl
-----END PGP SIGNATURE-----

--------------16w0uSB40qB8UuFz5xNsgx2g--
