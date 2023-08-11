Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EBF17790EB
	for <lists+linux-man@lfdr.de>; Fri, 11 Aug 2023 15:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234157AbjHKNmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 09:42:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235224AbjHKNmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 09:42:04 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28F75E58
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 06:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691761320;
        bh=uU83pfhsEAk44bglcc5yEaZubyTZ4GvIjhR4Q9PFBuM=;
        h=Date:From:To:Cc:Subject:From;
        b=A1MerqyQd+RdcHsKGYP9IpvAWVyyeyV2D14tn838cyfRVz+K+Vlzd8bhwjTt4rQhE
         rGeu9ScX2nGsLHwxLfRIRPNyl4FUstDErKrWpjTm4uD+xs0Nj4tOFbV6ubvyuAKwzp
         Dw11Tk5pTL2xVZF9GAHDBJPGnbTDvTSwiobuCoroSh0swooUkD7oAXL+96qeblTQF3
         luTnhPOrFgo+fGLqC0jxz8kD3egts25vRupW8fuPJfh9hzQosxHhrABaJ29f/+LaCA
         ak8cIqwdyY6VUGCmPv6nAMcmWVQl7eo4G/+yihoLOIfwFE8uo3iaY7LM8yOA+bqP9L
         4EpRSuKuQ1wRg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5A6526412;
        Fri, 11 Aug 2023 15:42:00 +0200 (CEST)
Date:   Fri, 11 Aug 2023 15:41:59 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=> unlimited
Message-ID: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zt2ri77bg45m6frv"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zt2ri77bg45m6frv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Bitten by this again. Behaviour blames back to at least 2005
(so probably original to shmem.c), documented upstream in tmpfs.txt.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/tmpfs.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
index cdd5f2fd8..0e5bc853f 100644
--- a/man5/tmpfs.5
+++ b/man5/tmpfs.5
@@ -51,6 +51,8 @@ .SS Mount options
 .BR size "=3D\fIbytes\fP"
 Specify an upper limit on the size of the filesystem.
 The size is given in bytes, and rounded up to entire pages.
+The limit is removed if the size is
+.BR 0 .
 .IP
 The size may have a
 .BR k ,
@@ -89,6 +91,8 @@ .SS Mount options
 The maximum number of inodes for this instance.
 The default is half of the number of your physical RAM pages, or (on a
 machine with highmem) the number of lowmem RAM pages, whichever is smaller.
+The limit is removed if the number is
+.BR 0 .
 .IP
 Inodes may be specified with
 .BR k ,
--=20
2.39.2

--zt2ri77bg45m6frv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTWOqYACgkQvP0LAY0m
WPFNVA/+J047Xvrro5AMrQTJs/N2rssA8hprQ2l7lzgf9GF/eP0O3xJ04dc4fMDj
PF4siw8zaygJgYrd2FFzuZGPy/tLoyqsnbYDSaBSnuAFYzlbof79bRdAOhiPsiux
bWiITbsZM6gIRLDHehl1k+hkB09/ucPigFqoFB66B2O2fKOt8RKcAVpmvr6DPoC4
AwX6/6R1qJKx8Eiud/eYQfiVwVH5C2GiVR0HUo8g8edNfb4rQNRFDS//JpfUm79+
4bbfS9dnhFIJBAoLkLYinloFIBJI2KiQqLz6X0o4yqiRGZTmaPKmb5Ae8RP1fodY
HtBn/q4jo6HtLhqRjgBLt3G1z3iJuyO9/JPKIH0VdkSWEciod6O8bPsaZlviyYzE
gT2phWs/deYXaIehtPk5IkxrjmIZHrKko6RZddLt65rKrkYfBy7BvuQJeEoR88kK
2iIolMdPv94IXb3D71Rb6bfUlcHGATEQeUqEAiDxia+0GdKzE1sI0NxaNmQd3vxo
J1fs8XWAGlk2ftwq03OpxcQR3xxkxOXFXJhnaADbohtvMGSoe5TbNbVZycbpb0Uk
HTc7D/9wnKkyXotySFiuBradhJmZLW9Fusv+IVw6SxfeXAK1BdbnZWL00JNTLRqg
7FBmlgCnJ+YGHK0gk8MignCgxqPfb3qYPIjihDbujFvNTHpW7Ck=
=x5dQ
-----END PGP SIGNATURE-----

--zt2ri77bg45m6frv--
