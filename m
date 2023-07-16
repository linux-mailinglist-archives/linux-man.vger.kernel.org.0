Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67F26754E7F
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 13:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjGPLz2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 07:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjGPLz1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 07:55:27 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 77FEF132
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 04:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689508525;
        bh=hORsGW6g+Y1B0NE3vEmRugAtzoevS2DqrxsHUZIeNOI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nYigCNRSZmPVBvHwl1JxDSTbreNw79Wi2Ba3Q9RXcSHO86VxGpn0+jDBl1loqcCBV
         pYjzSnxU1otNpqh/sw7BK2tPETUjLP8lv4CEfQilZisWoeICmEELBgPO2vRD0MMx/w
         969kgxMsmGbGFLU1QAFGT5qIrRWJBNwaYGYnHaBeF9UARFNOFR5VIFmnhu7MnPamNU
         NELvQpj3708TCaxxifc+p9tHcbd/2Pqddocz/2KJBxxRKbHpWUvA1kO38C22POij9W
         AaRFcOjahCx4ZFJf3mo9Qdciw3B9gnK9KW2W+KBNv7rKnqzhM68ih3S6f6Hf4Va8AV
         +sMuf3juks8Lg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BA2072D50;
        Sun, 16 Jul 2023 13:55:25 +0200 (CEST)
Date:   Sun, 16 Jul 2023 13:55:24 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ygdter7bl3536qrg"
Content-Disposition: inline
In-Reply-To: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ygdter7bl3536qrg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2),
and grantpt(3) is a no-op (that checks whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
 "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").

glibc 2.33 completely kills BSD PTY support on Linux
(Debian hasn't configured with them on any architecture since 2007:
   https://bugs.debian.org/338404
 and even earlier on some arches; they're really just trivia under
 Linux =E2=80=92 this may be better served stuffed into HISTORY as an expla=
iner
 for the SIGCHLD thing, since regardless of the "version", the behaviour
 is well-defined and consistent).

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
I read it but didn't really understand what you were saying, since
you're on record as a text=E2=80=92text=E2=80=92text liker.
You can trivially continue the lines with \c like the below, but
  "no-op, with permissions ... on Linux, or an ioctl(2)."
would probably also work just as well,
and I leave that to your editorial sensibilities.

 man3/grantpt.3 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..363a7aebd 100644
--- a/man3/grantpt.3
+++ b/man3/grantpt.3
@@ -84,17 +84,15 @@ .SH ATTRIBUTES
 .ad
 .sp 1
 .SH VERSIONS
-Many systems implement this function via a set-user-ID helper binary
+Historical systems implemented this function via a set-user-ID helper bina=
ry
 called "pt_chown".
-On Linux systems with a devpts filesystem (present since Linux 2.2),
-the kernel normally sets the correct ownership and permissions
-for the pseudoterminal slave when the master is opened
-.RB ( posix_openpt (3)),
-so that nothing must be done by
-.BR grantpt ().
-Thus, no such helper binary is required
-(and indeed it is configured to be absent during the
-glibc build that is typical on many systems).
+glibc on Linux before glibc 2.33 could do so as well,
+in order to support configurations with only BSD pseudoterminals;
+this support has been removed.
+On modern systems this is either a no-op\c
+\[em]with permissions configured on pty allotion, as is the case on Linux\=
[em]\c
+or an
+.BR ioctl (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--ygdter7bl3536qrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSz2qwACgkQvP0LAY0m
WPEVeQ//XuJ4wzL8nXrAyfesMPKRqC6WcPdK5n1hrIWsu7QY+TqVvkAs5wJcphnd
tqZd1hjoAY9pUGhWhXmGgtXCX2PnabWlhASWPcmAdIwdDvEFrqZ9KwvD8AIF/7Pd
PtzuAb5vDXglBzzuDGYu4KYL05/qEFERyfjwGLX2URU8LtF3nn9k+nCjUW9a7gB1
Q9pxv2y7GX6T9t1lhhm2XLtnBX01CDM+cKIjSbC8BXO63I8KK/yJbrcCuXv3B+7d
Ys22c6T69QRnxZ7RpjXuLGoB77djme11+rAL0epH2cQx5Eb/J5l0/8mxPqvGJ4+M
z8BIcNHp71N0kPNE5h7UuLcOT1g1LC6FfmYGDRV+GmpIz0W7YZltUWLxOAcqpt8j
rmI5a6QbDsl0ThSAVsB0BkNhNZHOZLT8CPQAH7++E53OEBNOkCiZCXTCtgSZKIYH
0cDbP6C34nwFO6UiTJ1CJcRAw2GN/in2med/Ft36ws7XaWrLGEftPmaELwrcn6A4
VGNPM0+vhV0VnLV/HRI0TpeyOq9sg2z1SMKPPspzTLOgd2U6GKcXuW2BlFREf8ta
WF//Xf+nXpqC7lBnvoYkAH1WF3H0z0ofJZwNZDaLST9+Wz9ZhjePZqVoUwJUnO3i
OsNUWtN+4U97Nn6X5KQN5acvw5rdKYvI1/ZrLGUPIhgmrI6TvJc=
=Hu8c
-----END PGP SIGNATURE-----

--ygdter7bl3536qrg--
