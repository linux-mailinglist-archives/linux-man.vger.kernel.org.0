Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A13E23BD05
	for <lists+linux-man@lfdr.de>; Tue,  4 Aug 2020 17:15:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729225AbgHDPOk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Aug 2020 11:14:40 -0400
Received: from mout01.posteo.de ([185.67.36.65]:41466 "EHLO mout01.posteo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729528AbgHDPN7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 4 Aug 2020 11:13:59 -0400
Received: from submission (posteo.de [89.146.220.130]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 5F99116005F
        for <linux-man@vger.kernel.org>; Tue,  4 Aug 2020 17:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
        t=1596554017; bh=quK1rcVU/Rvfi+zu8LUbeO/XQGjv+zZzrVxvpGx7D7s=;
        h=From:To:Cc:Subject:Date:From;
        b=FN+khMzWnc2CdpXcJY60GkV2WvMCpsVZQl6gqUvTs8XULA3jtsbrf+n5bEq55HXlu
         pI2nkJkIpqyN+uegRedes2/pQO0H8Wj4lQjlrSP4vOr9s+tEMaNQEkqQotawEU1ROY
         XZ44Y122aBdXE89uRVXmcuYi2A05BWiRuhIn+NivBtjgiXWgtzqYh2DOQdiFpALbGC
         7bf5/DOyE2zn11x5cANYskonwf0cfT0dyxE30aUZYvSbIlofJaLNEzThrFGtgbTbld
         jlPWAqHoxBTAD0jzY4jy+KB3giSw0ij3qhOnwkbP0dn/nKtvi4zzhNpPQdqp4KelC0
         AJPEATgTMdVDQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4BLdYr42Szz6tm5;
        Tue,  4 Aug 2020 17:13:36 +0200 (CEST)
From:   John Scott <jscott@posteo.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] math_error.7: tfix 'fettestexcept'
Date:   Tue, 04 Aug 2020 11:13:24 -0400
Message-ID: <2307706.5A7OvHLFAv@t450>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2599899.bymOcEXxXD"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart2599899.bymOcEXxXD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

I've added a patch based on git, or you may merge from master
on https://salsa.debian.org/jscott/man-pages.git

diff --git a/man7/math_error.7 b/man7/math_error.7
index 876c1d8fc..6f022166f 100644
--- a/man7/math_error.7
+++ b/man7/math_error.7
@@ -193,7 +193,7 @@ This identifier is supposed to indicate which of the two
error-notification mechanisms
.RI ( errno ,
exceptions retrievable via
-.BR fettestexcept (3))
+.BR fetestexcept (3))
is in use.
The standards require that at least one be in use,
but permit both to be available.
--nextPart2599899.bymOcEXxXD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT287WtmxUhmhucNnhyvHFIwKstpwUCXyl7FAAKCRByvHFIwKst
p5DQAP48lnhsu/KNLtL2rMAWn1y7tgQVBiQpgSjYHwtM8xwVfQEA0a4r0ATtWKlO
CbFZUlS2/h1FhJgwiKrDb0qsz2Ze+gY=
=IHCF
-----END PGP SIGNATURE-----

--nextPart2599899.bymOcEXxXD--



