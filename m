Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 218715874FC
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 03:11:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234098AbiHBBLg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 21:11:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbiHBBLe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 21:11:34 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D65B43A499
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 18:11:32 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 05E969DC;
        Tue,  2 Aug 2022 03:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659402692;
        bh=+y5ZY0AI0JR/SFvxID71pmuszlj7PpBJn33xrdp4Fdc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ncDFaB0SX5JzwhqEZwrY68TlAiEUkH3+ukXvZUjk2wqAGSBUgykAZ2ixDGnqVfsT6
         FY0+ojsV3Z5Y3EDUD+fm7cx6btUusfAHfbx7rHNg8dm7xxen1ybAU2CjiSTmmjcj11
         ScXwVNBT2e6/nJIXQrLIa8uINqNlUC4Nr1+DPlpGsJLE0KAM6I1fCwL079L/QDUw4b
         0yILgr/7ADmuIUo/lhVupdcLx+ZropXSIkkN1hJoaz6TUsDxf/KyBdifRug06itun3
         dyUQOf7XXiQ3Z8r/5PSMgZfhxLashaUA6SwITZYb1GRP7IixR5iH/t/xu9DAO3huf+
         J2QyWmz9Lxkr+XA8Q0cBtLqvBlAFfHk5xD3gS+kH1cefnA0qJKnnAgox+cbUskPZjv
         KGdBzYN7YXSDbWjv/l01l3daq5huFo8bd2Bz5Kid3Q2Zvuv7AxYglXGUng/4PyQauX
         GcoGJri44RoZONiHMABxbawYHSXiPwTZmM1SnjGAL2GKXGXPfzhGm0NHL9sWV9ghLT
         tkNi0TJAWudJqfVX1VALiVSHP5dkIFrCHJiro+ZkI44GBOTkJP17xUlF060eQtZ+EX
         NdJMin5iciY2eg/DAt7u1bz4xVFl4G+WBwuko5SINgyJl3VnoMIZrATPh3j6+a6WIl
         dzN/Z8xYcDtn3xp2Odn9a2/Q=
Date:   Tue, 2 Aug 2022 03:11:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/3] getaddrinfo_a.3: gnu.cz => git.kernel.org
Message-ID: <7b4b6f589254eda8cf67b8ffb555d874359429ce.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5golbcvvxqaidss3"
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


--5golbcvvxqaidss3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

gnu.cz exists at a different address (but is unreachable there),
and the address we had is an unassigned coolhousing one

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 259e7e40e..8a49ea0e4 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -323,10 +323,10 @@ The program might be used like this:
 .PP
 .in +4n
 .EX
-$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.cz\fP
+$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org git.kernel.org\=
fP
 mirrors.kernel.org: 216.165.129.139
 enoent.linuxfoundation.org: Name or service not known
-gnu.cz: 87.236.197.13
+git.kernel.org: 145.40.68.75
 .EE
 .in
 .PP
@@ -403,19 +403,19 @@ An example session might look like this:
 .in +4n
 .EX
 $ \fB./a.out\fP
-> a mirrors.kernel.org enoent.linuxfoundation.org gnu.cz
+> a mirrors.kernel.org enoent.linuxfoundation.org git.kernel.org
 > c 2
-[2] gnu.cz: Request not canceled
+[2] git.kernel.org: Request not canceled
 > w 0 1
 [00] mirrors.kernel.org: Finished
 > l
 [00] mirrors.kernel.org: 216.165.129.139
 [01] enoent.linuxfoundation.org: Processing request in progress
-[02] gnu.cz: 87.236.197.13
+[02] git.kernel.org: 145.40.68.75
 > l
 [00] mirrors.kernel.org: 216.165.129.139
 [01] enoent.linuxfoundation.org: Name or service not known
-[02] gnu.cz: 87.236.197.13
+[02] git.kernel.org: 145.40.68.75
 .EE
 .in
 .PP
--=20
2.30.2

--5golbcvvxqaidss3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLoecIACgkQvP0LAY0m
WPHhwA/9FXzH08gUJluewEiupYfSsOolrytIwNOiAguPkQmWUECYzcCbDlaplWVA
fa1d41iQrVbNB9B4wPSBcnc6G2JHOh/IqYlVKmqrGSjHAY/UYRNsjE+ETYG9KJzN
9kACzs0XW/OKPuF5gkS16RC1G+AGr7oe1AnPfA5hO/ad62aaBGep4x8OYYrqS9sh
fzTrFVaEFHhHWKRV685WQQhh3atOxLxkR0QHV9/WHjnrcaHW2BNqm5Wu+4wZGuf3
BkuUhtOu2L98mNpkEjVaVtO/xLzS5EXlBu8QqnHAm0zNynD1TuzNRcjTtCWseDtV
1xUo//Ln7CeVeqTpq5qrs3cXw51rR2zeZYyi9zudRXgAU5KHAQAtClfsL6eAUHQi
Z57AX7LTZ4pM0Y4w1RCN6r5pVI1BmYyFTNHgMVxR5OnxXeSxR4fw2xu2PCc95/kj
A8b/zHv5Ox8OswX/uVDPdpn+P+pbFSlkeCV9r04A0WgwiN/Wx2EkvyQ/q8cfGxhS
yJqjZ59ZCPFNfbrv6mIhzcehGJdpzfCHDgXTaiWHySjLQRSy8rK7l0XetrS/uRQS
9hCfFSCksIX8AZaw9IV4/XmTd8sZCitj8TdUFTeq5LzZoR8QieYZFuSjniPsWS1N
DyAKw/aCJ2XL3KGx2hTV3f0HWQIgmLMJlxXSsmpPFmKeYa4Z5Ck=
=I0Ct
-----END PGP SIGNATURE-----

--5golbcvvxqaidss3--
