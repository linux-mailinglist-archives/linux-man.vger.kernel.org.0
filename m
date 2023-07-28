Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42117767783
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 23:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231165AbjG1VTv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 17:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjG1VTu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 17:19:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B3D219A7
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 14:19:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2108F62204
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 21:19:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D69AFC433C7;
        Fri, 28 Jul 2023 21:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690579188;
        bh=bLeJPzWG2S+x9tIiIUaKcCZi+YnQNTiLrNV52vEG4bY=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=dM/8z+0D9vWy1CTbS2+1Ni/RXMC3YWHkLLdoGTeP8zgFXpNGwbiEGyr5zybK6SmnH
         LFfSBjaCnjDX7MJrW7oneb+1FfKnfrYc4BkEQ4R7OMb4xqVpWOf/BuzpqmFQHODv9E
         a1LKGdvVp0KVNeTX1tWgrxkL6eeLEmhgEXztupC4Np5nxYbg8gH44Taqr80JnxEUln
         /qA/tUyGEd8C+V2g3XwXK/ZFSjBiYy312oj7bQvoURv2Mjoqs3LMTc+Le6nbwjkyuE
         3K10/Y1FeznntrnHsowbdrGoCQaRMbodFtkFTIis48povsOjiu+8Zk3tcB9HlpS81X
         NPIvhmMansEtA==
Message-ID: <b90af90d-36e7-1ef4-52f7-62b32cbcc0aa@kernel.org>
Date:   Fri, 28 Jul 2023 23:19:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 6/6] man.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728180158.zfas4r33u5rsun6a@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728180158.zfas4r33u5rsun6a@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IU0eQ2R4XD074je5e0tn8XoT"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IU0eQ2R4XD074je5e0tn8XoT
Content-Type: multipart/mixed; boundary="------------AECXzQ6bRpkxJmwE9q3D0l08";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <b90af90d-36e7-1ef4-52f7-62b32cbcc0aa@kernel.org>
Subject: Re: [PATCH 6/6] man.7: ffix
References: <20230728180158.zfas4r33u5rsun6a@illithid>
In-Reply-To: <20230728180158.zfas4r33u5rsun6a@illithid>

--------------AECXzQ6bRpkxJmwE9q3D0l08
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-28 20:01, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> From 5ce2b67f5e4ba0f52291f515bed0891d7a56d2ea Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Fri, 28 Jul 2023 12:28:06 -0500
> Subject: [PATCH 6/6] man.7: ffix
>=20
> The `\c` escape sequence works in an argument to a macro call that is
> part of a paragraph tag with font style alternation macros, but not the=

> ordinary font macros `B` and `I`.  This is because `TP`, `B`, and `I`
> all set up input traps; the six font style alternation macros do not.
>=20
> The old formatting would, for some versions of some formatters, set the=

> "[trailer]" text as part of the paragraph body, not the tag--like this.=

>=20
>        .UE    [trailer] Terminate the link text  of  the  preceding  .U=
R
>               macro,  with  the  optional trailer (if present, usually =
a
> (and so on)
>=20
> This was a poorly understood--and undocumented--interaction of man(7)
> features until recently.  Gory details involving nroff on Unix Version =
7
> (1979) running on a simulated PDP-11/45 are available.[1]
>=20
> Here is a comparison of the former and new markup.
>=20
> before
> ------
> groff 1.22.3: BAD
> groff 1.22.4: GOOD
> groff 1.23.0: BAD
> mandoc 1.14.6: BAD
>=20
> now
> ---

That's problematic.  git(1) understands those 3 lines as the end of the
commit message.  It's interesting to learn that if you write more than 3
it just works.  Please reformat.

Cheers,
Alex

> groff 1.22.3: BAD
> groff 1.22.4: GOOD
> groff 1.23.0: GOOD
> mandoc 1.14.6: GOOD
>=20
> [1] https://savannah.gnu.org/bugs/?51468
>     https://lists.gnu.org/archive/html/groff/2022-06/msg00020.html
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man7/man.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/man.7 b/man7/man.7
> index 258ce25da..583fe354f 100644
> --- a/man7/man.7
> +++ b/man7/man.7
> @@ -249,7 +249,7 @@ .SS Hypertext link macros
>  .B .UE
>  macro as the link text.
>  .TP
> -.B .UE \c
> +.BR .UE \~\c
>  .RI [ trailer ]
>  Terminate the link text of the preceding
>  .B .UR

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------AECXzQ6bRpkxJmwE9q3D0l08--

--------------IU0eQ2R4XD074je5e0tn8XoT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEMPIACgkQnowa+77/
2zLN7Q/9GJOqf+z29Ef+zWWHFiTMkXKbxXmhl3c+wEQ/JVGdXTt9yGxofsgD1mcx
L3+F/eLNlUxAy1vLnKz9SiRa1VGvdTXHBUz6Sqrq0vjGU5ONwQkgFdx+IyMAqaEo
O3aUiYAjt24Hwesr4wH+hTFC0aBC4pA7klYQaO6ogr/0G20DubqTt5ZAekSKoDSY
qVTwngkqNZH2uk+Z6+MdOFMfzxJljNoP1E/zGO+qFDlE5qS6ciDLRG4z4f8CGSvI
zjiuhidQ1gJyS6m4aC+P1V1ljst3pVhbkjqYLPyMmr8WVw/tdvhtlodjvc2ZGZjN
6bMFeQ4sfyL7Lr/zuKF44Eg27j3mmAER/yMVcIA90EfCgAy9520ftT2A4Uoalc6x
WDIXmxf0KzaqG/MQ9xmDSbHeaZPMtFlA72prNuPrZH7qND8m3GiaYL8GBP8U6zbx
aQc6jVtjiaotZu10Q5aL2/JbiY4cTZNrv66WORTnooXbHmCs88zPKdC1YihisiXf
R8rhPG9kFtOkwcIw3NCUTsgDephMUacEqWTrvfYZwZAW6wder1gMkeBpA+E4ZEwJ
RTcHeAUm1Am3OTmDmhPHbW9iewxpyVJEUbGV82TwVTJnmqv5KQz2s70KkEanFzln
ksp5qVdloNcV93Id7D/6jZB9jzaqBpaf4yXsuOYVVjCNSMuVpKM=
=NDNA
-----END PGP SIGNATURE-----

--------------IU0eQ2R4XD074je5e0tn8XoT--
