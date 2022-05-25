Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06E0E534434
	for <lists+linux-man@lfdr.de>; Wed, 25 May 2022 21:30:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233879AbiEYTaN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 May 2022 15:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231519AbiEYTaM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 May 2022 15:30:12 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 071BC666A8
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 12:30:07 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 688899E6;
        Wed, 25 May 2022 21:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1653507005;
        bh=CThJnw243FTuI/MWH3J/1we6E8nDVXnCd56CwUSR7GA=;
        h=Date:From:To:Cc:Subject:From;
        b=tbuHknRNSBlYaf94K+HnpOS7ZACX8xN9vEGdK4fVOZEbesN71dnryAUyNCcmtrcPx
         gYuWzpjPcEUxMR+DCb0lZlSypjK0TDVblO+jhFeOMJ9k+kXEMFnoma2SxZgYCsUQOM
         /XuGvucoKAmdp32OrBPpDjQw14D2LZ4eMDwst672CJDs8eu46jtKBI9EuB385SI7jE
         vcjjmxi36hDiMv70+OQBDtw2NELEnvDcA/BeYZmCxxLZczm961/+3kwZ757t4Teky6
         aZLyOBKs+MEEOQmCOCljRDKWQU5Ro+jqe+kPKsCDB0nBPXlkaBI6RSYVkpwT7urPb5
         8M03qm3742IBM2edihbBlvsgDDBkKxuCv9xbycCbrGUYlH2iyobah691D0q3mKAe4H
         zHQ+7brVsEY8BQXiHp8IqILHK177IvMSlnQ/XmQov7QUzkg1JffCeOZ8Df2WNgDqPJ
         QfcelDahy2WYWgxNtjsxCAOyJ3TQDPnosImakws98jrJ7bNanvEHB1KvGtSI0EeTzZ
         qvdkx8yJOljWHl32MNrqPcEqfOvxydRd4+wAG0xnrNSpLo3cAq17g2u4XhDd/BmAlI
         pYDU7irwLKoo/WOkEBTs0aHdIIezXaZfm202SztSoweU6HGRMlMs/9+bEnm3ukvbnd
         Sy8G3ls9k2NTxqUfllvTSnMY=
Date:   Wed, 25 May 2022 21:30:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] execve.2: point to exec(3) early
Message-ID: <20220525193004.ntmvrmvb4msnoscu@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6vpqxbcg7r5m3ohf"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6vpqxbcg7r5m3ohf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Most people actually want exec(3) (or one of its aliases);
the minutiae are a separate, rarer, concern, and execve(2) hijacks
man execve from all the other exec(3) aliases
(similarly to exec(1posix), but it's at least obvious in that case that
 you got the wrong page)

Reported-in: https://twitter.com/NireBryce/status/1529538043039850499
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/execve.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man2/execve.2 b/man2/execve.2
index 0d9582492..28c175132 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -80,6 +80,14 @@ The
 .I envp
 array must be terminated by a NULL pointer.
 .PP
+This manual page describes the Linux system call in detail;
+for an overview of the nomenclature and the many, often preferable,
+standardised variants of this function provided by libc,
+including ones that search the
+.B PATH
+environment variable, see
+.BR exec (3).
+.PP
 The argument vector and environment can be accessed by the
 new program's main function, when it is defined as:
 .PP
--=20
2.30.2

--6vpqxbcg7r5m3ohf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKOg7sACgkQvP0LAY0m
WPEU+A//dGz1NZH8KDJGCDFIrsoIttTeDULYldo9ZmLRg39g4KX8kJ6wY53vQg8Y
FkVP+5Ev4F94AJ+EiRnssS557qxOY1KSbFittDIhJQS0hJzvfLpDrgiZTaPlROTJ
Njy1eWl4Fr6J51l3nF9Nd21wyjH+LZat6PhEuK1hMEyVCwdWX9yTHWc2qAWCUQun
5hnmcMmIbwkE/Ap9M1Qh5eoZ9PKORY8XlHCUykaYegAlQPgc60yXcR7SFzmmSCEw
3+Y0pORLqYNKtQUUBwvDIfL0xkQUmA52VsphPtFYK+drCWov82oYK1Ww4jj03jkn
HrXzm+5RXgLys+o5SFOVpE791wwgnSPJqsEuOLKUG01mBws23iAjUu0z+Xh+l+O/
nxui5RV3GZBfMspI1ik2VB3mVPkMyu9g+wbeWwNBIpheamAfxVd0W9fz2TmfKsof
5lg4H6Pg8fJRMFhujZnSmLXtrDoxi37aJ/TTxAD3cwJHGLcOH50XnSrkVk95Pngx
1CZYwnKft+UFAcfkcWyGeBbEUuC26XgRyi8ab5UM+qYZwJr9LxTkI404d9NM4ZXu
P+kUhFB8nOcoysEAcD2cMiyTU21dXPF4v81KSg5NVR/5HPfulR5IPiOEnUzlPDHr
oGdVxeTHqi8yVHkKN4sAqYMw3QBVEu2BQXcOpJnt1U3TquXsSu0=
=evCC
-----END PGP SIGNATURE-----

--6vpqxbcg7r5m3ohf--
