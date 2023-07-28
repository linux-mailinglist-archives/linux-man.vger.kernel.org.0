Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE15076776B
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 23:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbjG1VHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 17:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbjG1VHH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 17:07:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E6364490
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 14:07:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0E4BE62208
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4A6AC433C8;
        Fri, 28 Jul 2023 21:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690578425;
        bh=/L5KchS9A4eSLJH+Kok5oSW7pu4rdDhNJ9tx2bRsIQs=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=SrEE8lH0J4QEy7e/eLtAt8hF1Zmf2ZUTv6X7Buqy8CKY/2TgEQBvg5FLsjtOGHZuT
         U0T3cnclcqPZQSaYP8wnJS1edUZLjp8u3yhK3LPMotrKBAlO63dUZh0rzRirSGaOmt
         yE03pTpYy9nQd6WjcP/PX0nVGpdn59RzECdHH4kXC0E8q7KgLCc8NvTPk2MvnHktMm
         b6baEyhM7Zcu7tbVkhltmce+VfXQuneIYyUbRCciJPA74bTahGo/i1FU5VZ7j1psQv
         dYs1QNX5LV7/gzypG4U7ISxoS0xqSfX7R/LHC+7k7e9zsqjVKZ3IgHrE8sb5tykadT
         O7XRE90EO+Bwg==
Message-ID: <936d7ee5-9bfb-ba54-3bf2-4b15a11c5302@kernel.org>
Date:   Fri, 28 Jul 2023 23:07:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 3/6] time.1, getxattr.2, setxattr.2, sk98lin.4,
 string_copying.7: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728175955.o5eh3pa3u6lwuaec@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728175955.o5eh3pa3u6lwuaec@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ffLpIZAOM74XaHndi3FfxAQG"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ffLpIZAOM74XaHndi3FfxAQG
Content-Type: multipart/mixed; boundary="------------NliQqFpeoFuXzzbzkCcIYORD";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <936d7ee5-9bfb-ba54-3bf2-4b15a11c5302@kernel.org>
Subject: Re: [PATCH 3/6] time.1, getxattr.2, setxattr.2, sk98lin.4,
 string_copying.7: srcfix
References: <20230728175955.o5eh3pa3u6lwuaec@illithid>
In-Reply-To: <20230728175955.o5eh3pa3u6lwuaec@illithid>

--------------NliQqFpeoFuXzzbzkCcIYORD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-28 19:59, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> From 9b627f2a052e85170cb6672b027f8fd0cd3812c7 Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Fri, 28 Jul 2023 11:55:54 -0500
> Subject: [PATCH 3/6] time.1, getxattr.2, setxattr.2, sk98lin.4,
>  string_copying.7: srcfix

Since the page info is not important, I've edited it to be man*/:.

>=20
> Drop spurious, nilpotent uses of *roff `\c` escape sequence.
>=20
> Quoting groff_man_style(7):
>=20
>     \c  End a text line without inserting space or attempting a break.
>         Normally, if filling is enabled, the end of a text line is
>         treated like a space; an output line _may_ be broken there (if
>         not, an adjustable space is inserted); if filling is disabled,
>         the line _will_ be broken there, as in .EX/.EE examples.  The
>         next line is interpreted as usual and can include a macro call
>         (contrast with \newline).  \c is useful when three font styles
>         are needed in a single word, as in a command synopsis.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Patch applied.  Thanks!

> ---
>  man1/time.1           | 2 +-
>  man2/getxattr.2       | 3 +--
>  man2/setxattr.2       | 3 +--
>  man4/sk98lin.4        | 6 ++----
>  man7/string_copying.7 | 4 ++--
>  5 files changed, 7 insertions(+), 11 deletions(-)
>=20

[...]

> --- a/man4/sk98lin.4
> +++ b/man4/sk98lin.4
> @@ -152,14 +152,12 @@ .SH DESCRIPTION
>  Those features are available only after installation of open source mo=
dules
>  which can be found on the Internet:
>  .PP
> -.IR VLAN \c
> -:

I wonder what kind of history led to that.  :)

Actually, the git-blame(1) shows a curious thing.

> +.IR VLAN :
>  .UR http://www.candelatech.com\:/\[ti]greear\:/vlan.html
>  .UE
>  .br
>  .I Link
> -.IR Aggregation \c
> -:
> +.IR Aggregation :
>  .UR http://www.st.rim.or.jp\:/\[ti]yumo
>  .UE
>  .PP
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index da1fc6752..ab9199a68 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -317,12 +317,12 @@ .SS String vs character sequence
>  .PD 0
>  .BR stpcpy (3)
>  .IP \[bu]
> -.BR strcpy "(3), \c"

Ugh, blame me!

Cheers,
Alex

> +.BR strcpy (3),
>  .BR strcat (3)
>  .IP \[bu]
>  .BR stpecpy (3)
>  .IP \[bu]
> -.BR strlcpy "(3bsd), \c"
> +.BR strlcpy (3bsd),
>  .BR strlcat (3bsd)
>  .PD
>  .PP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------NliQqFpeoFuXzzbzkCcIYORD--

--------------ffLpIZAOM74XaHndi3FfxAQG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTELfcACgkQnowa+77/
2zKhZBAAiqbx4nA4P7dzWBbziatlnV2w6Ed/qOlf+oeYE2oWfjghyjSDBlVl89/x
w+DF+UZH9NXcvbxw8vQkQJRDR2tnSQDew5rXNClSHbZUpcWDUi0x0z2gsyps8y3z
+uzqW75kiLT0gYiShAoqlSQnUF7tjhytV+6gwkdq4LlJdRu4BIu6MtSri+5tlJhZ
4MvCdPXz3cfR4h1RqQ1JWqrO4MGpzedZe/s1y/CLWZuJGIYs8ko4n0B+tMP3X9x+
U/OsYF830tDjIjOp+6DuIE258Z5LFHKT4v9k26cJEGNPOGhOUKOxxjJgZ7qZNboa
7WQzf2Czn+5vsuI9zK37DCJ6GSlHRcB7EDf/WkrwU2zwpw2fs9z8IPsLldscZi/b
sZYwNSFqnFTkiyehZmllcsbvNDqngvC6+OH3/GCIvwSAfWeYBeUF9A09V0NVkKIl
Uu1u1/sXJYmDqcC4GNPdEwOP1V5q5RS7IuZ+c/wnWUkxpiJMbnXqFm+r5ZLVyuiv
DYJB+3yQ3e/2W96MqCFDYmpxxj7Ybax7DpwMrSAD4pcqAGS4AMOk0kJq3L8CK9Rs
JJVFqEhAqFnxwNmVlxEYII7eB69zr+FyDut7NOM/iZSiPD+JN7Y01IezhThxvzyU
Aar9Z07jPqcwhV4OhCsWsIpg3zhrwsoUQCMT4nhC/ZxMMi9r/Uo=
=jxd7
-----END PGP SIGNATURE-----

--------------ffLpIZAOM74XaHndi3FfxAQG--
