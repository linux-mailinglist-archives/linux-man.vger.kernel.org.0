Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A208767F68
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 15:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbjG2NVI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 09:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjG2NVH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 09:21:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F22268B
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 06:21:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A766B60472
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 13:21:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FF66C433C7;
        Sat, 29 Jul 2023 13:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690636865;
        bh=q9kqggb3/jyLW08p+ZL3TBifPO2FP56CJMOR1ysXMoE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dc4wLq73MH6UF/7w50xBUmH4Il3ZlVC6IqgmA+N6+BS43y7Jw6sPky4mh/ZIKsOcV
         xJSNXl8UMh9FCaZmH9jASR8HcmuPG/9KDOYC/+iamW8yxdy+aUngQVhSkOuGEaWIgk
         XENFhWQyT9CDjpUtjllBCOPUYbcnVUGn4u+Lr+iPjSGpnmQLJRQHM9t+d3wYW8u7m8
         xmurZKmOoJYKXWpPWFOPp5ZunQAoOpSbDCzsKjIHRL79VA2GmgrKOtNfdkVkAUC+3j
         VVct8O+PmmS3dvMl6LqpUToCfC+Bpo1j7Ph9uqkQdzyobCo265ImB0GkJQth2n0nsN
         eJoCEGjLQ86+Q==
Message-ID: <329a3df7-de63-9ea9-2061-3423c6384482@kernel.org>
Date:   Sat, 29 Jul 2023 15:20:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/2] man.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <64c4d17f.050a0220.3a505.03ec@mx.google.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <64c4d17f.050a0220.3a505.03ec@mx.google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Ff85h3w6mEXOEITnUjrxRSF"
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
--------------0Ff85h3w6mEXOEITnUjrxRSF
Content-Type: multipart/mixed; boundary="------------fsom0NhRas8BuLFETPL3ykE7";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <329a3df7-de63-9ea9-2061-3423c6384482@kernel.org>
Subject: Re: [PATCH v2 2/2] man.7: ffix
References: <64c4d17f.050a0220.3a505.03ec@mx.google.com>
In-Reply-To: <64c4d17f.050a0220.3a505.03ec@mx.google.com>

--------------fsom0NhRas8BuLFETPL3ykE7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-28 19:28, G. Branden Robinson wrote:
> v2: Use heading markup that doesn't confuse Git.

This is part of the commit message.  Since it's just context for
comparing to v1, it's better to have it outside of the commit message.
You could place it after the ---.

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
> =3D=3D=3D=3D=3D=3D
> groff 1.22.3: BAD
> groff 1.22.4: GOOD
> groff 1.23.0: BAD
> mandoc 1.14.6: BAD
>=20
> now
> =3D=3D=3D
> groff 1.22.3: BAD
> groff 1.22.4: GOOD
> groff 1.23.0: GOOD
> mandoc 1.14.6: GOOD
>=20
> [1] https://savannah.gnu.org/bugs/?51468
>     https://lists.gnu.org/archive/html/groff/2022-06/msg00020.html
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Patch applied.  Thanks!

> ---

Here you can write things that shouldn't go in the commit message.
Usually, comparison to vX.

Cheers,
Alex

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


--------------fsom0NhRas8BuLFETPL3ykE7--

--------------0Ff85h3w6mEXOEITnUjrxRSF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTFEjUACgkQnowa+77/
2zK+4BAAgU8l/eT77zxYRGcInD84HmeD86RlHcUQ4vGxG42IwA7pTPGjEyGmrJFL
CajIyZqvQiFNUsXRb9KHK/8+FPQAPx9hOQsGbAW8/OQhOQD8GT1QzKM6rVqotpbP
zqMVwEl0VPL/sCrMoSie6tfOMk2f+4PrLIRXsP3P7ghpZnCI+aIORwiGMWPh+t3N
ffCjVLqkYIDVeY6KMGYKt3RWhd2LgcVx00bcyvIyOdkRpi8DhdZAf7lKiai4C13d
HqweDDE46teln+HwzaTrvrtrLNLUIiTWgMYgZFGd0+Sn4yLHUrc6r+QbE/qQhTdu
sRqTu6rLuvc5qPFXvLxLBFCKGw3ACegi2Gwd3ntzLMGCzCDVfyf1uVcU4r8HLYhw
OIrW4qDtMhE0T2FR/oKWnvzVZag5U+ALUIcLjS9RfsV7HwpDjKONqiMwvRK21Ena
zhrNmfx2FDpasto4K90Fmihw3xczXiMndapK9GeMxBOFUTNP7NEZ/BoBF2JYM2rX
hN/BX43cACg23KaExlVdLl5+TOj40pMFyq+IAQcEdOoZErj2zXCSLM879Z4ZT7Uo
c9Zyw2F8g9i6XK5Vai0CmHKjAvjihZoHxt1RirNEuwhNWrZVV2WNgHox36nlOhdD
DXq8HDVWSfdGDQWonp6oDbp8RcedjRU6Mj+9y4hfpWV2JlDxPvU=
=RVGw
-----END PGP SIGNATURE-----

--------------0Ff85h3w6mEXOEITnUjrxRSF--
