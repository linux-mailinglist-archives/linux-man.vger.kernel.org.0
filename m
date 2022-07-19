Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8CE657A9E5
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232480AbiGSWgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:36:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239051AbiGSWgG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:36:06 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 56D322B256
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:36:06 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4C9C448C;
        Wed, 20 Jul 2022 00:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658270165;
        bh=SpVMGiYp8gMklHO766wKG0KwVvlAj/08GmergundRCg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=X6JQxV6NQhUI4BszThQCZsCyFUdbLpV/UoU4+pzUCH+fHaHihkI06P+pI5+Z5cMm/
         yXkfSCNc4iw42hW8jpxEjRAZ6TMWcg2A6Qd+zlIIoGjIvTceA6Hu9U6nfyrJeO0CXQ
         xFWPJLd0d3OIit8Sg0/vJmUG7L/2qc/Gznqj6mTX6WJJT+DSe9T9u1TIrxLHK0298D
         JQJm5+PRtydvCqbL9mFeYUHYgrO7y8b2mu1VbaioP2s2Dz4JPfV9l8je5OQ5OEP3ef
         lpkjoSJaCYn0y39TZGjEX7sMH16zVf8F9EOt3nif/9vkDleBPIdkKM1jHjPgorZczj
         NBgw1MzBMOxeWC7OMtIV5oECZ0b8SYvfDL9kGpnLnCdIX+qxuvH44DhN4S/p1g9jbh
         lOG6tGS78GoPKNp4wjznpMabl+0tNJlc8nP2NZLcW4tfTTdG6GeZanEKKuJktWf/Md
         2Jrgklbj8T6veJz6WKSHK1I8lzf0iEKKtLSKfEKGill7dCynHjLlwkQj2gpl8wc+xW
         zSAKVzEkprvm7Yx7/CWVHHJdSQX8biBtFdjUZlV+eUux+DAhdMWiF8gXydZKpULA3O
         Ud6kM9TJQnTlUFbmXc1FbBG7Vi3KRzJRa9d2W4pnUEXA0NLgKzOT5JpjJ5zrqgUr5C
         /plkcWn2r/7gypQqI0VUS/Sg=
Date:   Wed, 20 Jul 2022 00:36:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 2/2] ctime.3: remove struct tm vestigia
Message-ID: <8e3832e8b0f0c674f0f22682c46d8cebb8122091.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>
References: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="avg45dc5ooru3ssv"
Content-Disposition: inline
In-Reply-To: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--avg45dc5ooru3ssv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

struct tm now lives in tm.3type, and we describe both of these fields,
in detail and correctly, therein

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/ctime.3 | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index d228bdc21..60ee4418d 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -356,21 +356,6 @@ In many implementations, including glibc, a 0 in
 .I tm_mday
 is interpreted as meaning the last day of the preceding month.
 .PP
-The glibc version of \fIstruct tm\fP has additional fields
-.PP
-.in +4n
-.EX
-long tm_gmtoff;           /* Seconds east of UTC */
-const char *tm_zone;      /* Timezone abbreviation */
-.EE
-.in
-.PP
-defined when
-.B _BSD_SOURCE
-was set before including
-.IR <time.h> .
-This is a BSD extension, present in 4.3BSD-Reno.
-.PP
 According to POSIX.1-2001,
 .BR localtime ()
 is required to behave as though
--=20
2.30.2

--avg45dc5ooru3ssv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLXMdMACgkQvP0LAY0m
WPEK0A//U26FZ8ppMiFT4HDIoN/ZLKN0OfwVh8AK8iM3tWY+4KD0NXkTmEkT/fI7
1Kl0hptly5sFZyAYG2BRoMuu+oV3LRwAMQ17noeG1YgPl7inW4bEjJbnlWDEIbxp
vNjNKtNJV+SzFSCCqhCrABZ+gKLXcnVLTTG+61Ie8Fa2qGxfqDPu8luSSnIOX3YC
nLXoDYLZKiMgTdFxPEUmTCsdCkQaWHu8p2s9DMq41akrexp6hcDTsPLUElD7OjAD
QKxH0SfUfpItQ/ZpeGoQPbDVLCYTBOaXdXMb8RMzhg4c09cxhUCrgdtiUYD+5xrh
cmFrxbM4PnuQPngqcA2WwZ7GgT4Al3z/p+Fdjbpyj4JO1oBCYzkB97cSxOUQoJVa
7/wqDOP4wyaTxVjEBCs5UgoMHAaEnypR7gW9w2r31eLAyKvkeQPReaM2ESmpFnIY
hQ0fKywYAtdXiDtA2tiQiSOcF8p80v87c04tSRmIm8MU1IXF89h5mtim2pR29PEL
vZirreX0T7UOmKAtehKR/xk7Phw1V2gUhlhNXEH2UEF0+u0joI68jzCpVHkdQZMI
WJidW/zequFjb9u5+eW3MB096xq5SG8XmHR6XviKBTGhJHDFpztTHwsGiKQyQRSs
qUY9i8nLWmLQY6a4CZYaGHgIUGgC5g5LqVnmPDUbvPj/IcdYQms=
=Hgw8
-----END PGP SIGNATURE-----

--avg45dc5ooru3ssv--
