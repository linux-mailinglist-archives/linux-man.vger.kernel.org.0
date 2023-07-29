Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187A1767EB4
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 13:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231148AbjG2L3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 07:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbjG2L3q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 07:29:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5175E198C
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 04:29:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D2D5A60B98
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 11:29:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76AFDC433C8;
        Sat, 29 Jul 2023 11:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690630178;
        bh=Tt695GHO4c36bG9boNzQ/brxRarHNxf5PdpRwpACH/U=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=S95FQKwMi1CfHUcvuF8dasiN2XP7wy1nQt0BA8NzHdK4DO0l8QjeC5RU2Zdu9X4yh
         E/Nyi6wflcKDgIT1i51TMzGojR0RhaEp8gj5GKMbbycoZb2N+//MlfgqalphELQie4
         MBpn6qP0yfn5hcA1zblqSXOOu/f4vjPI8PYDDcIine/Z7qAOqzBny7UrQgxU3G524W
         V7s3W31BAsfBXRG4rJCfRD0cvv4RGOas1VtCZ9WdTV2Io21e9po9YW/0wSTvSqTOHe
         45mRLd2dRsOKpjlioydv9nqs9qO11qHaPfShjzh2E/0v2yVMIMXhEvXlpPOxcAeN8W
         pzm3u7Z3dyuRQ==
Message-ID: <a79cca5f-032e-ba4f-8f1f-c9fecbeafd9a@kernel.org>
Date:   Sat, 29 Jul 2023 13:29:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: tfix
Content-Language: en-US
To:     Lennart Jablonka <humm@ljabl.com>
References: <ZMQL2bAg5p2no9ir@beryllium>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMQL2bAg5p2no9ir@beryllium>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0RKBFHY0UkjfIc6hMG6ytcSB"
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
--------------0RKBFHY0UkjfIc6hMG6ytcSB
Content-Type: multipart/mixed; boundary="------------mUQBUbv5zhFmgtmtk576pa00";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Lennart Jablonka <humm@ljabl.com>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <a79cca5f-032e-ba4f-8f1f-c9fecbeafd9a@kernel.org>
Subject: Re: [PATCH] string_copying.7: tfix
References: <ZMQL2bAg5p2no9ir@beryllium>
In-Reply-To: <ZMQL2bAg5p2no9ir@beryllium>

--------------mUQBUbv5zhFmgtmtk576pa00
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

On 2023-07-28 20:41, Lennart Jablonka wrote:
> Signed-off-by: Lennart Jablonka <humm@ljabl.com>

Please send v2 with

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I'll comment below on what should be removed from the patch in v2.
Reword the commit message as you find appropriate for the revision.

> ---
> On some of the commas:  There are a few of instances of
>=20
> 	Subject verb object partclause, advphrase.
>=20
> For example:
>=20
> 	This function catenates the input character sequence contained in a nu=
ll-padded wixed-width buffer, into a destination string.
> 	| subject     | verb    | object                     | participial cla=
use                           | adverbial phrase       |
>=20
> Dropping the relative clause, there shouldn't be a comma preceding the
> restrictive adverbial phrase: The input character sequence is really,
> always catenated into a destination string; that is essential.
>=20
> The participial clause, being non-restrictive---there is but one input
> character sequence that could be meant---, should be enclosed by commas=
=2E
> That is the existing comma's purpose and doesn't work without the added=
,
> first comma.


Please include these things in the commit message.  The same it can
be useful for me to review now, it can be useful for anyone
revisiting the patch in the future.

>=20
>  man7/string_copying.7 | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>=20
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index da1fc6752..04426ef77 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -49,7 +49,7 @@ const char *restrict " src ,
>  .PP
>  // Zero a fixed-width buffer, and
>  // copy a string into a character sequence with truncation.
> -.BI "char *strncpy(char " dest "[restrict ." sz "], \
> +.BI "char *strncpy(char " dst "[restrict ." sz "], \

ok

>  const char *restrict " src ,
>  .BI "               size_t " sz );
>  .PP
> @@ -280,9 +280,9 @@ instead of
>  In programs that make considerable use of strings or character sequenc=
es,
>  and need the best performance,
>  using overlapping character sequences can make a big difference.
> -It allows holding subsequences of a larger character sequence.
> +It allows holding sub-sequences of a larger character sequence,

Use subsequences (but the s/./,/ is good).

