Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8436777EC66
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 23:59:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234944AbjHPV64 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Aug 2023 17:58:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346766AbjHPV6q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Aug 2023 17:58:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A9930D5
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 14:58:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0135C669FD
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 21:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6597C433C7;
        Wed, 16 Aug 2023 21:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692223062;
        bh=1zN81He6K56m99AQkIcI9pjBlVda/aphhQm5AUUtBoI=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=C2ST+KBAjemZYqrts6Omrbtn3P3k7CxWE8i758/as0q8dadAvC7vg0zSQv3gnh3gq
         zG2Kj8HAmO8haw3o9w2qiP9YZrxTTad3UBbPysXsf9mMaax4oRuq9NcPsH9P2zDucZ
         g0+WT2Qr1+G4kt7zIc+syvQfaOch3E73BY34VowFUjUTLnUzz4xQqsqKQKOBVg3o1f
         Y5ThaTei/roxAP78HhP0sy46hE8UMtOIV3iN+i9pyN3ufGhVgaI8RHNyHvCFzNvj5+
         6aBjbJ8cEyQqDbaA+h6TBSsp+m+w6G4yGxA+u129/Lc3XFf4MFv86Cm6ubIdcDnmcT
         1Q9IgjdZCqWkg==
Message-ID: <d1792e49-5432-bcb7-5eb0-97ab26e8700f@kernel.org>
Date:   Wed, 16 Aug 2023 23:57:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: linting mdoc(7) pages (was: [PATCH v2] man*/: ffix (migrate to `MR`))
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid> <ZNz6acTbfc6SydZc@asta-kit.de>
 <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>
Organization: Linux
In-Reply-To: <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2ed811yBdsY2Ghbq0kQcbAGo"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2ed811yBdsY2Ghbq0kQcbAGo
Content-Type: multipart/mixed; boundary="------------5o04VlmXM8zWNFV0wSTH88tI";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <d1792e49-5432-bcb7-5eb0-97ab26e8700f@kernel.org>
Subject: linting mdoc(7) pages (was: [PATCH v2] man*/: ffix (migrate to `MR`))
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid> <ZNz6acTbfc6SydZc@asta-kit.de>
 <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>
In-Reply-To: <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>

--------------5o04VlmXM8zWNFV0wSTH88tI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ingo!

On 2023-08-16 20:25, Alejandro Colomar wrote:
> Hi Ingo!
>=20
> On 2023-08-16 18:33, Ingo Schwarze wrote:
>> That perspective is not really helpful for general purpose Linux
>> distributions: for these, the Linux man-pages project matters a lot,
>> and that project is not considering the man(7) language as obsolete at=

>> all.  That i keep recommending changing that stance does not appear to=

>> have much effect so far
>=20
> It does have an effect, or I like to think it has.  Branden and I are
> pushing to improve man(7) to be on par with mdoc(7) where it's lacking.=

>=20
> I also recently added support for mdoc(7) in the build system, so new
> mdoc(7) pages will enjoy the same linting level to which I subject our
> existing man(7) pages.  If anyone wants to write new pages using
> mdoc(7), they're welcome.  I'm not going to require man(7) (but I
> prefer it for my own pages).
>=20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/sha=
re/mk?id=3Dc76a587148d9b69667852311ece53403b1458844>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/sha=
re/mk?id=3D5a34548ecbf4200b4a7bcc3ce9f26bedd84450cb>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/sha=
re/mk?id=3D3c8198d1786501eb4a9e9a46c61c17ff233f3d54>
>=20
> So, if anyone wants to add a page that's not present, and decides to
> write it using mdoc(7), it'll be welcome.  That includes the suggestion=

> of a new intro.1, which IIRC was written in mdoc(7).  I should revise
> that page.  I lack experience using it, but I guess I'll learn more
> with enough time.
>=20
> Also, if anyone wants to fork this project and rewrite it using mdoc(7)=
,
> or maybe use it for having a documentation repo of whatever project,
> I made it easy to do so.  (In fact, I added mdoc(7) support for linting=

> an mdoc(7) page at my job.)
>=20
> I even plan to add support for mm(7) pages, if POSIX deigns to talk to
> me to provide their sources.

BTW, I remember you showed interest in the ability to lint all pages.
You may be interested in trying this:

$ make lint-mdoc MANDIR=3D/home/alx/src/bsd/openbsd/src -k

You may really use anything as MANDIR, and you may also use different
targets, but lint-mdoc will run mandoc(1) as the linter, which I guess is=

the most interesting one to you.  Check `make help` for that.

You may need to adjust a few command variables to use the gnu variants,
as I doubt I write portable stuff.  Ye be warned.  Check
`make help-variables` for that.

If you try this, you'll need the very latest commit, as I just fixed
a bug in a script that misinterpreted some pathname in the OpenBSD tree.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------5o04VlmXM8zWNFV0wSTH88tI--

--------------2ed811yBdsY2Ghbq0kQcbAGo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTdRk0ACgkQnowa+77/
2zIMORAAgYF/GI2LnCgjs0DBlJ+Pm2Yx5oG/ffoPvKP2F3wzWGu5MMkl1FwC5aML
0ArJd9aCscEe/pqy2CflBQSa0mHSJWPg+C2OPm1HeSQ4e4wS96eJsluy12epVKZg
Q9vukgSzKsN1vxfzhJxlU4TOAfh3aTB/4oqaRhifzBGA8kzK0HLjyvA/h6Zgh679
OdBFhM5ia00AFinfJv2kDUb1Mz/DxDcxebhHyWHAQIT7s8NaE91nOBlJ0H1JJ6Dh
jRgc57uyXY7TZAUVDyBFBUm708W/ZV8iE0TVhHWW+UY+Wiyoody6CaKMQHTEIAV+
N5HjWT9DO6Cwt1MI+79fMwYqyrrENQR6RDv/AkgGnhCjSR7nOg4Au/Wbkgrzt0aN
X9RpmJaFmfEnCx7FbcXYfjUnhAG71P4ht8NmryA4pi04JYtENG6P5HPHqo5+Q1jf
Q98FeFmQhEB810jdQWZaVeFds/2M2cZ6dLsLjNtVQzCIBByTvBbgC4coPfY1yCCB
YrvC54vdRXEhk5pHg0tDJGIuqKLq4YR2NYESrLX5tlqWDJ7aseeOvgGBXe/fldO0
PCppkjUIWyvmigBcLN0hzKuTg7kH9W3FLVWtNs2Uh0Dz+MUpGnjNf1ncE30PNj13
8zrvDMDXNncsdS7sTRWEkOztp3FZFofN1ZTY6zVjL+8/+P+PPss=
=MFgb
-----END PGP SIGNATURE-----

--------------2ed811yBdsY2Ghbq0kQcbAGo--
