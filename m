Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0A1C783562
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 00:02:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbjHUWCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 18:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjHUWCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 18:02:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE9B126
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 15:02:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4A57461852
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 22:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03B72C433C7;
        Mon, 21 Aug 2023 22:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692655358;
        bh=870RwSVbjrQZP507TTnPIOLuIptDJl5U01Kg1uMm1uU=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=JEWul4PnLxX+0ECqTSO0fABqm4qH7hGY3Bv+AvtHi0RHsD7jga4WStUNzv2TSmhRq
         plklAPbFfcDhhGXBwNx8VttFu6pji9aSIBahU7WKrlNdPyP01H/zOjsVO+tPuhzoTh
         uth03BwHO1BDS0DguLNAnCpy2AgFZaU9fmVhe93pYLqDYOrnTD6S60DI9m4lKBVHzK
         J+s+s8PPpurblu9XW3/l76SJE3X9NSDiAvTUy4AAkuAL0KI0X5GKcvuIyToGJMjUPh
         zhDsF5FlWUOVnN8oCWEChjK3QccplT/IhDvg6Sfi9xsQ73eIVn9iTg2Cp6JZ/hQTeg
         nEcUwJCCLPGJw==
Message-ID: <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
Date:   Tue, 22 Aug 2023 00:02:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
To:     Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org,
        Brian.Inglis@shaw.ca
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <3262525.44csPzL39Z@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5meYh1KsI0ogFgi0a0Va3YlZ"
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5meYh1KsI0ogFgi0a0Va3YlZ
Content-Type: multipart/mixed; boundary="------------VkXybLISDp3qZK5dGToFqqzu";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org,
 Brian.Inglis@shaw.ca
Message-ID: <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip>
In-Reply-To: <3262525.44csPzL39Z@pip>

--------------VkXybLISDp3qZK5dGToFqqzu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

On 2023-08-21 01:39, Deri wrote:
> Hi Brian,
>=20
> I have created the tar files again with the latest sort.
>=20
> Both are intended to be used with groff 1.23.0, but the plus version in=
cludes=20
> the latest gropdf, so produces more compact output. It also has the nar=
rower=20
> gap between the heading on the intro(1) page, I have not investigated t=
he=20
> reason yet!
>=20
> Also I have a small bone to pick with your "official" sort order - it's=
 not=20
> consistent. Most people expect a short word like "cat" to appear before=
 a word=20
> like "catatonic", and we see "hosts" does appear before "hosts.equiv", =
so why=20
> does "man" come after "man-pages"! I've also strayed from the official =
sort=20
> order in the 6.05.01 pdf by arranging the latin and iso character code =
pages=20
> in proper numerical order so "latin10" comes after "latin9" rather than=
=20
> following "latin1". I hope this makes sense.

Is "official" the Book for 6.5.1?  Or is it the scripts/sortman in git HE=
AD?

I've found that scripts/sortman had this problem that you report, and fix=
ed it:

commit a04e93998bebba77ac799dd89c11042c25f2e2d2 (HEAD -> master, korg/mas=
ter, alx/main, main)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Mon Aug 21 23:55:18 2023 +0200

    scripts/sortman: Sort 'cat' before 'catatonic'
   =20
    Reported-by: Deri James <deri@chuzzlewit.myzen.co.uk>
    Cc: Brian Inglis <Brian.Inglis@Shaw.ca>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/scripts/sortman b/scripts/sortman
index 546a7943d..a8f70bab5 100755
--- a/scripts/sortman
+++ b/scripts/sortman
@@ -7,8 +7,9 @@ sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
 | sed -E '/\/intro./! s/.*\.([[:digit:]])\>/\11\t&/' \
 | sed -E '/\/intro./! s/.*\.([[:digit:]])([[:alpha:]][[:alnum:]]*\>)/\12=
=2E\2\t&/' \
 | sed -E '            s/\t(.*)/&\n\1/' \
+| sed -E '/\t/        s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*//' \=

 | sed -E '/\t/        s/\/[_-]*/\//g' \
 | sed -E '/\t/        s/[_-]/_/g' \
 | sed -E '/\t/        {N;s/\n/\t/;}' \
-| sort -fV \
+| sort -fV -k1,2 \
 | cut -f3;


$ ./scripts/sortman << __EOF__
man7/cat.7
man7/catatonic.7
man7/cat_or_dog.7
man7/cat_alike.7
man7/hosts.7
man7/hosts.equiv.7
man7/intro.7
__EOF__
man7/intro.7
man7/cat.7
man7/catatonic.7
man7/cat_alike.7
man7/cat_or_dog.7
man7/hosts.7
man7/hosts.equiv.7

Is this order a good one?  Should maybe cat_alike go right after cat?

Cheers,
Alex

[Hopefully, this email should already be signed; I've recovered my keys.]=


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------VkXybLISDp3qZK5dGToFqqzu--

--------------5meYh1KsI0ogFgi0a0Va3YlZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTj3vsACgkQnowa+77/
2zJzsA/7B+PqtyMNeRpalunQWiiflQfQjEVMUUwvQXAlgAIgYlnUj+mBGo/YnQMe
+0miNz7cpEC3I6JP6gC7gLM0oOgX4xqcUYwzHpc0bvvPvXrrfXwMSkoNVeaS3JnA
lj+FNUc7AQCtN89NJJTKsU8dp0lIoM5AC9y0AWJmGekrFcXwdO417P7acDl0Gxst
ti2RTUOQVd1pRlnnnVS1X/pDb64/IpRF2Aky87xqEv886Bm+rQyimxkEiFqaMTHC
cd1o24JW2xHqJDsis5dzt/A3OSnBYO0y5Kb9EAsGu1iN743kLYwkUr+Rl/P3D+bB
n0tjVC2QNNNsj58BagxezNp0RjPpNP9twyAQRrSoKCs3DBlDLaxOM8WA8MugMAfx
xy1fixqzNG11We0m3o8gngwi1J4b/pXugEYla6YclQZ54g1kZvF78k+CEYtloL58
CE/B6tEPg+0GSR70BkW7f4Ln5JbMjQD0O6+PGWJ33xdmckh/i2A5io+mVv8rqr1B
rAAoo4GFuG7ftpfcO8YYXnkwoPTNNsxaE6o1lXbQ0BsgxbizPntPBkz0/FziATlg
xm19oa6TVfWYc8YZdCNgdxPhsBO9kzYi7ZzRzU/2pFEBoJhQ5cFjm0awrIMLh1F9
278K+Kj1B1MjQx0T+P1/Qj2f3Q7tCnW9mlNy1HIzF0oYKetI31U=
=/cbW
-----END PGP SIGNATURE-----

--------------5meYh1KsI0ogFgi0a0Va3YlZ--
