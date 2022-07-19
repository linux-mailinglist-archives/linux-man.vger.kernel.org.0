Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 775D0579029
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 03:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236399AbiGSB4K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 21:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236409AbiGSB4I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 21:56:08 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A69942714D
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 18:56:05 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 95160610;
        Tue, 19 Jul 2022 03:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658195761;
        bh=q+ZVy1YIgkjFsUdVdJuMXaOrGrassDkeqlEI2n1x2Zc=;
        h=Date:From:To:Cc:Subject:From;
        b=mZuADCBLjq692R5y3VrqqooI9tfZMKFPmcIteQQ00qlcXsffjGT/3gA6+6o5Iy7UV
         3D8zaRIWRStO7xJdxWUvfgxXirzat/M7SsAU7in+RR+mfTGCovboBh6+Mn7cPYZDvN
         ZwPIFXbg2UrOjC05GmCL99viSbqKryuQ87iEw8EfrigeMYLefAPxoR2/uSfRtykvUM
         DT8Uoo28k3ptrXvcvqMVBpmQXmBqGxvpPMzyY+71zzl2ttGJMJapufQjRTvTb0T70O
         bsrQ2NAr5IIx9OCTmBgx74K4uFijXbo2vUu5ajUjT/Mp7zPLNlhqRjlnIIe5dti7fp
         d6lbsaPPjMO7IpyESk8x3ix3Adq3+WY6S8tytXLEnblBrCz+sH/mvB30BYOHU+bArx
         JPGyQ/L+893XSBykLB+Qcd4np0TZcfTgHMgTbrQiiCXmpqkoG1XLZKv9UyvauUUzVv
         efIVsbZbHjzOWTumYb3U4SvZ9lRgIXbgaKhMGfQyJhFvgn+jNmO4XWzJtzsMyG0Mrw
         NzCBiPTRX5g7akZlraIQ95iwhbskWPFs1InJ+hvn0833juq5C9OeKPxGKKxfXwxi7g
         yXErlKbrFB40QBBe3Bh6KcF0rq7QdYC7VVMwzhAqux6lX2/YOhe1hU8LA5mr2JFi6j
         gyHXRBsAJZz65pcRUt2vYNuU=
Date:   Tue, 19 Jul 2022 03:56:00 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/5] tm.3type: tfix
Message-ID: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sli6w3sgkyfpifnr"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sli6w3sgkyfpifnr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tm.3type b/man3/tm.3type
index 28d6208fb..8ae3a531c 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -24,7 +24,7 @@ Standard C library
 "   /* Day of the week [" 0 ", " 6 "] (Sunday =3D " 0 ") */"
 .BR "    int  tm_yday;" \
 "   /* Day of the year [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
-.BR "    int  tm_isdst;" "  /* Daylighgt savings flag */"
+.BR "    int  tm_isdst;" "  /* Daylight savings flag */"
 .B };
 .fi
 .SH DESCRIPTION
--=20
2.30.2


--sli6w3sgkyfpifnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWDzAACgkQvP0LAY0m
WPECIg//TlrWtth15Mb64Tw5FQxTi2VE/EeIX8AeBolZG1HZ7lsb7geDj9al11sO
/eWQ6U5dxMNgCI+r6+ZOFj4avz+twkIO8hGsIGMstxukJO5Dub9nMOtVWXoRlXOx
n/eM7xB729PmGvCpqGJI/Ltbv2s0Ib7cjwj9tHM7ZdmVTkHNIRm0FrL7KM0QmwBv
kyRkboAyeqwa1RhA1WsGZG51KNLioqbTJ++plVpDKXJF64OXSvwMWhjJHOJOQlWM
s5UQct9y+QMf/ktcHGd/hhA3J1ManGxlmDLwDDaD+lCN5aSDMxDCMpgLf8UF9syv
5q/5tm/SfTYpt84PEzvdfd+b/GbGKx7cZ7cvx6C9IVDku0WvxIjj0KFK1QVloOMh
Gc2yMELKI9Rp+JtlrBe3P2MItzdUkIqEWaD1+UGHs18f8a0yTlR2j0i2vEFhHHKZ
DRKskmGL6wvhvduOQQz3p7n6FP2U3gcyogdYwk9WaIX5z1VImlHFo6R+zmYVsRuz
NypB2jrtT/icY53FW+w2dZiFHjupWqAcMlrteFKbmSg5+8OptD7gXDOeuqVXtBnX
tSdlUt6RgtlmhGG7ZVFpz3cpUI+X4w9Usz46vDmJEGDfXMB5h6AG2U2GIvItaciZ
8cop12UN6tvYF7V5iQR/+BmCwdBPYefOEJw4Tum6qCnY6P6gSVI=
=eZDA
-----END PGP SIGNATURE-----

--sli6w3sgkyfpifnr--
