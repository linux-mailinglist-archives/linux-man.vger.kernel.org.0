Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0374C76E770
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 13:52:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234546AbjHCLwb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 07:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234413AbjHCLw1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 07:52:27 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 636B22D71
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 04:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691063540;
        bh=mBMeaeS4IOdhWDbM0BdDXf4LPQ3yLKHCTAfT+UyNO/A=;
        h=Date:From:To:Cc:Subject:From;
        b=C5uh8Y9178iNwXkk5OhyRXIdOhFMtaiulbwfdanp8BqFsgw19tKNYqbom4DyIattL
         sI57HbYaJBFKONxecS++pC2a3jtusaTijdt4uBqwdogFLW1LDi1ZrZ4XYznE2cxaCR
         ZiG5d17wZEPCcR1e9+p/bSdEXsYl6/tRj6YOdbvStl+PhzrRYOHJXnYSNj93LoAoM3
         ufphFTUtK1oxNmZwvGR483wNINl+FM3pq4L/kQttJO0Vkh4OuBS9Rp6w2fWWACQ6G8
         a//jQ9y3q5Gk2ud+PHNI+2e/7um+yh1srx7f2KfU01Tk3SBwNyLowpKGUvz+Kkvf4t
         4nyDMWGudknag==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8B4E75426;
        Thu,  3 Aug 2023 13:52:20 +0200 (CEST)
Date:   Thu, 3 Aug 2023 13:52:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ew3w73msdzjg6gxu"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ew3w73msdzjg6gxu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

POSIX has for a long time implied that directories are fsyncable,
and since Issue 8 explicitly specifies directory syncing semantics:
  https://www.austingroupbugs.net/view.php?id=3D672

Simultaneously, directories being unopenable for writing is a
Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manual
under directory (V), and has always been enshrined in the standards.

Kill the FUD that says that some UNIXes require the fd to be writable:
they /must not/ and this confuses users:
  https://101010.pl/@eater@cijber.social/110824211348995583

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/fsync.2 | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/man2/fsync.2 b/man2/fsync.2
index 1043e6a1b..9ced40b28 100644
--- a/man2/fsync.2
+++ b/man2/fsync.2
@@ -155,12 +155,6 @@ .SH VERSIONS
 .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
 .\" -1: unavailable, 0: ask using sysconf().
 .\" glibc defines them to 1.
-.PP
-On some UNIX systems (but not Linux),
-.I fd
-must be a
-.I writable
-file descriptor.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--ew3w73msdzjg6gxu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTLlPMACgkQvP0LAY0m
WPH0Ug//cUlPGEsa9qkxPWBYv8GUL59fW0XJPBmg4QvKfOLkbDPFEhfFd8TCUM6e
x2Q+JEdr4lmmJKlsh6Tr5IcqfCPFVv3iJicIXWMOrmtSTGmnbJP8dKYnddsXJY6r
WfTHg0vwmdLGc0NiuQTts+QuPJqsYHXf0CPubZMmFLi4ziCsiKUoAxcOKEutg1Ve
OsVFRcl+H7UA734wdsnA4nPZoy4zuv4ddyojEVV6NXMp3go7EJxq9mmrD0ozjwMn
MCUjbGQh7Jtosf1ptSE6WRLGvc9EvAIIusTGFm0fMLZPOUAdkisp/SczuFVK5jwY
TtM3z6dIYM/31ARa/pwDsIXDMk574IZe4smV1uTLn0VSNaQeWotrAtF6M2EpSBc4
/Hgc5OE/WSS+BJWh/M2e45GFcWmGUis+5E6JHAF+NdFtkbH4pPtGp6ovu2z07ntP
9kIOrXnhYjLHHsOu9s1iHPJ8Fnq8YDb583HTKSYnPfDENGC30KsDrfu6mM29KIIg
wyI0x5ABCYwZtDXK3bQaWHNAcs6fF+i5g7YCQQqVXlrNHxwp3oZXfjuDEIry92ol
NJUgBhvcPBCaN5AS3PBwD6BzuRKE3WAElL/j2HDRzqoONj5ofSPC0ivThRvJWuUA
VWUvEDIZWEMswUGTZq/0oou9LjazoIKUMwULsNC1bs6ps32AGGU=
=Srd1
-----END PGP SIGNATURE-----

--ew3w73msdzjg6gxu--
