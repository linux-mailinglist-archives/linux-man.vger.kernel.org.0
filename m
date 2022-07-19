Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1438457A69E
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 20:39:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbiGSSjV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 14:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239488AbiGSSjU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 14:39:20 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 01E755A143
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 11:39:18 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 41C3CA90;
        Tue, 19 Jul 2022 20:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658255958;
        bh=k3u9wT26vlt2spUBMnaftP+nVfrPeVXDoTwzWoHaqrI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=g47SfvujjaUZBtYKfZI57i+pPbnn3ahBk3oxwmyucb/w8Gt2OGtFYNwxeRL1GxR2m
         HvcnP+1I4QOSgm/PIeIJXGcirLAuzTplLKX9f/uRtK83oTp3s+8Bol4qt4eI85WrqD
         q51rySw90vcrwWas69qwlzL7QMCq35rlixlqkJY89pq3K+dLmvCUqIZFjxMA6jK3hf
         gr2R12tMeqLASZ9ncZWljg+VnSYZwFtUw5RgID8zM5tLpY0sSdOmRYM4EshKWy+TDc
         TGiLkdUwix+cWNlZN+dBis1QBR+xMY/zs3XvLCgDDoIgoQQXawywzDcMOSGvUBG7ig
         r4NmjSy9xz2MzN8Or9PszK6tRO3KdILvxz810lhYKy4+unvwNCpx2cq8itjskSBpGl
         FLppty9wYW4Tdu5f9nNHB52+4eQs2nlPs13js3a8AvAjoes6phlhPYO938iEKfy6dX
         68WeTg3MXo88cGZTgM+i2lSWw1A7HhIfiOTLSwIv4QHZ1BQ2ho0q5rgX40v4VFE4Zg
         kJ/jkKrD7MIyXb79CGDEJo6z6gfXTQGUBr5t6ywXrOfGM6md8HHWa1bwhTRv2JKIAk
         bg6CxSxcF/8+Xo1975QH9PKwRp52YBnotmenNbXMxXSudNnY13Ekk1+BFoxhD824VP
         ++aY5GyRTlz0/RrkkTZ9GZMk=
Date:   Tue, 19 Jul 2022 20:39:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 2/2] ctime.3: remove struct tm vestigia
Message-ID: <fde294059cf12d822f1603ad3e0e308e3af76537.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qm3s23vsnn2qchry"
Content-Disposition: inline
In-Reply-To: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
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


--qm3s23vsnn2qchry
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

struct tm lives in tm.3type, and we now describe both of these fields,
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

--qm3s23vsnn2qchry
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLW+lQACgkQvP0LAY0m
WPFwsw//QWhYd7WBcV+o+n6dHxSJygjka+4aEgEdJNJPGbihcw/gtXAglBDu6Z6m
Q63PMaRle3pvuzNXpfnG8BApvr9pVrCXnZK8OMaYPXmq0O8J1mFyOwqb9BWtT7cA
ZYd9Rt6O8sKL9fd/0B+YxPKMT2PdIf1FJEeetY3G9NF+uwwk3U61CB2QIxlAJfDE
6WYpUHEDcfbseO20QD/XpLSMBqBKAzQY2oEpKPU2uNm8Kr5shn7CtlO1TF2sT8cq
qe6BnatOjsHtQAGx5K/xFRWHaU3NIUN3FiCyJ3CH9PC5vH2rHRSsfubAzMV1G/RJ
hVrJ4KwE0dojFmmzcJFNRctBmJOg7oSSM5ftCcdqgK3GdVBQ7KGoCxWr0CcapDAc
VtjVjPV0AwwFAbTkS2cdikhVEU/zWQjiUN8guKb3F9hXQiycIUktTrFrElXOD3Di
8YmHA57xqX5e/YgUCT4k/m3FNT99MXmE3JrjngPNWZg4ruSSwq8AfRSvL/B4d5gl
KvN6L3SrO9UoNXaZclbW4TXlxYS0xpUKAVUwky5Zng6gzaMjB3IgQH8xLbkbLpRJ
zdwC8Vo0PYLksnDMhq5XKpP/c5cY288469L9PdXC9JjtSF+DtXwmB5WMzrUO8YFs
Ef7AAyoCzP9NIaK2Cl1tobS99+B4R5PRr0wAM5cJmW/cDnWkWck=
=T3gt
-----END PGP SIGNATURE-----

--qm3s23vsnn2qchry--
