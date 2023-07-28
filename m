Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E57D876774D
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:58:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233092AbjG1U6U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233322AbjG1U6T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:58:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D7F4488
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:58:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3F146621FF
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 20:58:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0283DC433C7;
        Fri, 28 Jul 2023 20:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690577896;
        bh=SMU/1LLDFNrRKo4F0RYZ2HU9FExu0ogc+PQT72bWRQM=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=HdVu1MZtFak5eCStYaYdrzHuiUjOCbYEO8fRGKSNLBUI5TE3I7JX1tEigK3yFZ8oI
         lCwvrFAKtqe5PhscFU3rZyaDseRMDJD7ptwyLSVs9mZ0/EFkbonO2ckBuifwcjAWHw
         aS6CAP0w1IaHh6W5aWS9MhW7mbvuy0/41KMPU4Kbo1dnAw2I2brpA4pxGWu+2/5GJX
         li45Bht8VDhzzuk1gDNyGmeczIlxDYahiMsCxmFNvVynjzkQa0B30NXROWImdc46Cm
         nZzOjbnR3FGJpxMQ7tWF5kbSNm1gYibruvC7uMAqQkJVX8YB21YzrwkknPY0a821ny
         3vRlZmc3AS/FA==
Message-ID: <fe8d40d4-6d08-1807-a4d7-cbfda41173c1@kernel.org>
Date:   Fri, 28 Jul 2023 22:58:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/6] vfork.2: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728175855.bcm427agldvrivcd@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728175855.bcm427agldvrivcd@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------g0DvrN0UEtNbXHOYudXOrib3"
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
--------------g0DvrN0UEtNbXHOYudXOrib3
Content-Type: multipart/mixed; boundary="------------KwDKPYu7vCk5ScLe6CjqV5Rr";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <fe8d40d4-6d08-1807-a4d7-cbfda41173c1@kernel.org>
Subject: Re: [PATCH 2/6] vfork.2: ffix
References: <20230728175855.bcm427agldvrivcd@illithid>
In-Reply-To: <20230728175855.bcm427agldvrivcd@illithid>

--------------KwDKPYu7vCk5ScLe6CjqV5Rr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-28 19:58, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> From 0421c8301f29c2c7aeb2ebe82a72fc716617ea19 Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Fri, 28 Jul 2023 11:52:34 -0500
> Subject: [PATCH 2/6] vfork.2: ffix
>=20
> * Use typographer's quotation marks.
> * Quote the 4.2BSD vfork(2) page _exactly_, including font styling.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.2BSD/usr/man/man2/vfo=
rk.2
>=20
> This is to remove a false positive in preparation for a sed(1)-driven
> update of man page cross references to use the groff 1.23.0 `MR` macro.=

>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man2/vfork.2 | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/man2/vfork.2 b/man2/vfork.2
> index 3a65010ca..d5ea876e3 100644
> --- a/man2/vfork.2
> +++ b/man2/vfork.2
> @@ -149,13 +149,12 @@ .SH VERSIONS
>  Some consider the semantics of
>  .BR vfork ()
>  to be an architectural blemish, and the 4.2BSD man page stated:
> -"This system call will be eliminated when proper system sharing mechan=
isms
> -are implemented.
> +\[lq]This system call will be eliminated when proper system sharing
> +mechanisms are implemented.

Error: write poems, not prose.

I've amended that ;-)

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
47b6b10ec8a61dade7f50d6ec2a2ff7001fb19af>

Cheers,
Alex

>  Users should not depend on the memory sharing semantics of
> -.BR vfork ()
> +.I vfork
>  as it will, in that case, be made synonymous to
> -.BR fork (2).\c
> -"
> +.IR fork .\[rq]
>  However, even though modern memory management hardware
>  has decreased the performance difference between
>  .BR fork (2)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------KwDKPYu7vCk5ScLe6CjqV5Rr--

--------------g0DvrN0UEtNbXHOYudXOrib3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEK+YACgkQnowa+77/
2zIJEQ/9Eof5oMj0sreoA9nC2GjuBm2W3sBNFDqW+IFR4RO71Wn93C7P9f/EHgB3
kVR2uJPxuhrlclnijHIHJpBotySagvmZTNpdGo7g/UCrF71IybmZ6DAUj4uwzfP3
vGangyE8RXXXt/qiP/Sp2n7QA3dlzeTDzFBKh5YeIn19kMQr8xprT5DaMTRLYxQv
KuGugxyN3924rLWjEXk5kLECEiqR9Ecc/BS4JOrz8h75oIXhMibwBvvOnsMK/8ug
XeBfg11e0rN9WsjfMe+Gord+l0wBT3TJUP6d8jcrsUqeITIXvAYPsc4qjpUpdccv
Lhsv3YMgre/DmnspGSe6uXI7Et+wKmlyo78OLAsVN4KE/pPVdwxJXmsF8pIJ7O4g
peq9+vZihqT/7gTZBAjD4An1cg9nxY1IlKDFC2iNjX3m49lqO+ugoN3fuxRZmECQ
/QbPRlmJRoMXPv27Z1bYfS4obAPOwHYCxSScuyOTe8e0WHJYuVMpjHWn92ePCDpq
9tnZK42XM3aUYkc9/YDbNU+sFUQ6KVRkP0b2Ebkx+PXscS8wmHugeGuM4o5eXdxJ
5nKjTXSad4nkn2Qr55k/zcEjgbA/11Em0Ntxw7NZlFTeF4Tb9iG9oFjWbh9ukJ2j
N7fmz3MEXGvEwkqSqTsgu5vR1FM7y9PZ0vzEldP4n67cF85CJ0s=
=1Ic1
-----END PGP SIGNATURE-----

--------------g0DvrN0UEtNbXHOYudXOrib3--
