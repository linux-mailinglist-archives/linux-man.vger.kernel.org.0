Return-Path: <linux-man+bounces-370-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F48782EFD3
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 14:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3359285CED
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 13:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D3B1BC5F;
	Tue, 16 Jan 2024 13:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OVzk/NKI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62DF1BC5C
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 13:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-595ac2b6c59so5740496eaf.2
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 05:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705412399; x=1706017199; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aaAC1OHlOQl12ILX2Z3e0O9bJ+SszcmGPeXJIEVTGp8=;
        b=OVzk/NKI4cKHFqtaC7PM1bKbqmM9otWBDaoQ0qidFhiOsaoTz95JBBN4b3FkOxpHp3
         N/0xF3nENA9rS46+3pR1HoNPHxQeiUuXDm8mzDRhJ4jClS1oefdGPG/FQF0u3qU0tkvz
         Vwcfci45L2MFtrXpKdR5WmFfhFvgEJZw6uFpIR+MLhpTZQ9WS6XoR9si+2IRDyxGXtGu
         tCBNWzHqH2aErHTnDpzstzggUuye4JU7dfOWfQVxnpdSQGNPveH1TOUVqEvglG87ZSNd
         Z0PHNj/eWSJtPmL/0yvEhQGJXznADTa/4sh8qBUDf6vwlAcaDoz6ZmvHhICRJkO0hXxX
         ADaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705412399; x=1706017199;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aaAC1OHlOQl12ILX2Z3e0O9bJ+SszcmGPeXJIEVTGp8=;
        b=dhDeq6UkJDdtABf15ZK8lpjB9H90zWOtgS1JSuz6l5DCG1erc0iTjuunCl3KrjEcwz
         Hl/MXX4aiFzqoVGUMvus+DRLx8a0GoVePJ3kKUqZovrMNhzmEEkcy15uLhpq5BB2PNZL
         OWSzye0RKoV5v7dkl0+lfO35uCHtPS0K4AZFkcGhCOY2cSuAa+QAdzNeuJ96ACBJOFoq
         E7QthJKG0R2dxhJ/pHUUGFBdpRf2lBezP7U4BMpD6w6cS34aQjquNoo+Hd3H7j7u/UtL
         w/KjcaZ+Xkrllj8Et1Fod6RGyu8XWI6cD1HvrSv+sNeXP6/AFgdue327A7E6KgcGCezH
         v5RQ==
X-Gm-Message-State: AOJu0Yw2gy/EW1kpqTDURrol4IQV6NeBVQSpaUgdTfIh19dD8uYR8iWj
	caW2lWHr1+6GBlFJOyTpArr/Uip4BKc=
X-Google-Smtp-Source: AGHT+IGt/VcXChifa8T6JiCzSqNWiIi3+Mue70cuOUM8Y0ojWZMp9R3GZFPi/jw3pxPCw6C0x1ZM8g==
X-Received: by 2002:a4a:5594:0:b0:596:248b:a77 with SMTP id e142-20020a4a5594000000b00596248b0a77mr4053517oob.2.1705412399686;
        Tue, 16 Jan 2024 05:39:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g66-20020a4a5b45000000b005985806a01esm2142666oob.25.2024.01.16.05.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 05:39:59 -0800 (PST)
Date: Tue, 16 Jan 2024 07:39:57 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/4] man2/mremap.2: wfix
Message-ID: <20240116133957.pwcuebfc2bt4zvcs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ijv2q2q5way3hr5z"
Content-Disposition: inline


--ijv2q2q5way3hr5z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Recast to use language paralleling that of the MREMAP_DONTUNMAP
discussion elsewhere in the page.  Spotted these (excessively?)
abbreviated cross references while preparing for the `MR` man(7) macro
migration.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/mremap.2 | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/man2/mremap.2 b/man2/mremap.2
index e4dd9d0ce..336aae676 100644
--- a/man2/mremap.2
+++ b/man2/mremap.2
@@ -43,9 +43,11 @@ .SH DESCRIPTION
 below.
 .P
 If the value of \fIold_size\fP is zero, and \fIold_address\fP refers to
-a shareable mapping (see
-.BR mmap (2)
-.BR MAP_SHARED ),
+a shareable mapping
+(see the description of
+.B MAP_SHARED
+in
+.BR mmap (2)),
 then
 .BR mremap ()
 will create a new mapping of the same pages.
@@ -321,7 +323,10 @@ .SH BUGS
 was zero and the mapping referred to by
 .I old_address
 was a private mapping
-.RB ( mmap "(2) " MAP_PRIVATE ),
+(see the description of
+.B MAP_PRIVATE
+in
+.BR mmap (2)),
 .BR mremap ()
 created a new private mapping unrelated to the original mapping.
 This behavior was unintended
--=20
2.30.2


--ijv2q2q5way3hr5z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmhy0ACgkQ0Z6cfXEm
bc5ZxhAAhUw6TQHd+O9R27PV3UGRt3KO6+fP3/dNilmEY88ugxzE2s9FaqfnKUy7
/LpirfbCPxDfk7sys52jJmCHGQbGxgPtXXistmqZQ1MYaVmmxE2JsRYNsHSl+0zF
c5VKDhpeqhSw+vydFzF2VPvvKM4ZbARq8jTjgB8K2FFkUE+dqa6HnHxglEokS0dn
nRxy0IUYwmW6tcGFoP8vp8R0Xsj6FK2cFgMdw7qQZgaZdrFV6JViB3XuHC97eNnk
sqQYWPcHmM2GWh5Jxzn9dOPTX20HaoCc5NgcIFYQIriaHKPfeXlFkNEkxV/rfJqT
6IUw+cli0c8cJSSrgLS/3croOHh+Rj5OcMyep1IE/txfiPtPRsOgyfadTDa5CDPr
8t2CS/GMfUBcUFL2YpH46Hd3EhL3s3PaBVPajQl6D2TqrbeMxk/yLqxbQCUSvnpe
Z1P+t9NxR0eIWGRhWHQbzyt9LAzBu5QoFp954BOuB8HxS/r9cSXGgS/BF/IjaYu+
IyMo5yHla4H0Q9jfYW4SHHfIQru+ngxm+exygE8qLSo1Klb58eD5ywuaJyKSfTaC
PQNYd8/o7AhFvbT+cerFp61Is7bpCrQF03qVILP5DdFMzu4aqFvoI1ay/4Jm9wtR
/hVJQQHp3I/PfyVgyyCgwG76skwOmKVNYtBWOc9US/NgPmGUiyQ=
=l9cN
-----END PGP SIGNATURE-----

--ijv2q2q5way3hr5z--

