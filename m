Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D1C7754A2A
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbjGOQmz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:42:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbjGOQmx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:42:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD02271F
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:42:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3032160BB5
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F358AC433C7;
        Sat, 15 Jul 2023 16:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689439365;
        bh=w1dWJue2mUftb2sMT1OuRPA0oFM8fg05lRuLJ1TixfU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RS5LulRMRp4woJPX4AIjpVwhem/KwPZXxf2dDRmSMCd/i+4lkc4JY7tYowCEeh1bV
         PmMAhtzD/XaepVVJakXR92JbTK759qlh26XJEBDQz/U4LLBmk90Dcj4nUizG0JD4AU
         4GNYX9tInd7j7xSZ1EgK3wlVlbv4Q4GdX74zZllimrUdDkQ/qBOUTvOBQZzp/BUVa4
         4sQn5bRw4sH5SXDEkcj+ajMn0Q9kmzOg95UbKQFkmrtwhzI3OGuYG5W7DnLRth0aey
         b78eqGl6/rKHBM35I4BpbBzjIj//dxvjDvl8ZJ8q5pzjmx+jFD+GhFO3U+d2S2cnz2
         8JNNeNijddR0Q==
Message-ID: <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
Date:   Sat, 15 Jul 2023 18:42:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] ld.so.8: Correct linker option name
Content-Language: en-US
To:     Fangrui Song <maskray@google.com>
Cc:     linux-man@vger.kernel.org
References: <20230714070043.275611-1-maskray@google.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230714070043.275611-1-maskray@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kbIMRGCEbJYpi4Z0Sxy4YxpI"
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
--------------kbIMRGCEbJYpi4Z0Sxy4YxpI
Content-Type: multipart/mixed; boundary="------------L2UXzkfgzUPfpZFcWbx9tOW2";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: linux-man@vger.kernel.org
Message-ID: <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
Subject: Re: [PATCH] ld.so.8: Correct linker option name
References: <20230714070043.275611-1-maskray@google.com>
In-Reply-To: <20230714070043.275611-1-maskray@google.com>

--------------L2UXzkfgzUPfpZFcWbx9tOW2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Fangrui,

On 2023-07-14 09:00, Fangrui Song wrote:
> The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib
> instead of -z nodeflib.

Does -z nodeflib exist?  Please mention that in your commit message.

Thanks,
Alex

>=20
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  man8/ld.so.8 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 1c9a13f56..351913bd8 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -83,7 +83,7 @@ From the cache file
>  which contains a compiled list of candidate shared objects previously =
found
>  in the augmented library path.
>  If, however, the binary was linked with the
> -.B \-z nodeflib
> +.B \-z nodefaultlib
>  linker option, shared objects in the default paths are skipped.
>  Shared objects installed in hardware capability directories (see below=
)
>  are preferred to other shared objects.
> @@ -97,7 +97,7 @@ and then
>  and then
>  .IR /usr/lib64 .)
>  If the binary was linked with the
> -.B \-z nodeflib
> +.B \-z nodefaultlib
>  linker option, this step is skipped.
>  .\"
>  .SS Dynamic string tokens

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------L2UXzkfgzUPfpZFcWbx9tOW2--

--------------kbIMRGCEbJYpi4Z0Sxy4YxpI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyzIMACgkQnowa+77/
2zKd7xAAknfVX9fX2N+nX6MbszJ7fkzotVsXOsKb/WlVxQpec10BX33WSv79VEZW
Kn6fidhilyjDjhjNnG11iQ1l0QkwaeS6IxtagDwtW1HrQPcim7GrBwKRzZYfK8tX
oaTBEonPDZspz+FYwoMW/nyW8V5gGBW+7zvyISqe4leL61J3uPUALtQe9+WztuYP
QyaBl4VFIexDvh4hBddYSygrl0rLAjfSFXpEEAdYRNqU8UM2VOEOGXNBi4RgBn7E
2AMyhu9lgjJXQoIjPVPZm4/bm4SKOJzt/M0aRSMKcC8R+SINUEO+XZESSi0yED/F
wR8+qGCK6f5oE4HszB2kKKt61Ay34vDOL83e+HSuxTZVE4W44jUytV3kDnuvoqzD
NjRLiGzR4bFjxi9uvSBi8m+EzSUU+1PT0g5MxXm24oq/7Mhbz0TXM6n75T0mmSOk
3NQkTOMEc0/LihBvrMUjxfxNnJORx+fuREyRH9+R2imgcERKkYrHKrrYbksOpamV
Trz0obeei8G+nHMBeGwMRo+tyxYHl/F4nD0fqhFk/X2LhZGgq+5s7FbBsz2C0sXo
ZUCSgcM8pf2eJCoZuI9D7RutpKbuxDFV9TeNtJgbRgU4gBduw+gyMhPxpd+FB0VE
oZy2VZF26hzQ+i4Z+rIE0Ah8TtyOQdvdOSjxxS2+eITVV1HVw4o=
=ZKgz
-----END PGP SIGNATURE-----

--------------kbIMRGCEbJYpi4Z0Sxy4YxpI--
