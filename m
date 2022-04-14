Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27722501D30
	for <lists+linux-man@lfdr.de>; Thu, 14 Apr 2022 23:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346796AbiDNVMc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Apr 2022 17:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234903AbiDNVMb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Apr 2022 17:12:31 -0400
X-Greylist: delayed 370 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 14 Apr 2022 14:10:04 PDT
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9BC30483B1
        for <linux-man@vger.kernel.org>; Thu, 14 Apr 2022 14:10:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2C1DEAB4;
        Thu, 14 Apr 2022 23:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1649970228;
        bh=vSLUqs19Yp/LdyEumn0r6NkwHxa3DeNGJey5RMVWSfc=;
        h=Date:From:To:Cc:Subject:From;
        b=D/jNj6w/Pdh9k3Raclnh7SxfmbmAIeUbctgcuA5rVxG0i2mW79O8BSy0o9OC/tFQ3
         8SQNkZ2SlNv32c0CvxDbGPgSHFnR0XCDNOkfjRtfBYyOmuKHZr2HOsmNlmR5hk+Kic
         3JjgH8CBRU0R2yMJ6ECyaVHn2CilhG6+f4dJp0TOpbqruDBzWditNkmVwXfBrY2q5L
         8KUL3ey5LPQkVgCHLDYR3TR30oTPV4kxx8VfdQhQQilN44SuOeRFd/tI9FrAnPkejL
         7+E4AvYsAEKfM5Sjsx9VaQE4Jjv/YfMoF0K/EYNUW8czjz4eztrFAO4t7SYNLsVQ/x
         fM2XszB110vRw==
Date:   Thu, 14 Apr 2022 23:03:47 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] timerfd_create.2: tfix
Message-ID: <20220414210347.kzf5b6poiwijtaem@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rb57k2hwq3nl2n55"
Content-Disposition: inline
User-Agent: NeoMutt/20220408
X-Spam-Status: No, score=4.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rb57k2hwq3nl2n55
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/timerfd_create.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 65fdfcc45..fc905ee6e 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -471,7 +471,7 @@ is not a valid file descriptor.
 .IR old_value ,
 or
 .I curr_value
-is not valid a pointer.
+is not a valid pointer.
 .TP
 .B EINVAL
 .I fd
--=20
2.30.2

--rb57k2hwq3nl2n55
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmJYjDIACgkQvP0LAY0m
WPHPHBAAhtj4Jy8Hkaf2i8cVAHzsLgcGKQBIMbcQgSqQ6kxiR1y3GlPHaPADHrvI
/XAaPE+UfaoEHlfJ00NHNGBZmUeAW+O4Vi7iKQbcmFj5tKCrkmbmtgCl3+BxJaPa
qxkuJOwb/Kyx6Y1GQJNdoUFcLMI/zT2TQBK2Gt179i0JZ4XC1i00mNohcK70UMrL
rmNaLiopoo6JtovDQ6fs7gEc3SkLb8vNR4UQYyPRDFi8NLq9SoHDS628SKwjNNS2
ZuTLQYMsg6qIaLmKsbBIPTbkrSLn6XBkbUWgJ7fhXxKS/RMoBlt9wMK1SUTE7sbi
vuBwkuzotT2QnI73BGm5nOLtY5Lp09XDJTc0zbnPSA8txZFFj4NYYatOvLLrcJ53
w7OgWLWBHrN7st465lRmVhTIRO/jcdcKGr7rfTbfVCVX9vHIq1nZ9CvmpKJgRy+n
ppgENaSs7jBVzR35++jGgXNiYmoCHWSLI+BjSrCgvrD28CatLiA6CJJJToi7pimV
QM4URsqDt+CfzJTbjB2BhQSiuzDQBD9lqPK8i4Yp3TcloslvN47f2yGGxFbjcEsg
2G2/h+kTx6jShGM+e8kTEy9/LpEyI1fcKpIdScS82wFN5RtUnoD3BqIFHf57xcFo
s7+tTANX3fcIpUYLsWt2647sJY2V866ZzrSygi+TUAzSWP+LUek=
=U2kD
-----END PGP SIGNATURE-----

--rb57k2hwq3nl2n55--
