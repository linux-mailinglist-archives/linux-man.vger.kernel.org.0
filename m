Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAB23567418
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 18:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbiGEQWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 12:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230432AbiGEQV7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 12:21:59 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E6ACE1C919
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 09:21:58 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 33E28E9C;
        Tue,  5 Jul 2022 18:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1657038118;
        bh=kcub+QJOpn+gTNt8l6qL77htaSxtUtctTB16vXfcAEA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K3G7VNLKZ0OtHwC5oPcPeZfade1GBnbInzqjrOVSBW46CvdqXTdJP5m/uas8bqQZc
         vXOwSKNCSz7KaagkuDAp0smgbrRTRSIWJqgC0jU1LTPyCFuZ1m6r92ee2JRQ6ebqJA
         k6GEiMjjznxgsEoLdQ12hL1Z01opFTFUtPOS36P4Rexbm09hIml37nGJda7+lJPb6N
         w2Pa1v13E1PFAYAbws9PI4Vm0cyfxjVrPQowz8fx4E2B4bKbxqHKZFzd/+GK5KM2Lr
         Hvs+Z7BDkr3KBcUDYvszqFhfEd/5WNiqcyF7GK+iLhMvogfXdm5YdvUggpMLWBqJrd
         DNQgA0lPQqrVfYfMRfozKs0rUOIgTeT1uQzF/6b6CeMNHPG3LFZzBciZH1OVMd6hwP
         bNj3k2OTcvy8F3Jp2EbIVIm415OuJPmcUFhk8U8RNqKOwShtFwUXiXkuYmNkfmMYuK
         Sj63fFpG4GG398bZKvGwOvKguxbFB6yu4x9a4b7BPTKj7MphgcAEVpMi4JqYgXKV8/
         asA7uyX28YcWx0SycqqguBtEOIFhyQlWNYWHxVMCIiKJHj16yJb4OfF/ue61414JiP
         iUG6EznjSLx+KJF9wRQH5HC8ugfj+1mRS4LmTDUif5jMgnVJjy4HQnbrN9LtetdfsQ
         S8gDXucJPXDV6yuazhvdY6ZA=
Date:   Tue, 5 Jul 2022 18:21:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/5] fts.3: clarify FTS_COMFOLLOW behaviour
Message-ID: <a5a3f183e31eeb64d86d08e60a8bf6572ae7ccad.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mmbc7rc2zxsymvx4"
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


--mmbc7rc2zxsymvx4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FTS_COMFOLLOW is equivalent to FTS_LOGICAL for fts_level =3D=3D 0:
define it as such

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/fts.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index d3cb0145a..7afaa0da5 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -378,9 +378,9 @@ the following values:
 .TP
 .B FTS_COMFOLLOW
 This option causes any symbolic link specified as a root path to be
-followed immediately whether or not
-.B FTS_LOGICAL
-is also specified.
+followed immediately, as if via
+.BR FTS_LOGICAL ,
+regardless of the primary mode.
 .TP
 .B FTS_LOGICAL
 This option causes the
--=20
2.30.2


--mmbc7rc2zxsymvx4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLEZSQACgkQvP0LAY0m
WPFxHA/8DZYGMq7bP9YJQCjCn1VPp/pMdpNG4Pu/sNCig7KAqu2q5hoU+OjZscKM
uh+nojT94NanDZOEA9N4PQrR3MBhl2rx8mSXHtM9gDwG0q/sjwvQ3i1FamlDB21M
QyfjYWSth0ZNw5+iuF8cpXx4y1GqYRDJzWDGEfrQ+gPzp+wKP8UM6/pZcuEswycH
ILcQucz4d2jz1x+laPh7jTnKwL8vEoOrk8e/yTMwyfKDPT41ulj5/hedfhAZJxQx
GQq342Ttl5f303OnFEzb1piGXpKYQZ8pbAtSq5ZTC/vdH1XmEgVhoxxGALrVW9rj
3Fs6kwp9Ax0udTVZXFy7oufsBFVI3c5jLcRf9d0C4azz46qnKmzaJDuoSWKRchIX
24AAG8rxcXnGGzK41QZrMKkaSavb8PI5RMiSR+K/14wcGx8goTkYpJgdcsOB3Z3u
4UoeZ9IQvpryIezpYX9gZdlABJo0VgcGFADSKStbySAn4NEhzqyKb8jq3Mkj83xI
1E1W2LW4LpiPGoNahG8lt5A4maZKcVmVNqLZqeVQ96Tjdq3J23rAu3MFCPnQJ7R5
GyLnlfitcsE1eIHLPVkH9wrCKHQdemLdALDsZbWbOGAOc90nfyxxfZ8IuLMIoRkV
1OeIQ0ixdxh5eSxcFjzhNpNstmbtqXtV2BGNLutGdtxko40J5ME=
=0UZu
-----END PGP SIGNATURE-----

--mmbc7rc2zxsymvx4--
