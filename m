Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4917B767799
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 23:31:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbjG1VbW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 17:31:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjG1VbW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 17:31:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D713AB3
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 14:31:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 89FBC62204
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 21:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C97FC433C8;
        Fri, 28 Jul 2023 21:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690579879;
        bh=VymQfEpm0/hhyLGEPuKa5w8+vbSxTp7L8uwMMFNBsQ0=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=seaZwewGlkfqSytuCZwhdNGuLAIJ/Sxohwemqb88Y5Jo9vivpQDEzkcSy4Tkg2siR
         OekDzqiFnm9pSDgc9HdRsYeRoi692CWueUoePn1/jmtA+gto4Tn6bJ2ypnyLY2mAZ3
         w7SgR2ZvrFzcl61zrbnqfQigMr/wnGtYPXa5guVn+cQNCDSkk6U9NoDRKmrm/ARQ+c
         ++JP/Bnh+FNge6tcNEv6o3khYrVAYZrie5cu+sy7t0EcRmfv+IfRbjTeE0/HoXZRZb
         cw4LPPD4UgznwbV+GnsE/wNU0l8VblBtbdzrmJqdW2KISX4KsEDML8B6kaB9nx6Iya
         6Et7YqXL+2SPA==
Message-ID: <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
Date:   Fri, 28 Jul 2023 23:31:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: tfix
Content-Language: en-US
To:     Lennart Jablonka <humm@ljabl.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ZMQL2bAg5p2no9ir@beryllium>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMQL2bAg5p2no9ir@beryllium>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BK5YZio2YK1FmB5nrqaFSna4"
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
--------------BK5YZio2YK1FmB5nrqaFSna4
Content-Type: multipart/mixed; boundary="------------d3HyW8Ne03Rvwt9WC8afUO6p";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Lennart Jablonka <humm@ljabl.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
Subject: Re: [PATCH] string_copying.7: tfix
References: <ZMQL2bAg5p2no9ir@beryllium>
In-Reply-To: <ZMQL2bAg5p2no9ir@beryllium>

--------------d3HyW8Ne03Rvwt9WC8afUO6p
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

(CC +=3D Branden)

On 2023-07-28 20:41, Lennart Jablonka wrote:
> Signed-off-by: Lennart Jablonka <humm@ljabl.com>
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

Ok

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

In this case, man-pages(7) advises to not hyphenate:

   Hyphenation with multi, non, pre, re, sub, and so on
       The general tendency in modern English is not to hyphenate  af=E2=80=
=90
       ter prefixes such as "multi", "non", "pre", "re", "sub", and so
       on.   Manual pages should generally follow this rule when these
       prefixes are used in natural English constructions with  simple
       suffixes.   The  following list gives some examples of the pre=E2=80=
=90
       ferred forms:

              [...]
              subcomponent
              subdirectory
              subsystem

>  while not duplicating memory
> -nor using time to do a copy.
> +or using time to do a copy.

Is nor incorrect here?  I'm not a native English speaker and would like
to understand why it is incorrect.

>  .PP
>  However, this is delicate,
>  since it requires using character sequences.
> @@ -397,7 +397,7 @@ It returns a pointer suitable for chaining.
>  Truncation needs to be detected only once after the last chained call.=

>  .IP
>  This function is not provided by any library;
> -See EXAMPLES for a reference implementation.
> +see EXAMPLES for a reference implementation.

Ok

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
>  from a character sequence that just fits the destination buffer;

I guess it's ok (to me they both sound good)

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

I believe the below is like a parenthetical, which is why I put it
between commas; isn't it?  Although your version also looks good.

> +contained in a null-padded fixed-width buffer,

Ok

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

Ok

>  .\" ----- DESCRIPTION :: Functions :: zustr2stp(3) -------------------=
-/
>  .TP
>  .BR zustr2stp (3)
> -This function copies the input character sequence
> -contained in a null-padded wixed-width buffer,
> +This function copies the input character sequence,

Same.

> +contained in a null-padded fixed-width buffer,

Heh, my text is wixed!

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

Ok

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
> +contained in a null-padded fixed-width buffer,

And same.

Thanks,
Alex

>  into a destination string.
>  The programmer is responsible for allocating a buffer large enough.
>  The return value is useless.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------d3HyW8Ne03Rvwt9WC8afUO6p--

--------------BK5YZio2YK1FmB5nrqaFSna4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEM54ACgkQnowa+77/
2zL1QA/+KG0Eeq5S3fmPmX/ZnBKL5uZPaDE1Ykax7d+2gnJ9xwO+AZHSUN510t7E
1e3CYF0jJSsBFADO1aVHQfur8eNrhNczKuZkOthARtVkhA847jmL6NiPh/+rq5Vq
deezzLWrLdq2aM2XPmWcPJan5lsZb+avnJ8BeGDVGf+TxbuTwpT6lxNPPEV6SbaI
IYjGALVMjDvidLaBce5k2fVvkLYgw51+H/YqAteq5SyarsKclBhpW2vaAkV0roUZ
8diIcpKSKnV4rOXAj7HzK/LvC4zT8fZ6DQqN6flLYfgxBgf5/CeK7eiwjinX0CvJ
1pS6yalfj9rewwZUkvOnnWWf5oYXG64bBiBiixxeJBTXgl+XiY2jLb/fkRoAsYPu
BPONMQL1B1VNBffqAOIY63DvO137OcON2uabFrlAdXOyuMscSoLgEBP2OVPXrDJC
3mOjrXcUs9acb1yt1ZJdPJzhFB32qrBb6eTXDCD+sXEty3yQKQXOrU7cbcJ0wGGN
LUAb65vWlKXBEWrjFZeex8SQR/2O6T5tIass8si3y7f0T7x13sftKCydXu5YeVV+
Y+nnxCfzAwdCKw5DCuxv9E5Ltkhqpo46zdc98INWZb5cy342Ak7r9YZMM4/pDrRK
dQlKQSOot60xykBuAgbl7X4sz0vBuw6l55rOEfXBRUeJAVGQ01I=
=i1HO
-----END PGP SIGNATURE-----

--------------BK5YZio2YK1FmB5nrqaFSna4--
