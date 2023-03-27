Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3F026CA419
	for <lists+linux-man@lfdr.de>; Mon, 27 Mar 2023 14:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232349AbjC0M3n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Mar 2023 08:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbjC0M3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Mar 2023 08:29:40 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 27A343AA2
        for <linux-man@vger.kernel.org>; Mon, 27 Mar 2023 05:29:38 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6B5AE473C;
        Mon, 27 Mar 2023 14:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1679920174;
        bh=2DaqADyRdqJD+IsKfhGrTnQjP7DCMIpHXySCAVeKhDo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RFQBeeSsQodAYlpFT3MdltWcqbVxgrmuQYx+Qaa53d7pTjSnU2iypF8g/TAnDMY99
         aZpa1BUnb6sGC6kcE1Cyv3nW8TKXSbw4gJaLBNDfmgRgwFDDdj5xSaPFtnwYkoM2JE
         IIDrfP+ExukQwu5Bty7T1BxJWTUS5pJwkzeAQa89CPalq7VuVqEi50VOpsYLOZWrMg
         4Dw7N55hKPj3u8/x40wfiqHGQVosrelEs5HXl2hlNlkpRd7EVgiGHqoCpeGni9fzUe
         REIHVTgvyZX5BSYEP7N+dqW2SGIhSHYyckiEBzt3psWoIIImUri3QiYsNuwe+J0Iwq
         BRUHy4c1q9emg==
Date:   Mon, 27 Mar 2023 14:29:33 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] symlink.7: cross-link to proc.5 for fs.protected_symlinks
Message-ID: <fneuwvfzrpj22nk4u6pgjr4zd62z2mrjbvyuvgl5vkkiwtfnvr@ca4gsy5ktdld>
References: <20230327063142.pdeeemawtssywcqg@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="be4brfng4ehtd5cf"
Content-Disposition: inline
In-Reply-To: <20230327063142.pdeeemawtssywcqg@jwilk.net>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--be4brfng4ehtd5cf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is on by default in Debian, maybe the next reader won't spend an
hour tracing the kernel

Fixes: e8ff4f53ab9a7cbd ("Remove information migrated to inode(7) page")
Closes: https://bugs.debian.org/1033477
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
This definitely needs to be referenced here, because "The only time that
the ownership of a symbolic link matters is when the link is being
removed or renamed in a directory that has the sticky bit set" is an
abject lie, especially since Debian ships with fs.protected_symlinks=3D1;
the minimum here is to cross-ref to an extended description.

I straight-up didn't know proc(5) listed sysctls, and I looked!
(Well, defined as "apropos sysctl" didn't list anything in particular,
 and sysctl(2) has an unannotated proc(5) in SEE ALSO.)

It'd be nice if, idk, the proc.5 SH were extended with "process
information, system information, and sysctl pseudo-filesystem" or
whatever, or there were a sysctl.[47] alias for proc.5,
because as it stands, I would never have guesssed there's a listing of
sysctls in proc(5).

 man7/symlink.7 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man7/symlink.7 b/man7/symlink.7
index 77fefb743..4403f6214 100644
--- a/man7/symlink.7
+++ b/man7/symlink.7
@@ -84,10 +84,14 @@ magic links have been used as attack vectors in various=
 exploits.
 The owner and group of an existing symbolic link can be changed
 using
 .BR lchown (2).
-The only time that the ownership of a symbolic link matters is
+The ownership of a symbolic link matters
 when the link is being removed or renamed in a directory that
 has the sticky bit set (see
-.BR stat (2)).
+.BR inode (7)),
+and when the
+.I fs.protected_symlinks
+sysctl is set (see
+.BR proc (5)).
 .PP
 The last access and last modification timestamps
 of a symbolic link can be changed using
--=20
2.30.2

--be4brfng4ehtd5cf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQhjCwACgkQvP0LAY0m
WPHQkw//bv4yzu/wx6rIQQi8UbR+tiwoRoNFgjl/gs4h04U+3FEx4xmUSmI2OqoA
vnXYZpeO7ea++fa2/tNv26f3XlfDiZECirBiil6YgfNWY3cWNZV63CGoh7NudX3C
5M7fRDtncYZoXprYl2+uRt7m1jvLeQ5Qsklmsjh7cRAaZ6L++tKQAOLNLVTRwavK
UxVzLgL2di27GwIDNCWVQrjnwHPJrm+XpdSNUMKGigLRKVRbMqfQ/h55ewfKmKrq
DoE3+p9szluGrdH2hsmhH3L8+VO0iaUrbDD/Dbn76foF0Alnvdp6vIElEr7ayFWV
UFmNJBX4M7eM8nNcsj1jxedDasWyxC0EcrPZeVJ1ojtlcdVZH8VocuxsCiWKMkXl
E2yjndHvyYgAl/2CmlEbB/F/n9jlHEGNvjy03f7qjvmR8lk/EZNVWdpwvFpj+ys7
yWBLJxeh8xuEIv4ack+6ImJZZbhDCRCUQXlQKQXUDngfGZ6LS/yxojo74m/zW+jg
F80M2AwxtAGIJctpZbuS0c8FpyXzyWVHr0vZ+PjJeBXOVXrJhOyKQX2BQ7oSk0Bw
XsUrWvBYuRU0HekZaBBKvFb6QQpq2p/JFj1+nWquwVjX8taULkHogZOLGUIX2nNw
eUq0LQowiWA6s4JifTwQ47bF0yT+yuDoOD1kmhxrj0ugSpD3KdA=
=ctOU
-----END PGP SIGNATURE-----

--be4brfng4ehtd5cf--
