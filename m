Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5841B660D6A
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:54:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231737AbjAGJyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:54:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232070AbjAGJyQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:16 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B23CF7DE38
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:15 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id n8so3074802oih.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctAoaoCztJIZ50sh7xI/uily7sFMrDNiVCLXY26i+w4=;
        b=U+QW30dFUaA4wThFlU1N3uvzTtM/uW8FNXrO7+EZGFJovg3f6ocjb1EVTYV0kj9Qnh
         D1Jc/6JxTLFt63vsXaea34rzXB6kB6ypik424F+IgWm06fdit4y2vf2ijFuh0NyR07q4
         Y94IMnTkzOybY8XIJiDhTCZ54y8pC81N+ngARFf2U4d9whRAYhgWCuLTm5pMNBxzgaH2
         8Lg9ZKNz6Z+KVQDB4ZE1bzNFwTtd6vc4YxVZhNNUFyqkiUkGkHzD3Fgj5hJc5N0qR5vL
         J41mnjpU/asVXXA73+6NlnTVofMtj6KeGfzeB6qiTnl7ti53BPVJdycM00Lrt5bcLjFn
         lv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctAoaoCztJIZ50sh7xI/uily7sFMrDNiVCLXY26i+w4=;
        b=1T1959O2CAdtQ43zw4jXTiVrvduOEB7G6O0DTu/oTdHNUk/xU33Z4EBHymbJbpekqW
         jY/gLjTIMO/6MxexVFl8u0jjiRYHXWzOSIklcgZ6DKzVZerHFronxPEn75haGMccGMep
         HiivorOMelXZQupuPZqPdigOkfaXrloR1xb4dYB4klFgZtPUUJwyIQ6KMe3vL8g6n4dN
         2bsYL8H10OX0p58wHTCJr1eErHUth5VrUY8GPbrH9vBsxVu8Vtingt1lbc7TYBn4pR1g
         XW+8xk9Xciu4iOY6depYdbU0SuvGEMVxO7XM7Z/nGoJE5LTRXyxnZbd8lbvPjJdbIRqE
         bRMA==
X-Gm-Message-State: AFqh2kr8RrWyxBhyBLYpKE3Gb8x3+arEW/VSTu6fBjvm0DnSebHbCHBC
        oaWOAf1EPZnPWBB0e24MKXY=
X-Google-Smtp-Source: AMrXdXsC5kELGEklCPwy/f/XoOIXpg2I0d3ecPrYSt76jZkupMNCrQb+Gxa1YKYfE9KuF8ObK/OhPw==
X-Received: by 2002:aca:905:0:b0:355:1de9:3929 with SMTP id 5-20020aca0905000000b003551de93929mr29336873oij.47.1673085255056;
        Sat, 07 Jan 2023 01:54:15 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x63-20020acae042000000b0035418324b78sm1337946oig.11.2023.01.07.01.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:14 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:13 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 01/10] ldconfig.8: Drop discussion of libc4,5 support.
Message-ID: <20230107095413.iz7jsiynquonpsvi@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yupysfsrjqlhy4n5"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yupysfsrjqlhy4n5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Drop multiple paragraphs discussing libc4 and libc5 shared library
support.  It was removed upstream in July; annotate commit.
---
 man8/ldconfig.8 | 37 +++----------------------------------
 1 file changed, 3 insertions(+), 34 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index de2b7a5c3..36b891dab 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -57,40 +57,9 @@ or
 .B \%ldconfig
 checks the header and filenames of the libraries it encounters when
 determining which versions should have their links updated.
-.PP
-.B \%ldconfig
-will attempt to deduce the type of ELF libraries
-(i.e.,
-libc5 or libc6/glibc)
-based on what C libraries,
-if any,
-the library was linked against.
-.\" The following sentence looks suspect
-.\" (perhaps historical cruft) -- MTK, Jul 2005
-.\" Therefore, when making dynamic libraries,
-.\" it is wise to explicitly link against libc (use \-lc).
-.PP
-Some existing libraries do not contain enough information
-to allow the deduction of their type.
-Therefore,
-the
-.I /etc/ld.so.conf
-file format allows the specification of an expected type.
-This is used
-.I only
-for those ELF libraries which we can not work out.
-The format
-is "dirname=3DTYPE",
-where TYPE can be libc4,
-libc5,
-or libc6.
-(This syntax also works on the command line.)
-Spaces are
-.I not
-allowed.
-Also see the
-.B \-p
-option.
+.\" Support for libc4 and libc5 dropped in
+.\" 8ee878592c4a642937152c8308b8faef86bcfc40 (2022-07-14) as "obsolete
+.\" for over twenty years".
 .B \%ldconfig
 should normally be run by the superuser as it may require write
 permission on some root owned directories and files.
--=20
2.30.2


--yupysfsrjqlhy4n5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QUUACgkQ0Z6cfXEm
bc564g/+MKeut9Xo7E01sgRroYdYrJqfJ/6uGmf5K62qJRlBAQHBTsGeMPXjLEMI
VysqOhGZlAhZRjygCVirt7oJuQvKMDdIvrTwqWIvcNSCT1kyDYThqm2MMSyx6cZg
qvTPuzbr9dW8n23En6SttcUwvasgN5ScqzxX9XeGA4KklAEOwxruobgnn0EbFimo
FOEx/cSQ970TjtbF59hfWjhw8YA/1LcfW/SC2FrHXhV/k4u6O7IJjEvqRgXL6UJR
vtOro6qTVl/CzchnYr/wyJMVsyi64jpwFGIAsMW7MmDPzH7TLGLxQ4Vong6UxPh/
WCw/Q18oBrPFX5CyMhHfRFMD1hnUCOXzWqWJ0DdEXwnpqf/xlruOokMw5Il/7ZZ4
yw6xp9VygZUJCd2pWcTZiCAEne3Jse6kF2nxk4Wp53kz/SxGXrJaClQyWdWbJen1
7mQzoLQZwBoEpcS95MEdF1NhyLvyf934ctOmxoXfwfa87brZFWdD6dYFTSXLh2T3
dbdagGP7TStf/W4RHUoBfstj+dVtoVO6UYJO1xEUSmHnIqFH5+W/+/zHPzUK5Rd+
d3qpyVnMKVJnf63tXc6knM96ElZwiGtis8wOJBtIdM6YffvDoRl1/B51lrrxE+m/
rKN0yhmfJehOQz85MKfdRzmuQypkMOiC/VJmk/zJW9Np6U0WG5E=
=gfB0
-----END PGP SIGNATURE-----

--yupysfsrjqlhy4n5--
