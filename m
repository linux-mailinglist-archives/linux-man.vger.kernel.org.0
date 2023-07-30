Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E23B7686BF
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 19:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjG3Rbo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 13:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjG3Rbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 13:31:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D47BBE
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 10:31:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EF40560C91
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 17:31:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6582C433C8;
        Sun, 30 Jul 2023 17:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690738301;
        bh=TawKb/SYCakl4MHUrClHvdG05vUczxe4pEjMmDtDn6w=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RQn5p42EfgBG0PIWRQ+hZwPpLrrFdB6ZUVVR4x2BSDUJsIM10fHELmt5Fzl/T7vjJ
         L5+rrJvl0NHA0HMbHK9LYKSYkM0rFi5DUo5IMdBnBq+GyLxlacTzkNM3lGiM6dBmYy
         T5G7OQBIwhX9RykgrS3POmuqVWdhVp/Sx5s72NAjfOCnwlj7QKwA4esgbkTGvteOiY
         PTFZIpxQYslgWis5eq0X7u2QhkGA1mfTuAInQH7BfHl1TOfbDCeOyf0Eme/o0ArmBh
         3tNefcaaTEPz0F/PCSDKUh/HpX+pOti5N/qVBuUWXMFTufo/uH5ZGhh/igTUTMH6ys
         FovNxHxbD/sBQ==
Message-ID: <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
Date:   Sun, 30 Jul 2023 19:31:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] memcmp.3: Recast security caveat
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730153137.qgkurw4mudy6etca@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730153137.qgkurw4mudy6etca@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CuudIv0yjVMRTgSlV0hiIHWG"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CuudIv0yjVMRTgSlV0hiIHWG
Content-Type: multipart/mixed; boundary="------------mM2jZ0605nZHO0bk9Ja0Yg88";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
Subject: Re: [PATCH v2] memcmp.3: Recast security caveat
References: <20230730153137.qgkurw4mudy6etca@illithid>
In-Reply-To: <20230730153137.qgkurw4mudy6etca@illithid>

--------------mM2jZ0605nZHO0bk9Ja0Yg88
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-30 17:31, G. Branden Robinson wrote:
> Use terminology more carefully.
>=20
> * Refer to the info sec property of confidentiality instead of saying,
>   vaguely, "security-critical".
>     https://informationsecurity.wustl.edu/items/\
>     confidentiality-integrity-and-availability-the-cia-triad/
> * Try not to confuse anyone who's studied the analysis of algorithms:
>   don't say "constant time" when "deterministic time" is meant.  The
>   time to perform the memory comparison remains linear (O(n)), not
>   constant (O(1)).
> * Tighten wording.

I prefer 2 spaces between the bullet and the list contents.  See
man-pages(7).  Anyway, I accepted it this time.  :)


>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

You need to quote your name with '"' due to the '.'.  I've found
some software has issues with it.  git-send-email(1) is one of them
(due to the perl library it uses).

Anyway, patch applied.  Thanks!

Cheers,
Alex

> ---
>  man3/memcmp.3 | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>=20
> diff --git a/man3/memcmp.3 b/man3/memcmp.3
> index 9a2aad353..67ebe392e 100644
> --- a/man3/memcmp.3
> +++ b/man3/memcmp.3
> @@ -67,9 +67,17 @@ .SH HISTORY
>  .SH CAVEATS
>  Do not use
>  .BR memcmp ()
> -to compare security critical data, such as cryptographic secrets,
> -because the required CPU time depends on the number of equal bytes.
> -Instead, a function that performs comparisons in constant time is requ=
ired.
> +to compare confidential data,
> +such as cryptographic secrets,
> +because the CPU time required for the comparison
> +depends on the contents of the addresses compared,
> +this function is subject to timing-based side-channel attacks.
> +In such cases,
> +a function that performs comparisons in deterministic time,
> +depending only on
> +.I n
> +(the quantity of bytes compared)
> +is required.
>  Some operating systems provide such a function (e.g., NetBSD's
>  .BR consttime_memequal ()),
>  but no such function is specified in POSIX.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------mM2jZ0605nZHO0bk9Ja0Yg88--

--------------CuudIv0yjVMRTgSlV0hiIHWG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGnnsACgkQnowa+77/
2zKNtw/8C4/7XNOcC0BHSZQrtgSZ93B9c5YQk+uRrlFWRicV4V6G4ILIVkhkkObc
1OtC+jr9/xi88ssB79TZDQDBgxUNO1O1x2z1LXy9LJovgwLezCCUh/vu3V949MTc
00Ow56hMaBEokAdp2i1mQAKsIwQCNeOWru3xxDyDdHsVF+BTMr0gicVnIl6WSKkv
qfgFn1Q+Q1I7hJXiCWs6tUbnB1EFq4uy6QiaiKXOFTp/7aeJCGuVguMcNHmFieXe
/4FVqw10z1ULsEF6PhvlX5ZrtCZNzPPsbvvTOTU1omQxAObx2Dlrh+YRs//pyrj1
4qldXHcMjQ6slq+fNDY33bSQu43NM5VWmo1qOKQRTUh6ToLPGc4mOc+z7dDcntKp
MG5UDy+E94FXZwSeOYhE4LAc3b5VvuNwoO4x0Tgn3LU9rX+i33mlGbWHp6TdXbmA
M+AtrLzxTGAcXXgIGVf/Ck9pelIVdC4PGii1x/4r9/olVGbR+RpLgc1u9rXa9zPO
hNXSgyUYMVMZ+NAsfP7xkVACX0wN/QJIrMxF4Ez2DnL32E723Jsfxfs4r+HqAhhe
bzKK0OKLH2FZ2t0kPcVC/+4Vc1ynj3Kay/S11i7l98H1nbewSCLbxHQHtUr9jOXL
dVkJVggw7CNL9lZsvzEIZV2QpLbAig17eWKbbinlxAQMu8F/BD4=
=2Fur
-----END PGP SIGNATURE-----

--------------CuudIv0yjVMRTgSlV0hiIHWG--
