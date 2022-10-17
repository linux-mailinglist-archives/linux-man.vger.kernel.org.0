Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8C26004D7
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 03:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbiJQB3j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Oct 2022 21:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbiJQB3d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Oct 2022 21:29:33 -0400
X-Greylist: delayed 385 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 16 Oct 2022 18:29:28 PDT
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A37CEDEC6
        for <linux-man@vger.kernel.org>; Sun, 16 Oct 2022 18:29:27 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id ECCEF391A;
        Mon, 17 Oct 2022 03:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1665969779;
        bh=mhdXj4bX7DEcEBzeCInMrMWDzkOu9luJJRfzyHMAV7c=;
        h=Date:From:To:Cc:Subject:From;
        b=DmOvIanM2u1BauDGvDZvKSNsWKqymYeBQ9K/CGPqPSIjGRMW4d5YDc6fjJVoxkE+C
         shwZoadvVcmotSf+cDr9i/4G1KweMhrK/VCgNj74N9UruPrqCZS4m0Jq9sGqKWn8jM
         6NxQohgIAY0g+tusUOHeebJ588UqveqJkM9v7TpPRW71SwOeluidFfqZqi4Pnp9Voh
         YP0U6Rd2SSXJmwyTHgNAn5B5C7/6kgMVWYECCrA2s+5gC8yibao0qtGT5aU9mnLPDD
         hF+ouL+hfGa7oX/p4X7zjLun34zVlUNjsKYwUU0iq3kmQwBKvNfmhO2dsdvlT9WAYW
         yDFvPHxq/sVSUSdastCYGAG8eqaAcNKAS2mPfnlS7lBcFtwAsAX8yOp48KVjO8lDOG
         LvvNXYEZS5VtzE2dVfJm6WAWBtctXr2b5bUswwPbXNSt/090K2u1FyLCn/y5zrpS20
         Ap8eczoq6dUEOlguvyzgCsBoZlKXWpUyH5KxhH7Se2JwJOa7iy/oAS3Inn87DLfYrE
         spXqbjh1wWc7dKh0BAs1/t7cgqXjuHlqVB3by7Nap6sFvlsy44BYXI7IlOk5lQ9G5r
         9K/p2xKCrJBrq95yPijyBXVR2L5Wu0IEnCL3WywXgXqfbz3cPzfc/dzPnhdBjmKmIy
         NqjsEuf6PggFe4Y04XHvePco=
Date:   Mon, 17 Oct 2022 03:22:57 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ascii.7: chase down History to earliest
Message-ID: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zm72khohnkqbpd5b"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zm72khohnkqbpd5b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Cf., well, the UNIX Programmer's Manual:
  https://www.tuhs.org/Archive/Distributions/Research/Dennis_v1/UNIX_Progra=
mmersManual_Nov71.pdf
PDF page 191; yes, the typographical convention here is insane, and
the contemprary-correct way to refer to this page from within the manual
would be /just/ "/etc/ascii", but, given the context, "/etc/ascii (VII)"
makes the most sense to me

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/ascii.7 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man7/ascii.7 b/man7/ascii.7
index 1bba7bbaa..71e89384b 100644
--- a/man7/ascii.7
+++ b/man7/ascii.7
@@ -134,9 +134,7 @@ F: / ? O _ o DEL
 .fi
 .SH NOTES
 .SS History
-An
-.B ascii
-manual page appeared in Version 7 of AT&T UNIX.
+/etc/ascii (VII) appears in the UNIX Programmer's Manual.
 .PP
 On older terminals, the underscore code is displayed as a left arrow,
 called backarrow, the caret is displayed as an up-arrow and the vertical
--=20
2.30.2

--zm72khohnkqbpd5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmNMrnEACgkQvP0LAY0m
WPHyvQ/+IvuTOXDpM2O8SKFNm4tG6ZajJcGWOJuK23bpfK8cnGcyQxAHipMTPnxZ
VMXG3MVe4oO3M5OE2k41wkiBK9Utz7O9diJ59xUvbZ1G9ajjH8N32U41lZ7IMTwg
u2IbVsBwhgpOJOMPXJMowhKYuCE5PrfWmIDZFh0VL2YOo1Ke5Sx4gPW9zGfj0S9J
eMl5XpCIeH3gvDca3wSVAB9pBqDyi2/RADeNot8b5kShOaar/vxWWsnwr9YmHNWl
rg1m+RwM8J2AgUuxKPFeqUeCw8w+7rRBpPppY2YCnEgb0EHC2L0ivekNeVuEN32K
4OSzkg5rSvjL0CAiLvKV6H5qruPdjG41JCTy9ohVYNk5+bxUJ+pTtVwxh+5nJKwR
9HrnxuuIb3s+QJqtO7yz7sA9KQX6HJ3E9X4o9b+Q23bMuuccI+bnDpQ0Fv+OZMVx
mUZy21gFt8mZ69kgttMjdcUQTVhDFd+SQ1UU/s01JCVf35GoxXw7WHO724hiQcgx
eyrOsh/mKjzfSONfDVgbZcFWuibCc7H3I1Z3Blc5zrv1u4ZFnFupo1XKS/7VDZSh
x7bIgFlO20OAalAhWaZoMfKV9YWdU68fYuB4L6DZxGja4hB7tDe9xvA+PKxoX4Vw
geANG9AsabyEpMQ5Wq10BmEWn0yXrY2qoynmih5G0E2pq+QECQQ=
=l+Sa
-----END PGP SIGNATURE-----

--zm72khohnkqbpd5b--