>  while not duplicating memory
> -nor using time to do a copy.
> +or using time to do a copy.

revert

>  .PP
>  However, this is delicate,
>  since it requires using character sequences.
> @@ -397,7 +397,7 @@ It returns a pointer suitable for chaining.
>  Truncation needs to be detected only once after the last chained call.=

>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.

ok

>  .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ---=
-/
>  .TP
>  .BR strlcpy (3bsd)
> @@ -427,7 +427,7 @@ isn't large enough to hold the copy,
>  the resulting character sequence is truncated.
>  Since it creates a character sequence,
>  it doesn't need to write a terminating null byte.
> -It's impossible to distinguish truncation by the result of the call,
> +It's impossible to distinguish truncation by the result of the call

revert

>  from a character sequence that just fits the destination buffer;
>  truncation should be detected by
>  comparing the length of the input string
> @@ -444,8 +444,8 @@ is a more useful alternative to this function.
>  .\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) ------------------=
--/
>  .TP
>  .BR zustr2ustp (3)
> -This function copies the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function copies the input character sequence,

ok

> +contained in a null-padded fixed-width buffer,

ok

>  into a destination character sequence.
>  The programmer is responsible for allocating a buffer large enough.
>  It returns a pointer suitable for chaining.
> @@ -455,12 +455,12 @@ since the size of the original character sequence=
 is always known,
>  so it wouldn't be very useful.
>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.

ok

>  .\" ----- DESCRIPTION :: Functions :: zustr2stp(3) -------------------=
-/
>  .TP
>  .BR zustr2stp (3)
> -This function copies the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function copies the input character sequence,

ok

> +contained in a null-padded fixed-width buffer,

ok

>  into a destination string.
>  The programmer is responsible for allocating a buffer large enough.
>  It returns a pointer suitable for chaining.
> @@ -470,7 +470,7 @@ since the size of the original character sequence i=
s always known,
>  so it wouldn't be very useful.
>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.

ok

>  .\" ----- DESCRIPTION :: Functions :: strncat(3) ---------------------=
-/
>  .TP
>  .BR strncat (3)
> @@ -478,8 +478,8 @@ Do not confuse this function with
>  .BR strncpy (3);
>  they are not related at all.
>  .IP
> -This function catenates the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function catenates the input character sequence,

ok

> +contained in a null-padded fixed-width buffer,

ok

>  into a destination string.
>  The programmer is responsible for allocating a buffer large enough.
>  The return value is useless.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------mUQBUbv5zhFmgtmtk576pa00--

--------------0RKBFHY0UkjfIc6hMG6ytcSB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTE+BgACgkQnowa+77/
2zLZVg//cvVDidtJUSFdo5cPtmHJc03QVRrExZAlUcT0CjthQ+5qrv2OlW2X0JNe
TcoUK2Hf8wuvA6jA87heUi9lp0FP2astOlZV/fJqvorPkK1pp6cLqRSQiU5eptVA
G0B7/Xb1bcn/rpNRSim3tDQv8BNE69OgtbS1vhzTBil4igtbyvR5crzSncUxmmH3
EpW72KjiNwDS9WzVka2gzGd7aIu13VT/mO3cQJbZzhSbL0smcv/Zub2ApN9Z1yeh
vlvRGsiKluFZHtIcphn4A3ZljxZ3/TisvexKSwXB/sB6WIPKUjpCgAl/4JnEzDXd
caEDh7i6WivrKvy+4RNfkKEUH8lFN8Kc0Z3z0x8ovIGb/Bua8bTZeHUAEhxFNvnt
zkUJo5JkyMJCiF6Sl/MyQchX5st3nHMw/4U8f8jy0dxSyohs+PvQGUXE3XX7e13N
56FrrQIpRRmkGuJrojhrFbkrNDvYrzYbucXSungoPhi7pjfvhrKKKEC6a4066LWV
T5Kt3P4gUD3epbm0vbYNddKSiZu3imaE6E07/5JgeFZHxIk438h6V2pFQdBzzf0X
ME6M1s66PiWH2zhr0StqgS9Dt1dDfC1LY1SJ8jkCu2B9aBHs3Ob3JF0T1D/C3GjT
3naqzN/4JaElTWZUlbsu50ehCyerMclSx6+WWwZP8adrbjxRp2M=
=lrrn
-----END PGP SIGNATURE-----

--------------0RKBFHY0UkjfIc6hMG6ytcSB--
