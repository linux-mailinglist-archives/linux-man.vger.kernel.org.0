Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ECDF5951C6
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbiHPFQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:16:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231810AbiHPFP5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:15:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E2974F23F9
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:34:04 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D985A1A88;
        Mon, 15 Aug 2022 23:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1660599225;
        bh=ZFusYtoXX/q1vCcIFg8oEsl5+9VDlw9OQ+nNlq8bn0Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=skkhyOYo3MLItOmzfj3e9+NRey+ZDayLQpWqAGKHuiOJfx5hAe8+OUH6EdYRslrbn
         5Qzo+yL6vON1H5AFq1NJ2DRGJovSycVzTw/DSmbuUupNYAdgysHZ6k7Ox1pXD/YrEi
         BGKtucLn5JgxoUNk8wJ+gp8a0g3Ylx856pvPRySRGC0NHEbDMN0Hmyt+cqGF4z/bRl
         AN+IuBgqbC59j8hWqrROEVyAW78XyUnYc/GO73xH2ckp9nCPWW/do+a1gPSb2qXNQK
         t6UY0H5DCWpRZtz7U0ycsDcTOjcn4si2yCjXtCXpsO64LazIsNCDzLlwxb9YEbZloD
         u26voTaNmMTvz8r9mofPanGrCPYnnWcmVdVeLUr2wzoOR6Tc/XmSkjgCPHhfrYAGgp
         dsMIen1RPjHBQb4GAwdzTzFfE68SBtycLzqkT5fCRFTPGyfDliXxxb+Ra55DDdVNz8
         P+AzpMmIQuvOEdRZsuBHbwoFk5IC2s88kWQXWzgStgKVqkvP9E+WD3xlikUu9e3P2U
         A7R1ZTny0H/GmDqRovGrkCBV3o3Sl6ZsRTHYcGck3R7ljMs45SdaCkRncbtdzAIAo7
         +dlST2+EZ0WC4zHlSznLateW7wRinvOq086jiqlaUX9czVXaCjlUA6Cbqc0bXkRLju
         I11ArEsZrw4jpBnKWJm/fZp0=
Date:   Mon, 15 Aug 2022 23:33:44 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 2/3] futex.2, futex.7: {ftp://ftp =>
 https://mirrors}.kernel.org
Message-ID: <a7733389f92089ac77c97f279a1f3ea77a154c99.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ymhxtk5wc55qhx3g"
Content-Disposition: inline
In-Reply-To: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ymhxtk5wc55qhx3g
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
index a036ca47a..e8a8a5aa5 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1981,7 +1981,7 @@ Drepper, U., 2011. \fIFutexes Are Tricky\fP,
 .PP
 Futex example library, futex-*.tar.bz2 at
 .br
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
 .UE
 .\"
 .\" FIXME(Torvald) We should probably refer to the glibc code here, in
diff --git a/man7/futex.7 b/man7/futex.7
index 18c2f5803..ec273c151 100644
--- a/man7/futex.7
+++ b/man7/futex.7
@@ -117,5 +117,5 @@ primitives; it is by no means the only one.
 .I Fuss, Futexes and Furwocks: Fast Userlevel Locking in Linux
 (proceedings of the Ottawa Linux Symposium 2002),
 futex example library, futex-*.tar.bz2
-.UR ftp://ftp.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
+.UR https://mirrors.kernel.org\:/pub\:/linux\:/kernel\:/people\:/rusty/
 .UE .
--=20
2.30.2


--ymhxtk5wc55qhx3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmL6u7gACgkQvP0LAY0m
WPG7iRAApo2IMpKF2qBYo8DueZEvLBDjiHJtq6VKLbKsKQUDTKjhZ+I+jvw9+7Xt
fMPlHNGOoMf3TCJ5568e5oZLuUuk3OQmi2YOIrm0IMHf6ergnmQazsjo0gW52v9o
8Paq5tfEqw5mS/x/TpVsOXlKiZ2WjMlgRMTOYlAFABk9xsaxiDRESZ0AZ/20pA2o
76UgzLionuO0vQqy3lErgXXusjZ96b7SfCyNIT51agEOTTbTSNWw7qZS9r5tCpYK
pVW0Hej6ITOmgzuuxmuvHQWFGyhJFaoexOMknaTozrCsI/6ZgzjHZfGSwPdlkD6K
XW+yRfVqaymp0Xv6JjjgTc1Ww4r3FR49vdVVM3eTsAJWh9sruNDgwLa2oTUSy+8V
2f/n7oMQKCrOYPck0xYqFcffSmv8wrDsXl6OTWg9EEDqR6rKNZEhH7zyu1nT2gn0
o1YskNenub2GFVrs+0QsxPjhoZN10GDKaZFYr00MIczHcwvuRa4+IFxi9Ceeab7K
nZ9A7H4rsUahLjh6c3WVymL0HMt0jysVrlHdbk3FRdPVjK7wNRM3pp99XW55Qp+w
0TiEnTobR5dvjwKhNkh0SikqRyMq5lA69XYxF5UqIqiU14RiRnnLmCpaU3R8A5Rn
8IBUOZbDxryt7SzcijomV41zxmaAq6aIgiGNvbd/rIb+QqEPbCQ=
=Jcsh
-----END PGP SIGNATURE-----

--ymhxtk5wc55qhx3g--
