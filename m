Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39D2D564A4A
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 00:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiGCWYB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 18:24:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGCWYB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 18:24:01 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 665962DDC
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 15:24:00 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A213FA5E;
        Mon,  4 Jul 2022 00:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1656887039;
        bh=vHZ01lLt56xWgsZK30GcDJuwIyztBy4l3gx9LlFrW/Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=m2KC5gj4aMSHovH0l7kD8HBu/CZT8kJxvsY4iRXLfCZM8PDOrGGZDiWCI5atHxi+l
         vbLyXjRAqsJgtElASqhAIeBacGo17cKs33lD3tJXLn9AIirAK4XmGRbCqiywGoKFiT
         R1YDBI4vGReJqQlOCs1Ofl3vVwsIQqq5E7//kXRIJK0ztEm0YPnJkG0ndT0Uca0FD5
         4/Na6GHzCVcdGpwiWiMUUEL7IlO8AgIfQT6GHd+6CZ2pkAZil+Op1/4x513NccaB20
         HmK+G3CgnHQWWAdN66xHXEPv5MwAAybT0WDZCZz2TMHgRCgUeJP8eCZw3eKRThXPa1
         aP1tG9Sv7A7T+vlj3XoZVPgTSjm2/lFDAaN/qbGp1FCgG7Bn5aRDDmWKcwNZ2gOmPR
         DKwx/e/6tHEH2qhimCBKQRQqZLzkzSIx3tMmausEuJFxtJ2OyY+gHRhSUc2hcQLFkB
         sM0bN16K/AFz/sKOHgF1iCqDx2+WmypAAKCM1vIVttAYHwBeV6xj5IN2V+hOAmHIBI
         yDgga3ks4H32o5G8Iri8iqMjfeTwLq2dmX/P/gNR2fY8XIQn8Tg1flPUQCI5PdS+T1
         CSx8Tktal45l+3wIKrzhZQycmGvwN6I/epQ6IhAbefycJlVzu1bmYK9ZKlHYZDO/0E
         1SwypjwZFtUv1tEABHYpoj5Y=
Date:   Mon, 4 Jul 2022 00:23:58 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] fts.3: tfix
Message-ID: <f05a70b218089c288c3cefd1b2fbb4650a119eed.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tufv2ljm3xtw7hqb"
Content-Disposition: inline
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tufv2ljm3xtw7hqb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

statp -> fts_statp

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index 627bb5afc..601a74cd5 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -433,7 +433,7 @@ pathnames were provided as arguments to
 By default, returned
 .I FTSENT
 structures reference file characteristic information (the
-.I statp
+.I fts_statp
 field) for each file visited.
 This option relaxes that requirement as a performance optimization,
 allowing the
@@ -442,7 +442,7 @@ fts functions to set the
 field to
 .B FTS_NSOK
 and leave the contents of the
-.I statp
+.I fts_statp
 field undefined.
 .TP
 .B FTS_SEEDOT
--=20
2.30.2

--tufv2ljm3xtw7hqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLCFv4ACgkQvP0LAY0m
WPHzqw/+NlZtwuIYYE1FOacN7pi4C7XO2pMzFqWUC6SPDnjTOAJvqCcpwoRSHXgn
YTnKatdVJJw2e3y29KzG/ds+Vi2rgUmUuhE4x6HzxB7KRaAZ34wO3AJ5vlLGuh/O
qtF8bMO2izNONzU0mgdT134H950hS6ZdPr3oENgWz+i0AWlSNB+/REh1DCs9/XtL
nVDKdk0pCRS5denB4dbtYxhgzlrQf2twPbGsgojR5lJEmtmp7r5g1qodAAhJnneg
juWfMtCiMCU3jCniZUB0oVWNGd2TDEnFQfvObyLw8MNA1kgzroXq3GajjY7EimMM
HCy7qxoKYEdot+lqGVaTceItSJZyqFEjUU4XOr7rC3bvP9ybc6NMyQDRzJLzLmK0
9yGBdDOpdd6etTC6aCmVhggnDRnckggngDj0X5zecvqQP14KYxxUFHxRpwvaWG4r
EIdag13pnLnOvAZUj6+G8w5yKIbMJ5p2Deq0v1togJ1ua8Fu9RgenhS/nZ1XfbLK
vJ1Pjvvbc4GSXhoQ3ou3aJMXUgZcj1ei6QKDKdHlLxFxEftVbyqphWWNGLFyCe6K
AxiDKzli8EqozJ3tyU4IAhW48P54I08vkmZzAUwbIMaT4t0vKutoY0/fv93uRTYm
s4+OMjuCtBHBuFYfowkm8phCaoGQJoAL2XRJniBnowBSMZxM+f0=
=OfO8
-----END PGP SIGNATURE-----

--tufv2ljm3xtw7hqb--
