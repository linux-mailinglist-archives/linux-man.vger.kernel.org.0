Return-Path: <linux-man+bounces-4409-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC9ACBB5D4
	for <lists+linux-man@lfdr.de>; Sun, 14 Dec 2025 02:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 749FD300BBAD
	for <lists+linux-man@lfdr.de>; Sun, 14 Dec 2025 01:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AEEE165F16;
	Sun, 14 Dec 2025 01:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CVIXnaBk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98CD13597B
	for <linux-man@vger.kernel.org>; Sun, 14 Dec 2025 01:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765676281; cv=none; b=nBmkXv/cfqyV0IzVSKslGhNoGHb85uAo5WJYOzCwnppa9nleMxhrqCvjAoTi0kDEMJ37hVZuFd/iGzn89iRQ++hgzd1/zljlYptFmfjLnRf6AZGI31hqntcKFnY2AkRssMjFewR4hCkXxevdXSxg2fH2+4AHgRsD15HhBylnX5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765676281; c=relaxed/simple;
	bh=JByHRi9AJtukSjn4dAMYFYR97TYd2zgi2HdgbA8OG+g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YHiYMIFjkiq+Oe1eRUkP0yORYiIMuLAqMG2PRZlNHV7zqOpz3KFpQxlJMOmflW+EZxu7RlLGkp7rlUs05Z7W7x5JXuc/8joKtaXGOxDGOiS2jlVezasfZqDEym5tDfwNuOEuNivShcN+y48pqfYpGHkqFijeHioOVR31MyQPAYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CVIXnaBk; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-787da30c53dso23040777b3.0
        for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 17:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765676277; x=1766281077; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JByHRi9AJtukSjn4dAMYFYR97TYd2zgi2HdgbA8OG+g=;
        b=CVIXnaBkmy6Eif9mec8WB1eftwL25y0CjLD8kR9iCMp0VT74EbMjk/FrVttjChSBSy
         fJ51N25xWZHZFksJHBz0/NqrUoHi4sz8I3qK2ussUKotytelC5lcXTOyDO4s4SrcUAwa
         YJnAJp5z01S/6BSzNYBEV3aaZ1LkSdW7rrL5PygCvp4kep5bIUMGcVzn4eqyt1Bn4SNp
         oR9mHpzajI6KPm83herq/MR3wPXSlp1JBWLS8GO84coEWv22aK14o13bYkgObwfRWVev
         7ks2llbY7mSyQ26Vir2bvNIsue4wjAz4j6bUOSrtP8jGLwHrUWHQFTHhwLLTYCWsOcOm
         32KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765676277; x=1766281077;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JByHRi9AJtukSjn4dAMYFYR97TYd2zgi2HdgbA8OG+g=;
        b=NvXqvNq11/xk5Pg4W8AgkgV+uXi5L+8xwyMjkGJdQHxAcjBfnlGbsrj2WyRGijexnv
         0WLkRzC+8QMMlY2xs2gqqFWYEFTUsrPWuAcRVTzWj9f4VmoLMBq1KXTuzC4Z9OVm7WQY
         uNRpbMU4Oh2GzLRTQHwpqw/J52oegYbI3D1ws9+MbnEYwjLcNypJLCyacClCuW3Ajik9
         PlN/+NgmWGGsd6aqdFgH+NeJNkXiQZQGcbPJ4HI5vbxuvIKLb7tpUTASxjVMigaKt29v
         mVdieuZz56Zs9hoUtl9uPptNP7atyMaMJZZ/1HkMhltZbbpa0i99fCLUJ7Q2wbs96gdn
         kLJA==
X-Gm-Message-State: AOJu0YxXpARdFFodWmP9zPLvFVPtqOxHQopNcV8AGjL5nJYHsyJCupfb
	m+QO0rPlojk2AexJ+8KRNx/+VwKftgpNT2OJdvh8OJXXQOskIyo9YDhJdiktsg==
