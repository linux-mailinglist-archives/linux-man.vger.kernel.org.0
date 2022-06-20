Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04935520BD
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 17:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234214AbiFTP0U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jun 2022 11:26:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244432AbiFTPZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jun 2022 11:25:58 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 245CDB16
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 08:25:19 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 58E573020;
        Mon, 20 Jun 2022 17:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655738718;
        bh=MTh8nzbdWkkjG3gws2rAJjDQgowEufQqwtNlvfZuXQY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qVxzjVSxGhX3se2GJoiG13yIvZeoNrBb+5Wj97vVbGL7EkHaqWQTuiMYF76TKP6Fy
         zsTPabxUF64p5fIOYsbuOQ6R5oU8XVzBLSQNAKdXU+hIirI6WX8lR+7gsIaUTvCHjk
         fqJcWzKzLvAcCmf2E5R0tqgexQHvkFzAgRd5AsG4Qxw5GhrxDMX+3NysL+C066Zn17
         UvMMYLlLl+HO2gMr/II6ZE2KJJamGY8+IuCajY5S4jlbc6xL+4N9Kgf+R3PrqyHUlJ
         9o4fTuC0Oo/4x3buhGQo0f5cOM09w84RWDEfdDiuZxhlPOXTd/qSZG2BpqiNinHFyw
         sNq+hWf0YuHBFy/XLRCaaKNo1W4Q2wNPQ1sL5E1IDaa1N/F1X4a6YV0ixKb0zdf0k+
         3XE8W86Zeq0UYXch0hICMiqKsDElhLoSp1rSqFLEnLhgHqYkdCtRJafrQ29kN4y/9S
         i/iWE893tJ0CSj8U78BGZacF30tCS+rKsmz8SwQjcXC3Zlju4cLnhOQ1nSFjUhCL+T
         2uyKqOz6XSBn0xyYJBGabsDF2wSe3H0/PyjS7q4kF4I9J8qGHO/5IWGVteTH+H4c5p
         Rec1z0141V6wsIqEloSz+5FzIQ8X/1cTxv8+rZ68aa2bkf1OBmiWbRuQXfFWgtnwm7
         k6vHlGNKWkRfFebN490+KQAs=
Date:   Mon, 20 Jun 2022 17:25:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] environ.7: align PWD with the standard
Message-ID: <20220620152517.lxhja4s6qeyljgah@tarta.nabijaczleweli.xyz>
References: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="32xm7sl6y6ftt2cr"
Content-Disposition: inline
In-Reply-To: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--32xm7sl6y6ftt2cr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Issue 7, 8.3:
    PWD
    This variable shall represent an absolute pathname of the current
    working directory. It shall not contain any components that are dot
    or dot-dot. The value is set by the cd utility, and by the sh
    utility during initialization.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Amateurishly, I wrote that in in my MUA and forgot to re-add it for v2.
Fixed.

 man7/environ.7 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man7/environ.7 b/man7/environ.7
index 019c5a25a..24446c709 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -158,8 +158,12 @@ used by
 to find manual pages, and so on.
 .TP
 .B PWD
-The current working directory.
-Set by some shells.
+Absolute path to the current working directory;
+required to be partially canonical (no
+.I .\&
+or
+.I ..\&
+components).
 .TP
 .B SHELL
 The absolute pathname of the user's login shell.
--=20
2.30.2

--32xm7sl6y6ftt2cr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKwkVwACgkQvP0LAY0m
WPGPlA//bSfKx7GKaKZiO4fRQTaQCK6x0R0x0tGeQHQ8jyAaG2v0XO43tUJBlRw3
mKPrE60uMXMWgMUIDK/iDd5g69AJEadzkUpFyKo6k74AXlJnPvqCgA2VqGhQD9uw
/4prtLgqGbABGDwuujnQFO9xG89OA+tf0dIEgsf5XreDSXAfZN20aXFwCmLkIkJY
0T4SKr6gqwHw2k2GabiHW5qiCxIOZr5UMbPA0M3f9p0RCiXZNoJDWSOG2eImXjIP
pf/5TL3SdCq4hgfxgNQ1q2bQw7yKxUUPEHWNtpGXMlGR9NS/IFk11kkyE2GnsG7O
nqCjRWXn8G6O6oNY6A6Iz1On9i6D1xolVAfC6BtQAP7sAX6N86Gisni/1XcoYTlO
R6qMaeH76RpnkhE5nbpHyNdZGKHpiRmuxJGx0Yy4wxfUTC3sZxsSCht7GvptPjuH
DRt3ayIg1jBsiUkRJJJ+1URMoC6mKTtMrA4uQgC7tC7Bfla4LoNMYEGWBfCcPsnz
D+PbBVtJzKgH0I3RC4fzZ0ZDfNlAC1znjSKxpb5d4D1pwlI/iwRiCthGLoiVMjsc
+TUfBM70dGDWZ1sdZdYjESINwaoLbEDbDEt3isNWZF8satc/z5BR1JEL8vVmgBJl
HIyKnRLuyEvDYkSjjnOUnrudyi+9poQosSTPF0Ykc/pDXXespjU=
=dIdl
-----END PGP SIGNATURE-----

--32xm7sl6y6ftt2cr--
