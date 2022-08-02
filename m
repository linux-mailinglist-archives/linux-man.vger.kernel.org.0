Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEE4C5874FB
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 03:11:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233270AbiHBBLe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 21:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234600AbiHBBLc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 21:11:32 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 68CEA459A7
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 18:11:28 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5BC2B9DA;
        Tue,  2 Aug 2022 03:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659402687;
        bh=Am5Vj0M95aYtuiF3kqJbgI4Y46NijBqEagJBqBu15zQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tORgPbV1qt1OQ+HxqVoKPXBHXHkMBXGQY9XsTAwWY6DjntSeBItIru3iJYavQKGjG
         mqlNuNs5V+vbpVlO19HB9+KyMiK6mK+NSw28LJT9oK+qguwIRbiR0s9p10IwLZiN3h
         6m9KG2wRiUiUrdTzD/eXC7M59pR1w1o8QWI3d/l24KYHXfduPupHYl7Aky2QvESCPN
         F0jHwayDZahkonXHfCH6hRMTcwLywFeMcdxEY4Abbg/s5Pun/+kz61FvXsHTI2vSC3
         PabI/Kx1LHqpqMpuR1tiLFuQ4AKLAXpKsq1KVC6scmqinTaUgnfoEAIHCxypE+C03r
         bYSUuZhQGYQk64d6jQjEJnIRaQUFjpzAUINwWECHUTVj+duN1FkxK9r7vP/U+Cvo/H
         TbGKPVXGiXen1LZG1bSUySwk71KYK7HT9fJm4aYtXtNqK0zrJYybJEpNEsxXf5j5UO
         e9OulZmOacMNZNeXaKt79AsxQAGrVZaIR0x2O7ZpS7tQfo64p4jiJxu+twLPeOxk5Q
         wpNVhXcIjg+v2+4vullyOjqalI5ESjJHRY5FWDV+xy9x/khWYFVDruCW05IiQbGQ1J
         02ISSGZR6n8Ec19/O8PqCrPpGoos+ozCQhvc81gEmmpjsTZrh6OOxJ/SlcB1I0Bazs
         GAwTbBkTz+0DdF5McrfxJguE=
Date:   Tue, 2 Aug 2022 03:11:26 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/3] futex.2, futex.7: {ftp://ftp =>
 https://mirrors.edge}.kernel.org
Message-ID: <cafa37c8b88565aa8a9aeb21b972f2fc8cf01b53.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dnjm2cqgtefvnyns"
Content-Disposition: inline
In-Reply-To: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dnjm2cqgtefvnyns
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The former doesn't exist; the latter is the new location with seemingly
compatible data

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/futex.2 | 2 +-
 man7/futex.7 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index a036ca47a..c0d23f70f 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1981,7 +1981,7 @@ Drepper, U., 2011. \fIFutexes Are Tricky\fP,
 .PP
 Futex example library, futex-*.tar.bz2 at
 .br
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.edge.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rust=
y/
 .UE
 .\"
 .\" FIXME(Torvald) We should probably refer to the glibc code here, in
diff --git a/man7/futex.7 b/man7/futex.7
index 18c2f5803..f219cb945 100644
--- a/man7/futex.7
+++ b/man7/futex.7
@@ -117,5 +117,5 @@ primitives; it is by no means the only one.
 .I Fuss, Futexes and Furwocks: Fast Userlevel Locking in Linux
 (proceedings of the Ottawa Linux Symposium 2002),
 futex example library, futex-*.tar.bz2
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.edge.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rust=
y/
 .UE .
--=20
2.30.2


--dnjm2cqgtefvnyns
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLoeb0ACgkQvP0LAY0m
WPEJhw/9HftpZF0YTY7CfZJPWc7VgmaqXho1eTT3L/UpXQ3O9GaK92rMC6YdsuWL
ryUStm9wvKLtV60OG+pk3HThppaKnwt9DYZ1iEV7CcA19+oAiP0Ar49hwTeu+Tgl
BcgzCBEw95m2CMRvD4MDGfh7wGdbBjkgtW32KDnk37R0XPnXmcjmXQzU1uj+peCd
XJ8sFAjDYbkzMAXl2QztYSW2mZF9dP7ivv7pIHSOG9Ewk2rq6h+cOwtVDCS4RHon
Rv8e4/g/JPvLo8gMZLBttBAIkK64khKy560zofcQkt4DlUvCMZYTnOlG8yi+qaEw
QaoEGm0Noa+522qIZFm3yJRsXCCvMSptQSjAvfXUIzhWX2+f2eCdxTJp282dXWmR
Z/RE5Z8dcrs0yOyqY2bCjHbgtJNFqOlFMJoW25cOgwHT8OymHfrWNdL3mLzFuxIO
N/9jk3EmfCAlk+pIiWcao768x/4WDKIxfGCoWXgjdMst/SvHTEX9hZuVevEfW2g5
gcmDEuZELPgL+mlpg+pVTOzE2yg/w046SkaBTk+6suCQA0CSZhcojwUDpA6+jwIS
qsbS5C6JNoqXPABE5iYYp7bBvQtYumqygxo7mnX3hVLP/44nGzSEoOV92fgKgL4r
1U/bxsYl+ME2wdF3OLYCJQvBqS9aFHznevB0w6Y2Y03vHfTeRfE=
=qwM7
-----END PGP SIGNATURE-----

--dnjm2cqgtefvnyns--
