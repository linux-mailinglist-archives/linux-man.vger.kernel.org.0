Return-Path: <linux-man+bounces-371-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D482EFD4
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 14:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B34031F24071
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 13:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCA71BDC3;
	Tue, 16 Jan 2024 13:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YJFbVBD+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014CF1BC5C
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 13:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-21085f78398so112317fac.1
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 05:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705412412; x=1706017212; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CoEYslL8hkxiO2CMWeVhau19T6cmTOZwA608iJ+BE/s=;
        b=YJFbVBD+jnw1PeY7ClCIGBJwBk7Rj5JtgfQMh8ADS7P74KgRK9u4urbdBE1jwALaRK
         ISc4mJqRgQlZ7wrIKzIbTaLk+W/8rDIVPMrKJD1lNPo2S38v+o69CRF7QhXHzWd1zzjL
         3L5ucJsxMkHWsEWfiiIqExjkjjAGuqU0QJ2hMZ4Mdwi00CCJuso8Kp7tdVNZ+Y1I7ANc
         0RDL2xV9Tjkgb7drmXArym1RAZ+0kalc2wgc9XW7w9OiUPAIrDWjfY3AC6QzexZ2caYu
         1YiaO5Q52IKQrcqkcOEuTz4XxB1Ocpq73pRVtiSMycxQSaRZh2ku88Hh0tdBEQi3K3JR
         QWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705412412; x=1706017212;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CoEYslL8hkxiO2CMWeVhau19T6cmTOZwA608iJ+BE/s=;
        b=czBVS0kfyJfFqxqkVMTOYb8z5mVg0G2ALNBSIDyKz68VKeE4D6x7GDeKzRRXDC4HKC
         cDpgIhCeF35b3Wju/b42Q33SBZzFw5egPsFgmaR4RQtTrn8ormH8/HcBoShH6UfND7VM
         M69BMi2W5V39Ms03LbYDvJtlrguc2npcKIUmJZ4PuB//lcEfTLsl1N+3L2unw712Xg08
         tqhxh7fR+eUTMf5HSG+2DjtnpyXZGNrptoiLGg/+BNRNPtx04uu7cha8Bv6bTIz/tDwe
         fI4wzFmD8K6dHOGFtZ4skwPUVNnYvISsbrcMZ+91ZtFyzgTwGx67kfVTtehd9MxjToDi
         mCAw==
X-Gm-Message-State: AOJu0Yyc9ZaPQmI7FRLgJ+HMWHxRhjua36N/OU4YFQ7di3ujhnilFca8
	tMqou9ck2tsk7tSaFb0ghTk+G5yy0RY=
X-Google-Smtp-Source: AGHT+IGx6LDfThnw0/aAYpr2aGP0koBwYi9jag65VqUDfIzL04ONRNsSarKKnAWBthxnr+8MQnOPAQ==
X-Received: by 2002:a05:6870:e2cd:b0:203:a854:cbab with SMTP id w13-20020a056870e2cd00b00203a854cbabmr10228920oad.111.1705412412023;
        Tue, 16 Jan 2024 05:40:12 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id cn14-20020a056808350e00b003bbc550c0cbsm1656539oib.28.2024.01.16.05.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 05:40:11 -0800 (PST)
Date: Tue, 16 Jan 2024 07:40:09 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/4] man2/open.2: ffix
Message-ID: <20240116134009.3hufaahoy3kk4os6@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y3l7s5b62gsfeza7"
Content-Disposition: inline


--y3l7s5b62gsfeza7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Migrate man page cross reference in non-filled context to font
alternation macro.  This is to prepare it for `MR` migration.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/open.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index f37ddbed0..42716ed8e 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -46,7 +46,9 @@ .SH SYNOPSIS
 .BI "int openat(int " dirfd ", const char *" pathname ", int " flags ", ..=
=2E"
 .BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
 .P
-/* Documented separately, in \fBopenat2\fP(2): */
+/* Documented separately, in \c
+.BR openat2 :\c
+\& */
 .BI "int openat2(int " dirfd ", const char *" pathname ,
 .BI "           const struct open_how *" how ", size_t " size );
 .fi
--=20
2.30.2


--y3l7s5b62gsfeza7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmhzkACgkQ0Z6cfXEm
bc4caQ/9FmbLMk9RJHDb+9DC6dfPmi1LYSVIK7kap6IiMy1WVrZUO28CznE0N71B
FEBRBnV8jLh/5iRNXfo773FxF99afSiruyzbHS5d21XxgSONxHxBhp7fzfjTh9J6
Vj7i/qbPVEnF5ybu7Mx9y8Vmkwv2UxA6F3yfENt8I1qWD/N1FHmhGMk6VWKH/yCZ
1h5L/+asEKxvPaEHlBs/gpVFvNmE5TfjafFR59OhFLfnM0XzxtDIUOd5TOMALSlT
rRdR4Gh4T27pqk38OlVc7a6mMidLkkW+eUk0TqgXgcFUQZfA7RSmV02ywGHRhAQ/
I8RGrXeRfDadmLUx7ARPsk8XgQJs/4EgdpTput/p+7xE+ojECavGcStDL0KqMKeV
fFaB/g6NS3fJBmXzZbO3XSKG7MI0fzkAEjZfDp1VIyYYQd/nMlw4bNKbpq+c+gVQ
jIziK5l+kTynjmwQ276QSgC+w5DHma/IOkYwXQ4P+8RE0iI2kj21WKCGQZSjZRYj
XcHnTC8lIJYmRHDiCm0eb8Br+jgNbLeUE5rWl5OS13lVNYSlhTYgr4up69VsYS8e
n3Oyl/xSDesajqwXxqyzkksURnLopTf5HxnLu+esK+Al2cfIgvlcb8t2kRPb+z3N
jaaiDBk/gE/7a5+RWlXXF7c7defb9KQc2XmM6PYrYfXTh+gWLrY=
=zRuy
-----END PGP SIGNATURE-----

--y3l7s5b62gsfeza7--

