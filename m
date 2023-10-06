Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8F07BB1A7
	for <lists+linux-man@lfdr.de>; Fri,  6 Oct 2023 08:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbjJFGnC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Oct 2023 02:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230224AbjJFGnA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Oct 2023 02:43:00 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2934101
        for <linux-man@vger.kernel.org>; Thu,  5 Oct 2023 23:42:58 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1dcfb2a3282so1166485fac.2
        for <linux-man@vger.kernel.org>; Thu, 05 Oct 2023 23:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696574578; x=1697179378; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yFPJXkFG67eq49LbjH5k0DstGpwupS+vb90xGv5jk6I=;
        b=GTS5ifU3OnbK3jfzFEYQF1j19vUoVYRX/xe/ok3QhKKybg5pWiZHLGZT/Sdr6VS/pJ
         xVy8fH1JPdvRf/iwfE03MfHpS7Gdt7IlhUKO4p6lEnT8PtInRVQ6OS2fmutu3VrmttR3
         H/oLw9C2WJ4o9qRLvdxgu5W9WwdymuZstzy35u7I007/Q/tOwkKMdECD/rbxk6X9wo4Y
         J/VXvCoLMbH29jIsLmt01zkDLwd84stkyApGpe3Z0kQaMED4Zoi9W/O/0Ju/WE91jQxD
         2onnjnYOH9LrjSUkZ7Fw4UJrCyrZioLPabdDN4K4YpFutVM9ksR0JrD2nNptL64tz5Mj
         7t6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696574578; x=1697179378;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yFPJXkFG67eq49LbjH5k0DstGpwupS+vb90xGv5jk6I=;
        b=S13yCaZHXut6dN6356OJoEUaXP6DtYcANf5pvTnkfxH5b4OA6VpY/087m9lImInV0S
         H0jjWL+Xo8mI+ACFlN8AjHfUV9NO86A+zeu24b5Cz+V1ywUEmrRP37TlEttwu1wmyD/v
         kYOHuOTdxLM85h3u3WxVse7hkZx217uapdmxqPeFtTOvFTX6054awVsDnpdoXnfDUjkt
         dzFw9FZTRRwU8rNph9bQry+kBodLw7HhBy7UGVkrAmSzYviqT0z062O6iA/8kaZUJm/B
         B+nP3Ej+wCuqq0zkeweBrQ7azq4BX6UEAhAJeT+KpzBfPuUZniJ77wGLuBf+pWZ6KStR
         GkyQ==
X-Gm-Message-State: AOJu0YyM9HyDAvBm34fDduK9uEP3ZO1FdpYKPiLLewSRpKSmDUIz/yIQ
        WmP156RiNgjp444cnMsEZ/nO9auM7Dc=
X-Google-Smtp-Source: AGHT+IFCpTdK/LqmkiR94ymD6kcsJC12KGLbH2piRiilZFNsypNmUdhH4SueI04NiOYkn40gE0xdEg==
X-Received: by 2002:a05:6870:2b0f:b0:1e1:fe79:6831 with SMTP id ld15-20020a0568702b0f00b001e1fe796831mr6807655oab.57.1696574578042;
        Thu, 05 Oct 2023 23:42:58 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s10-20020a056870628a00b001e12f685592sm642152oan.13.2023.10.05.23.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 23:42:57 -0700 (PDT)
Date:   Fri, 6 Oct 2023 01:42:54 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man2/userfaultfd.2: ffix
Message-ID: <20231006064254.bsladknplzq5rurq@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="26s3dugmnondnmwu"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--26s3dugmnondnmwu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man2/userfaultfd.2 | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index b2b79f61d..97f13cce9 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -222,12 +222,11 @@ .SS Userfaultfd operation
 a page fault occurring in the requested memory range, and satisfying
 the mode defined at the registration time, will be forwarded by the kernel=
 to
 the user-space application.
-The application can then use various (e.g.
-.B UFFDIO_COPY ,
-.B UFFDIO_ZEROPAGE ,
+The application can then use various (e.g.,
+.BR UFFDIO_COPY ,
+.BR UFFDIO_ZEROPAGE ,
 or
-.B UFFDIO_CONTINUE
-)
+.BR UFFDIO_CONTINUE )
 .BR ioctl (2)
 operations to resolve the page fault.
 .PP
--=20
2.30.2

--26s3dugmnondnmwu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmUfrGcACgkQ0Z6cfXEm
bc6H+w/8CQRiFbF6IpttTPd+IRY2XI05UEGoP8qHOJTRRIZUpKeZN4/Ra9T8aZ3O
llSq10uKaZPQDCMqMK2SP8HLNI66z9LKi78PInm4wA7/JG7YSiMsqo1XVFUWDS6h
4d4swSyxvA65N4Xv63HIjjMe2UJ3zk1pYH8RbfAhutK9pRnbi9+NP66dvOnWx3Rh
MFdYGe770Kw48cbbLc83IWl9tYKvJ5Pls42tgvemplz48seArnbD+7EcliaUB/2R
4hyEk/WiFcHY06pHtatWS2VQyZxSs4me+cVYVxwere2B6U6l/fQDfgIwPutwEl6E
EwhSm9QEDOS75vuR9EdkTPwiEb+d20GVIF2tFVxKAebovPHSSAGQFU7L6Zesj2v2
NbccfutKo4rg1nypNed/wKIuj3YM1Vz1buRtk0XGPTq4P5zMcsOOBs4SHGilR6dD
qPfzi0H/63IDDGrUMUSFsOKctl8T5F2QNzDOuxwo9g8y8Nega1yxHG4pXk/+DNTm
BZCTcwHUaFSPQhcSz6n0jssmW6SXdzLZzjLh+BkH7uq8sdieK+AvuQxAhcLOqL5d
EOhgjz4eb2VCeHs1wwD/IpEyAhkNXrwHf9EnG5lMzrVwky8VziMakEuMK8xkjuli
DkJ3nt44vVcGmo4l4DhVKe7eXvHFmBx0SQLRZ+iM9g/MplB7Yug=
=6xn3
-----END PGP SIGNATURE-----

--26s3dugmnondnmwu--
