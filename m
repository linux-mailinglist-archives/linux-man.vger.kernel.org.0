Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15FB676803C
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 17:02:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbjG2PCv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 11:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231754AbjG2PCv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 11:02:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555B6180
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 08:02:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CD8D860C56
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 15:02:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B302DC433C7;
        Sat, 29 Jul 2023 15:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690642961;
        bh=Ifr+enxYZi4sSy7le/vy+norUgsPHpXW743bxd67clQ=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=Y2TuNBubpCa91w8O52vi3RtZ+U2KeOhEXbInYw299wAMAOoyfwH/h7MgGAGxBVNME
         v55eArNidLILt0Iowf2ReS9+Icixg+4qsp/XtSyq8J+aqjY4uFSmwwnuh0fD9upgml
         SRSH0wMj5O+GWK/48o4HXEIwAmGWlJUgUN/O+oPBEL1xUeC0jNPoY8z96K9ZxMgSdi
         Tki8s5u6d8+fglMxU7fcwjfzRZ11vaeXTJzpFDSdcitW2fiKRx1n7zeU1DZU8IiKPA
         ic3AinKVtjHa8MXH1D9q9TecuzFcFzLCkKLoa78o7Lpm+b50cfjJKbbIFQXdycx8ew
         UFYUzAZFWFl9g==
Message-ID: <723c6200-8e3d-a63f-322f-621c5c132152@kernel.org>
Date:   Sat, 29 Jul 2023 17:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] string_copying.7: tfix
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ZMUXGiFyID8a7Qj8@fluorine.ljabl.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMUXGiFyID8a7Qj8@fluorine.ljabl.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ixuoE0rR2Yqv4bHgDHQr2KpL"
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
--------------ixuoE0rR2Yqv4bHgDHQr2KpL
Content-Type: multipart/mixed; boundary="------------rEtCb7cPYDbGzKmpk0kNKx2E";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <723c6200-8e3d-a63f-322f-621c5c132152@kernel.org>
Subject: Re: [PATCH v2] string_copying.7: tfix
References: <ZMUXGiFyID8a7Qj8@fluorine.ljabl.com>
In-Reply-To: <ZMUXGiFyID8a7Qj8@fluorine.ljabl.com>

--------------rEtCb7cPYDbGzKmpk0kNKx2E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

On 2023-07-29 15:41, Lennart Jablonka wrote:
> On some of the commas: There are a few of instances of
>=20
> 	Subject verb object partclause, advphrase.
>=20
> For example:
>=20
> 	This function catenates the input character sequence
> 	| subject     | verb    | object                   |
>=20
> 	contained in a null-padded wixed-width buffer,
> 	| participial clause                        |
>=20
> 	into a destination string.
> 	| adverbial phrase       |
>=20
> Imagining the participial clause away, there shouldn't be a comma
> preceding the restrictive adverbial phrase: The input character sequenc=
e
> is really, always catenated into a destination string; that is
> essential. For example:
>=20
> 	This function catenates the input character sequence into
> 	a destination string.
>=20
> The participial clause, being non-restrictive---there is but one input
> character sequence that could be meant---, should be enclosed by commas=
=2E
> That is the existing comma's purpose and doesn't work without the added=
,
> first comma.
>=20
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Signed-off-by: Lennart Jablonka <humm@ljabl.com>

Patch applied.  Thanks!

Alex

> ---
>  man7/string_copying.7 | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index 34031ea02..78cb98940 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -49,7 +49,7 @@ const char *restrict " src ,
>  .PP
>  // Zero a fixed-width buffer, and
>  // copy a string into a character sequence with truncation.
> -.BI "char *strncpy(char " dest "[restrict ." sz "], \
> +.BI "char *strncpy(char " dst "[restrict ." sz "], \
>  const char *restrict " src ,
>  .BI "               size_t " sz );
>  .PP
> @@ -279,7 +279,7 @@ instead of
>  In programs that make considerable use of strings or character sequenc=
es,
>  and need the best performance,
>  using overlapping character sequences can make a big difference.
> -It allows holding subsequences of a larger character sequence.
> +It allows holding subsequences of a larger character sequence,
>  while not duplicating memory
>  nor using time to do a copy.
>  .PP
> @@ -396,7 +396,7 @@ It returns a pointer suitable for chaining.
>  Truncation needs to be detected only once after the last chained call.=

