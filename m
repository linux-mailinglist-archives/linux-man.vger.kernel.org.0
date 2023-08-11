Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F21779AF0
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 01:04:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237136AbjHKXEN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 19:04:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233757AbjHKXDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 19:03:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11E44232
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 16:01:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 36A6362BDB
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 23:01:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65B6AC433C9;
        Fri, 11 Aug 2023 23:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691794883;
        bh=MkzQzSEVjjz06FgoxJOxlYxW1CGp5AwS6Dkm2YDeYlM=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=SlxBFeQufWXUv3gCSrpV2cYd/GCM6YM7WBk1JgMw+r7l3+gEYgwSpVn6Me6BU3gKQ
         k70R1/BQKXneVb67QGU78JEJoLG1sMFq0Bwtchgko4J4Anv5b67YbERztGpkf2ftB5
         6WQBh/DmYSAiWPeBs5qo2wtHjuZXZ61dk2pfoZcFg0PrKLSfts46QKnqBXfGRIfaCb
         +OxDPmtQg+1b4MeJ6NbkllNE5mOXFWnm+avspLCqWSPiwfpZS2hVScVI21E/GG2Jkc
         lSg1gGpaE/5f3TuQtlIhdzdm5duTQ6/W0t+79s12+yTg5OOjIEN2iyyPY3iF8cB34c
         o8e+ueIDLoLsw==
Message-ID: <9031e086-1aac-9198-0cbb-549e23eacd14@kernel.org>
Date:   Sat, 12 Aug 2023 01:01:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] fsync.2: no writability requirements
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <5lp4wlvjlptmb6iklqi57qgznrnwkvntlykadli3xnarevhmrz@x23swc6t3qap>
 <6y74nb7ygo2r2amygscvzzzjaqaglgusebkk5jrr2ephf4lomr@vvalk7o3hqkj>
Cc:     Guillem Jover <guillem@hadrons.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>, Sam James <sam@gentoo.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <6y74nb7ygo2r2amygscvzzzjaqaglgusebkk5jrr2ephf4lomr@vvalk7o3hqkj>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c3cHLsVchHyqczgT5Zg0gnmW"
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,URI_HEX
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------c3cHLsVchHyqczgT5Zg0gnmW
Content-Type: multipart/mixed; boundary="------------C1tyB4CN0lOYs1dSZZRIf9qX";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org
Cc: Guillem Jover <guillem@hadrons.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>, Sam James <sam@gentoo.org>
Message-ID: <9031e086-1aac-9198-0cbb-549e23eacd14@kernel.org>
Subject: Re: [PATCH v3] fsync.2: no writability requirements
References: <5lp4wlvjlptmb6iklqi57qgznrnwkvntlykadli3xnarevhmrz@x23swc6t3qap>
 <6y74nb7ygo2r2amygscvzzzjaqaglgusebkk5jrr2ephf4lomr@vvalk7o3hqkj>
In-Reply-To: <6y74nb7ygo2r2amygscvzzzjaqaglgusebkk5jrr2ephf4lomr@vvalk7o3hqkj>

--------------C1tyB4CN0lOYs1dSZZRIf9qX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-08-04 17:03, =D0=BD=D0=B0=D0=B1 wrote:
> Since Issue 3 (original release), fsync() was required to operate on
> all valid fds. Since Issue 7 2018, fdatasync() is as well (and required=

> writability only by editorial mistake):
>   https://www.austingroupbugs.net/view.php?id=3D501
>=20
> "Some UNIXes require the fd to be writable" is a
> needlessly-adversarial-to-the-user =E2=80=92
>   https://101010.pl/@eater@cijber.social/110824211348995583
> =E2=80=92 way of saying "HP-UX and AIX have always been broken": just s=
ay that.
>=20
> Originally appeared in 4.2BSD (4.1c.2BSD) so touch that as well since
> we're mentioning the original interface.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,

Alex

> ---
>  man2/fsync.2 | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>=20
> diff --git a/man2/fsync.2 b/man2/fsync.2
> index 1043e6a1b..036af0a9e 100644
> --- a/man2/fsync.2
> +++ b/man2/fsync.2
> @@ -155,16 +155,10 @@ .SH VERSIONS
>  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
>  .\" -1: unavailable, 0: ask using sysconf().
>  .\" glibc defines them to 1.
> -.PP
> -On some UNIX systems (but not Linux),
> -.I fd
> -must be a
> -.I writable
> -file descriptor.
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY
> -POSIX.1-2001, 4.3BSD.
> +POSIX.1-2001, 4.2BSD.
>  .PP
>  In Linux 2.2 and earlier,
>  .BR fdatasync ()
> @@ -181,6 +175,13 @@ .SH HISTORY
>  or
>  .BR sdparm (8)
>  to guarantee safe operation.
> +.PP
> +Under AT&T UNIX System V Release 4
> +.I fd
> +needs to be opened for writing.
> +This is by itself incompatible with the original BSD interface
> +and forbidden by POSIX,
> +but nevertheless survives in HP-UX and AIX.
>  .SH SEE ALSO
>  .BR sync (1),
>  .BR bdflush (2),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------C1tyB4CN0lOYs1dSZZRIf9qX--

--------------c3cHLsVchHyqczgT5Zg0gnmW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTWvcAACgkQnowa+77/
2zIHNBAAlZuZ8Og0aaRaRYTLqSJUEx/IXGMhNTypJjbJza5KO+2Y1WzYbP2td2ZW
kXm41xtqYxXEn++GAg6Q/yYvJJwqChIA3piTHTa1hJZfh+xXIPQpccfiYVDSnHu9
kfnNkAOJ6XQV1+GW6WGr/RolneMUYhRp68JDMNGMhEGGuuZz5gtiAmW5ZrYy8zh8
s8IN2sQNnmGde2ZT1TmO21FPHCE2Etx1jE5G8AUQ4YCJ7HfwpR3OY9Nt7IRcBSbJ
ZaqMkUo8BWr36QXiQkSt6Sc5BIkxNtTXA7CGbxjKpSzE6+zVDSqWnLR84iQ+/icA
oaj4WlGOnQ2EPgSASdWhjt+s9ynly84D8nzb6h7rwcExXDRxFbI8sBDryIFmgsn+
Fg8A30CYaUk8xQ1JR0RnIisOvAGg/lpW0xD9scuZ9Jfpw/+CLBLE2dvezKexbSHa
USxP4hpW74uzlOxJCMad1huNQF6SDKhG0QPfsXrqSKg5u9LYJdBQrlJNJ99rMP4n
OiCFdRqfhjF12wRdDqZmJe/S+7z4ly9rOHljjoYj2xNDh0vieRGg32FTgBc61VVB
2AmH2u8jtJRxm5N54Gajnn1nc0jPJnHOzgUpL0Gx1MqbIHWd+LGVuA6WAvEi3VUs
Jr2ssh5MXnhFqejnqkvwmJIe/26+1exPFD2t2Ijt9B02ep8vbRc=
=KpMa
-----END PGP SIGNATURE-----

--------------c3cHLsVchHyqczgT5Zg0gnmW--