X-Gm-Gg: AY/fxX4QryagjkLRYHd/DfHqYVLPh/svgQB3bMlwZTZNxWAXd4X02ehpXpq0soVX/6w
	M7Ah+RSle39kZb9uX21GuwY7Dmd4pZK1Mgv8hGpZxP2IitrUvas1Zsc6RbClVQkicc2dLA3OvM4
	602yuUNEj/TK6tIS8Ob8gJ0Sq1ilXrkjEYsM8Frtb7sazO4y8kwO15GpE60OhrHidIey7l8pZgH
	XQd4hU21Ja041MMMPaZO1M5ySQKeOg3mcXMhvn8TtcW2CJUmdCKNvntN1Zx0XofNDugyIkZdcJ5
	cVueY6wH7jrPNxGuqmyPvYraUjbJIxGIiCiKc18JzR8oz6Wru3VRZCiC58+7hdKB/Fi6M1xvrBV
	SqYiUjsKgb/g0E4zSJXJDNgTgqFO/LFWjKeiX49WX0tcysCH9b4MYKcOrVdPZOOd4QVjk7EFZUr
	xu
X-Google-Smtp-Source: AGHT+IH6g9sUb+ab2Lp/qs3cmb/cc0qU46kfTW+xAOiQlv8KN0fLPnypzaLZhAuUazKDroSCoZyhmw==
X-Received: by 2002:a05:690c:dd3:b0:788:1cde:cad0 with SMTP id 00721157ae682-78e66ce46bbmr64929487b3.2.1765676277372;
        Sat, 13 Dec 2025 17:37:57 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78e74a4327dsm13320507b3.54.2025.12.13.17.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 17:37:56 -0800 (PST)
Date: Sat, 13 Dec 2025 19:37:54 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <20251214013754.hvrmeblfbr3cb4he@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mv6ynguhivbdkh64"
Content-Disposition: inline


--mv6ynguhivbdkh64
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v2] man/man3/getopt_long.3: Assist users
MIME-Version: 1.0

Throw a bone to users of this function who need to report (in a
diagnostic message, for instance) the identity of an invalid long option
name.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/getopt_long.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man3/getopt_long.3 b/man/man3/getopt_long.3
index 73e8f3e6f..a464349fe 100644
--- a/man/man3/getopt_long.3
+++ b/man/man3/getopt_long.3
@@ -102,6 +102,12 @@ .SH DESCRIPTION
 is not NULL, it
 points to a variable which is set to the index of the long option relative=
 to
 .IR longopts .
+.P
+Its analogue to
+.BR getopt (3)'s
+.I optopt
+is
+.RI \[lq] "argv[(optind \- 1)]" \[rq].
 .SH RETURN VALUE
 See
 .BR getopt (3).
--=20
2.30.2

--mv6ynguhivbdkh64
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmk+FOsACgkQ0Z6cfXEm
bc4a7xAAorGhU+XATImgWLMI9buZHohYSr9sQ5VGak93i3s3Z0TdoNBt+UzIyEme
zc+nTfBiTZKQFGnEoS+Q/X8FehABeQOx4IotF2ff+DpZzDIzS7TOMnCoUOb4Jf6d
05KHVi2VBhly+IE+NJ84I7OShL1YnzB5jrP5Tatnlc5SufqALwGY+PvucxWfGCFz
A/NXl+m6LPK9P8lXDDF3RqJ0RMhjYiu+0RmwJr4SxPJN5q5cAX7PqVzSDc5tu2X0
yIWuJRQ35kgsr0xIh8v3C7IHHqv3f96eDAUFlmePXk7KCi7Yb8tn5Em1ntPJ1u6d
3b2wGzXDsa2YJBMD6lZxBDt9pjhai5qsQb8ljBE8Cqrsw0h7xyFt2xfOfcM4kB5Y
Ynj4/PUV3X+UHpSQLS0lrzrzRSgMNwf3Bo3F4IbZ2Ph/lcEU10hUwV+qFxxI04Xb
8ZkJGBscVDlOB7ekiAhTFy7zo0UUuvs8F4c/Qg4nMSxBASNYAghImmiyoTtB5brY
nAKPAEtA/GL97cf100TrKSOs6NnuPjF/b+QrJn6381J2qIC6P+pJj4poqw1/Td/J
kjFX6MGW84y5n/w1OU25g6N2CbsuQmzKpzEKzL/pVpSke1BHDT/YpJTnijN2DW2S
fhL0WVgA/yKGFdae6UCmnIUG2VBSWBuNJAIo4uOiQT1c+glpYek=
=obYf
-----END PGP SIGNATURE-----

--mv6ynguhivbdkh64--