>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.
>  .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ---=
-/
>  .TP
>  .BR strlcpy (3bsd)
> @@ -440,8 +440,8 @@ is a more useful alternative to this function.
>  .\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) ------------------=
--/
>  .TP
>  .BR zustr2ustp (3)
> -This function copies the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function copies the input character sequence,
> +contained in a null-padded fixed-width buffer,
>  into a destination character sequence.
>  The programmer is responsible for allocating a buffer large enough.
>  It returns a pointer suitable for chaining.
> @@ -451,12 +451,12 @@ since the size of the original character sequence=
 is always known,
>  so it wouldn't be very useful.
>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.
>  .\" ----- DESCRIPTION :: Functions :: zustr2stp(3) -------------------=
-/
>  .TP
>  .BR zustr2stp (3)
> -This function copies the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function copies the input character sequence,
> +contained in a null-padded fixed-width buffer,
>  into a destination string.
>  The programmer is responsible for allocating a buffer large enough.
>  It returns a pointer suitable for chaining.
> @@ -466,7 +466,7 @@ since the size of the original character sequence i=
s always known,
>  so it wouldn't be very useful.
>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.
>  .\" ----- DESCRIPTION :: Functions :: strncat(3) ---------------------=
-/
>  .TP
>  .BR strncat (3)
> @@ -474,8 +474,8 @@ Do not confuse this function with
>  .BR strncpy (3);
>  they are not related at all.
>  .IP
> -This function catenates the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function catenates the input character sequence,
> +contained in a null-padded fixed-width buffer,
>  into a destination string.
>  The programmer is responsible for allocating a buffer large enough.
>  The return value is useless.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------rEtCb7cPYDbGzKmpk0kNKx2E--

--------------ixuoE0rR2Yqv4bHgDHQr2KpL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTFKg4ACgkQnowa+77/
2zIIDA//Qc/rZpQws+Q2J6IAJkhHATIWinHmPYfAvumNHC5XMGWIjiJuiA/I5NTl
4+P2eAB+L/EdIyVmdA7G3e9rzspKbM8B/NNPXWRFvlGXG9778Qxjqa3jZqAwYn4e
bf47tC7MVKbYgkOrCEvdVf2WYVZzpk3mABUFpaxxc+ESwLcXZHTobNlvVFtyPpL2
kwUu33nyv6JjQivhU3ygcR3y7FaO18Azalg7Xie0mq1XDD6n26HX8kHwHgF12OJn
hgrhnVwEvpqfQ8+LEKIqNR2BSJ1+kVELrsywUTzOGbPAolHhKvXXGK6+WCtv3egB
9AwkFyvNiTu42LT7HrnSQRZHAXfslq67KIML+faNrcw4s+RfnlNXJBm6DDjZrTUe
/gRmhtLv46yq8KDxkUW/nf8V4or0baPM5imZk7aOaHpXIGO6Nv5ThyiMmaAyYSB+
IUs6EGzRIstyOyHK75hsjqsNqMwF8rN4JprdO6cna0sLQzubuokSgrjxSsNRXtqP
sRShJKcu0DSGw0T/JUZ+m8UQvukw48CemEiWIkPxyKmFkebEP0f8vtvSfBM999K+
h/BylM5CRY6lT5tpS2/2fiRcEDeaPtK3xtQdccxo2q14SZMjDejNTZEPL6H83ylv
LxFZskXLlwwWc3/ooHixNfFMasZXZxZzG56DN2bFQvCoBhOvgAA=
=2Ge2
-----END PGP SIGNATURE-----

--------------ixuoE0rR2Yqv4bHgDHQr2KpL--
