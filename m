Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86375584569
	for <lists+linux-man@lfdr.de>; Thu, 28 Jul 2022 20:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230029AbiG1R57 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jul 2022 13:57:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiG1R56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jul 2022 13:57:58 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 318ED42AF5
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 10:57:56 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E6E145FA;
        Thu, 28 Jul 2022 19:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659031072;
        bh=XeppJmb6vIHDiI8bU/psqTmpTCzLkQzhNN/RGe5+AdY=;
        h=Date:From:To:Cc:Subject:From;
        b=csEjHR0KNXr7qm2FQ2l4DeYdPD177J3KnsahYQw925h2yh9GGjFra46KXHBW1JIlI
         eZOlYBecnsN/0PFjZNKYcDq3TCwwR+aCvumfg5zGGk3ibrBsrK+xeSDBezK8qgzDzC
         PGOZnEFJ/X9CZci3xmPl2U509ed7DirSIx5W2iVk5EhTIbslxfvc85MIiEU7UUtGm/
         756sOvzniRpOvN3mCOWgrVcnSvE53i1Rc7pRqu0/y4uNC/iYRKvrIwhezOwyrBhkzr
         T2d4EdUUGYieqz3BCOfGkheNLn09wa0pAButxWiwSKkR70EIZ4mORJWCOImGblFlEP
         bH3bZbR+tchttgYl/a3SdvAXbTKqlm/JJEAU8HeC3g4AdM1r1bc1NJBmu76Y+D/MNT
         pRL1PqvME0l32LIXMHk6STMKaqTK0UZaiAdAv4Npf1UINISKTNc2UgKrgKCb+PzzFE
         XUjorMlhtxDtM6RBOQVNaxVnPucErl+6DUB7ksdGk6CZlu8ir9eTGrYX6HFJ61/Cig
         aT+jZuNpdvt8yXTq3rgumqNhs8FBZqFSewVX6N4z/kGmeTo5AYlslnLNDOZ5Nd07LJ
         6ukNiM7fsMr4VHeveEKYEUrzNBIkhtkrxAEVG/d+SS7oGaXH6osxzdsGVlLzm/Gqw+
         zuU1kncwDwtUwuuLEWXhjJio=
Date:   Thu, 28 Jul 2022 19:57:51 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] getsid.2: deduplicate getsid(0) case
Message-ID: <20220728175751.3as2p7zj3sevrq6u@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hj7dmnuslobk3gua"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hj7dmnuslobk3gua
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The first sentence in
  getsid(0) returns the session ID of the calling process.
  getsid() returns the session ID of the process with process ID pid.
  If pid is 0, getsid() returns the session ID of the calling process.
blames to beginning of git, duplicates the third one,
and doesn't stylistically match current formatting

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/getsid.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man2/getsid.2 b/man2/getsid.2
index 7046bfc09..a80aa128e 100644
--- a/man2/getsid.2
+++ b/man2/getsid.2
@@ -30,8 +30,6 @@ Feature Test Macro Requirements for glibc (see
         || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
 .fi
 .SH DESCRIPTION
-.I getsid(0)
-returns the session ID of the calling process.
 .BR getsid ()
 returns the session ID of the process with process ID
 .IR pid .
--=20
2.30.2

--hj7dmnuslobk3gua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLizh8ACgkQvP0LAY0m
WPEAhw/9HQTb73KbJrV7nutf4ABNdnriDuWpYya/5pYc72Io9A+DtGImVaUktaM4
2F04xvlSF/ihAmupfGYR+hmwAbMz26de/JgpAdALIZ/v2SrdENDlg8xcZZif9GvO
lkZaDp4pJoL7CasJ2GRjYXSOwGw3DHjaAfi1rZrTJsDo4v8R2ngxCGJUPQHWbpkH
5bPXYW0+vBR4nZlekzRRyGFfJbiMSJZK3LfV/i+DoN8NbqIZSCSzI3kW44XdUDoL
oFbUUEoochvDsNFwxXIFTLYC/yb1PSXpwPR1HpciX95FiJoihCjqVGXSlMnLmQVf
gzB69cbqXR3kO/e1MSwEOLQrMH4bmV5bH5DjPNodlbz7eSGrmpfrosD55sSQhcja
2r28vw6tEA53aAkTyKdAh1g14dkfhbKqWiPDVGfMWb/q3ylbAPcR6OdAxoK3L523
twVhJmqY+Uv7R5kI2dPHNoM2vqtxikgZFDUC+kRNZW/w0ZF6lChWkzB+0kHwk1Qt
fiM7u8m+FAUu8UTASzuKEAx8OolhYFtRR7bSvp5cnM+7HVwVnoDuiv4UnQizv9nW
fHUQI1qAsBz4+aOKdl18k//sDSHgY0K3BfvYSP4KaljVluBQXzdiGntRkSO+lBo0
1X6M1rrnqI5oFaD3w3q8OhBd1nJDRcPno+uETJzna/GllG9FPRg=
=z+3B
-----END PGP SIGNATURE-----

--hj7dmnuslobk3gua--
