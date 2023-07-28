Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C462767781
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 23:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233366AbjG1VR7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 17:17:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233392AbjG1VR4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 17:17:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7024CC3
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 14:17:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ED030621FB
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 21:17:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3693C433C8;
        Fri, 28 Jul 2023 21:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690579074;
        bh=7MvKoNDS2oD2ruVAC5BCJGqjDS3QEOD6hozOoqlM7xA=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=bnlfCPhDIGoXyYLZycGupsYG7SIONNkSif4x79DZiu7YnpqJnw61XCFyZbI6mA4Rz
         p3jSCdaGN0YoQQ/MlXkglMLu8RnmWExeQny9JUBkbLmKHEMZmCn7d86yANzwGnanNI
         Lg2/V49e8Sx0w/pDaatuuYYoZgykvQcm3NH2ikeY8Lj1pOQuczxA6IR+2PgnsN8Jd+
         dkVBL5RU0R464lAp0c/R9ro9rO+u8jQiio0+4/V5SCrtMTcsn3LUnin/sPWDzB4NSn
         k2Z0XXDDW4IHWNpG18dzMSbwaAjT/XQOpPnHd5M8lrB1C7nX8Qz05WUqraMQbgM+Yi
         ex2ftbz8dMWpg==
Message-ID: <c0307db2-331f-4915-bbfc-c0f4cec70989@kernel.org>
Date:   Fri, 28 Jul 2023 23:17:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 5/6] prctl.2: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728180110.3robfuwlezsc7yut@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728180110.3robfuwlezsc7yut@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XE9PrfRcqLhCtCGbaZLPSQma"
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
--------------XE9PrfRcqLhCtCGbaZLPSQma
Content-Type: multipart/mixed; boundary="------------1g5V7Ut0obxHGvv8hHT0L0Hb";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <c0307db2-331f-4915-bbfc-c0f4cec70989@kernel.org>
Subject: Re: [PATCH 5/6] prctl.2: srcfix
References: <20230728180110.3robfuwlezsc7yut@illithid>
In-Reply-To: <20230728180110.3robfuwlezsc7yut@illithid>

--------------1g5V7Ut0obxHGvv8hHT0L0Hb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-28 20:01, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> From d37895afc8d4b7bef3ec08cbacc6a1849570f00a Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Fri, 28 Jul 2023 12:08:06 -0500
> Subject: [PATCH 5/6] prctl.2: srcfix
>=20
> Recognize that the man(7) macro `RB` exists.  Use it in favor of \c
> since only two font styles are required in alternation.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man2/prctl.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index fe403d76a..63369fb4b 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1050,8 +1050,8 @@ .SH DESCRIPTION
>  .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
>  Set the parent-death signal
>  of the calling process to \fIarg2\fP (either a signal value
> -in the range 1..\c
> -.BR NSIG "\-1" ,
> +in the range
> +.RB 1.. NSIG \-1,

I prefer using mathematical notation.  I applied the following instead:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
d7ec31628938c8261a1f00d3c273de4f7407ccee>

Cheers,
Alex

>  or 0 to clear).
>  This is the signal that the calling process will get when its
>  parent dies.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------1g5V7Ut0obxHGvv8hHT0L0Hb--

--------------XE9PrfRcqLhCtCGbaZLPSQma
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEMIAACgkQnowa+77/
2zJQnQ/6AtVljB4mTzEIEWqUnng8yYi/riJ6ic1f8a/tzZFHGNkxlGH41ZhIkeXa
LgXNYJyQ/RW3f7YUfeFQYPa1Y+sx7HfqOUjqGRHfU5LxtQhzq4MFODNVQeTCMeTD
D5p/FfCOB1ldzdvbnlMfqvp9xvBhfkAejc77ggYGbAFs4cJRiFmfGzsXu76plHE0
MaGUenTYEQp13FUqih1f9xGEscTKnf9i3w/YzXa4hs2kM9EwfA7AivAnCw5f0Qg+
AB8Gx5Zys2b9vChNemvqUe/8x8VGeYuklIFUTWtmxLqJD4GwdrvNvLD9ouzJYKBc
G6b/ex2WWPvjhHkILXSAlQ9aBG6qPAhKE+7ukX13TUhBsoOI5SICNcLVo6J5VLlw
6MWcLyeq4CHVg61KVDFG07FzDL5UhjnNBFcaheb5tyS30B0dnHMnBnApA4uw0e6X
2L5ekW72nZ/m0A6o5ntiqogfGqL+aBTTCw5YIMQ7IeWxQO1pAn1iDXJRNaJ9v6OD
xISupYudsMMF2GnM57wbRTbcjJgcSgXEU4Wsk/jKkslqoDyn5iwHxYFBiGGtOiC3
4cINprejtAYUb7bPGOGrZb7RtOVqxd05pskzL6NpSHwpGKXUHxth1pG3cv+6gnpA
C4CGaeyLuDvEn4rkmjmULvrFp5/o9WKtUcFv9fqryIY6qYCTuWQ=
=1mRw
-----END PGP SIGNATURE-----

--------------XE9PrfRcqLhCtCGbaZLPSQma--
