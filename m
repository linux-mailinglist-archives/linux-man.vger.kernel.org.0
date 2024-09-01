Return-Path: <linux-man+bounces-1750-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CF3967461
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09B80281D77
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3257F1E89C;
	Sun,  1 Sep 2024 03:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hSZ8jGHe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B06533D8
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161098; cv=none; b=b/I8QTE87zx2dGuPdpQX8jdZle8KIi8sRprHdMz86ljr5dCAsZC6M7dJexZ6CUAwFtphSzikp5otaLSwbO/tGCglYCnyan+xNGOEOc3R3MYrRcyH0wMlVhj6slhWGVTBvxmPtinYaSuuv3NzYuM65bq7isn6il8JHswnEZFaVYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161098; c=relaxed/simple;
	bh=URq2bugwRsfUQFwbuopjjpZ9dq4QdkVVdYJhcJNTTu4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rUL+aB6pqY+G+GYibq2jQozK7jhMhEuspZGI4gNmyB5BugTclk4lRGHFC7dppT4FJI47oqqYc+PWNCYFzQNtyEPVnwt7mnDgspNXkh9hdNN8kItJEknJutd8trthgar6Ws3cYRc+ucPcYksBngStKtvWPV+PBJdx0zvGrQghXJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hSZ8jGHe; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-70f44b88bf0so1941688a34.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161095; x=1725765895; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3N13S7bdjLFDtH6nb4bM87SZgrz/3cfaHhhg//cvdd4=;
        b=hSZ8jGHey5XVBWvonIxZH9P0fOvkJg7oV8cpRA5egPVVnJ7M9gB0PHGBBB8yGhH5d9
         27vn6ZbwIavkAWwsyIxZg6ouzV8jPuob+L4GLMHm5GlVJPyuZQWWBa1eoB7SKOUUkq1i
         OeTCDzcKEU+erfZKy3GAKb7EqD2JF6dCW+BJZG12kIF7H21l9DJwkCiSeIeJi55na064
         Wk5kcFQlh4yy5TzYviuGlxFxAePuBW3dUAoarECUbNNTpf2v/rZ3W4+V9UOGZa7uVA2c
         X7i3kQQDDoFQv4adQcsDM48nyXTJzwox/PUThfur0W/TZQf6xlFxJ9hG3UScvfGWrvCV
         ULZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161095; x=1725765895;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3N13S7bdjLFDtH6nb4bM87SZgrz/3cfaHhhg//cvdd4=;
        b=FqYpXIrCSKsSLUSQaYdQq8w3Rnar7qtvqhXVizP73PuHOp6IO6S9wZUaLBN9izpTRl
         kF7/w4iHdshGBXaCaK75UPbLwWd+M5AVO/lxfwBknTEoTCs7ray2BjdTz5Y7pBTPECZ+
         fAdp144JgZlI9DLn0hysmpu2YpfeuRuyZEdL4bwPU/u5XfytWviteZ2m/awllY9T/1YR
         Vpm3gJeJDgkEO7MjM/Oy71kljnEFz+feaP008zBadiYxrjBzHCvbY4PV3DJCtG1XTVGB
         SdYX5GVqVYVTRRGcPqI5rh5F1ZHvikzqfGMFWM8YQy0zFyrEEceBuqBLz38U7B3y425Y
         4LOw==
X-Gm-Message-State: AOJu0Yzd+Q0BmcdVyINdJoOFCpekyS4BCDFu6Kf9czL77Mflg+geWREJ
	HUdbKNxMDn1ye/tWK9R8Pvr7cNm/Z2gRaUb50Cp8BCvH5ex7FbUNHM5COw==
X-Google-Smtp-Source: AGHT+IEUwjH8Q0PvulhIVlcA0FQob+4Vo82pBNaV+9g1Wp5tJ6Y3d16FKfCLxCNWnzev47LG3eR+NQ==
X-Received: by 2002:a05:6830:388d:b0:70f:50bf:29d with SMTP id 46e09a7af769-70f67fa2c28mr2324942a34.16.1725161095294;
        Sat, 31 Aug 2024 20:24:55 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f6715c9easm1339325a34.31.2024.08.31.20.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:24:54 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:24:53 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 01/10] namespaces.7: ffix
Message-ID: <20240901032453.3dmhjz7urk2saizq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lfutk76sgfimew7r"
Content-Disposition: inline


--lfutk76sgfimew7r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 01/10] namespaces.7: ffix
MIME-Version: 1.0

Put a paragraph break above the table to ensure separation from the
preceding paragraph with the man(7) macros from groff >=3D 1.23 and
forthcoming mandoc(1) release.

See <https://cvsweb.bsd.lv/mandoc/man_term.c?rev=3D1.241\
&content-type=3Dtext/x-cvsweb-markup>.

Draw a horizontal rule under the column headings.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man7/namespaces.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
index cf3436f09..5d19d004c 100644
--- a/man/man7/namespaces.7
+++ b/man/man7/namespaces.7
@@ -29,10 +29,12 @@ .SS Namespace types
 on the namespace type.
 The last column is a summary of the resources that are isolated by
 the namespace type.
+.P
 .TS
 lB lB lB      lB
 l  lB lw(21n) lx.
 Namespace	Flag	Page	Isolates
+_
 Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
 Cgroup root directory
 T}
--=20
2.30.2


--lfutk76sgfimew7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3nsACgkQ0Z6cfXEm
bc4Ftw//fEpyDt5CXaBUIsVAcIUPHcFNnlvPkRFg9lAArUDxALSe+Pzo2F2lTa2n
f1krTneXu6lGHlgNFM6/ITKMwnz+NxKjRImS6BDJ2T5t6fBqLVf/IsF9FlxAI1AL
J9905yG/zf/33mkLMDPGU24b7Ulyxw21oH3f/+LsFjGkGSn/1JGkRw5p1iN01n8G
IRfQb6L5UggUcev6vertrf27umKRDsMpTMWZV6w8qWlTCRfJ7un/fA4u9Oy8DYm8
wxiTtxJtToib2TJyidQ0OwUuxYwqPmbwMiqop5Tktwpoj2rEIuToaxbOaMiIPWM0
vaa2fqXCd7fwsZ2xRRfYTu1uMnIzARhDWvJwm4tutDj4Tfg1mrPjwcndWltwG5Ss
P/NDZr8JLzXfvaV/vhVNVWqmynGLbVp2+sIotSOVB4moaIqUohmObq2sVBgZvZyF
8HwavIxdGF/tgC/mFu/WpMzhqMxmeO5/2EXTpnbxHQFONTV+679NTE6PhkCHpDfE
l1Q+4FV6N9KF6HFjULktrIeSEpxOm90/g9u9F+2j01pebod2Y2aBA+RwrmCThhAN
rpCZ4TqeOUv6lREoaK5fY+mAMHWV4gD9YgSIyTBpcmbvnuPFptxp04sbYCKb3gy8
LsuK5A3V+u9ZX0idPj9g8YgmVz98LTwVKmdUQVPWvB/CP4uGFwY=
=JyYL
-----END PGP SIGNATURE-----

--lfutk76sgfimew7r--

