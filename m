Return-Path: <linux-man+bounces-3196-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A29AE1CF7
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 16:00:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A0C6169767
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 14:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F325A28A418;
	Fri, 20 Jun 2025 14:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ciZSaw+O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0EA28B7C6
	for <linux-man@vger.kernel.org>; Fri, 20 Jun 2025 14:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750428019; cv=none; b=ZLCjnMNo777evp7QBZU/KFSEqToCmtG3Gp39eDOP4lKidRUfOjJ06Hb2NWZKYT9w25Rkb3BC0vAfwhn5Od3E239FA4vnXcTcJAeyZIIt8v2zzGlzuYamBq1XHYIGmmMZe0irNDSd9c4yKyGL3OD9PtNSry3hrK3jKinK3iEa9qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750428019; c=relaxed/simple;
	bh=5/+vPx/nBgT7BSo54PAi+vjINR6Ir1xNox/AMqzNJg8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NhEcocWHC092L5zaAtMVKS/g0XjNYqnhhxBnByq7VnmDZADobcBFLR23/x5ARLwncVi82UMFV8sSkPDUZIBBVNKOyjnvkg0oZfZio2clBSuw6d06xwZa+ZD5DE/QgVX8DKXURzM7moZ+EvQ3BLsnYnTvgyqii4AM+j2YFTtOr2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ciZSaw+O; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a54690d369so1676931f8f.3
        for <linux-man@vger.kernel.org>; Fri, 20 Jun 2025 07:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750428014; x=1751032814; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5/+vPx/nBgT7BSo54PAi+vjINR6Ir1xNox/AMqzNJg8=;
        b=ciZSaw+Oz95p/w6WjmNB3cALEi4npGYGEk4dWTdXRYN7rMVfhBhzkMtWePeHzhhbUS
         fBIedh6Fx3QqH4P9vVZlc8e4uEoKzMawkN9+sIlVDJqQnc8lWGAC1fWYFw6lwqaq1d7P
         7ovqn5TBKKiOeqkehnDCUXYOl0z/eYLBQRZZ6pVkgwNwbZEk33SszNHwbHRcEbQcRZX5
         FslV2PZSO4VtwgHwOEq4inthbF34iLmS+Gx53Dbwfs2BvEQvCVEMyWrakepImS3AmCMv
         KYJ8Pgzx5PB9TE+icgFbAUlKBTFeu8GkOYrWiV1r0wJZmH8lc0GXyZhMO4Bqnsw2gunr
         P+/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750428014; x=1751032814;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/+vPx/nBgT7BSo54PAi+vjINR6Ir1xNox/AMqzNJg8=;
        b=LWLOLeih8Xj+NSb53ktCNeLsBeElfPwEEr9wqFtjBvJkHoK2uzLCnxDlGfmtJI0kER
         q8d5e8rpCK0rLW+n0oGOautH0hs5Gxw5Lg91Gr/MBsZ4/w6xmJiuxi3V0DXaihv6BuIT
         dpQd1zHzh/OrvJmt0lzdbADyNurv+mf7LTRYuQWLJF0bqrkDBtXScKH7HfO53G15Myhq
         EIeKQ1iZmtZv4tHnVev8gSoNv0WahwsFR8I8wk7Tm61Qf5+c8UvBvCcKHVk8UTyUqL8c
         lBPUadZ6EZ4b+h0qzfKJnm8qEaH51158QcEMLZPJ0W2kgQLf00Ii6qWGaXFb+aAgSoTk
         jFXg==
X-Gm-Message-State: AOJu0Ywmw3SbtFGct3e8weDR5HzXDaQ7THCXDgJwe38N8tm5+B+a0kro
	96Q9n4Z2CTDN9POnFEhYHCTlOUKZWRnKNS8NF7iNM9Q0WMJxQPeczkJ7QA3f+o2D
X-Gm-Gg: ASbGncuWvjohwzrBoNiOcw+f/9LP/WrrGaa2zf81MJi8azi0ABx7Xg6cxfGT4khp8kc
	hdEg4xPOa77N0QHbsfwxHC06Z/hqNRrILIo9Nm8PqC7LYJgfOZuLgM7bf7vcCLRwpvOYAbQsknr
	LIsIc8IfVd5AIWPM5nFnnZKIBhxuhFRlZiH++464r9xOb7A4r4EP+7uWbyTOvXnz+PepVKRAXj3
	1ieL1tGmyo+Q2AjlDzU4BKMYxZD6KN2GVi+D1hxhCKxQ7F88IxK21yw9kbrjhk9tf5SE/QZPE07
	vKMNaLhaPHp1XVkaEk2C/oJTgcqQBwi0r5cWM7LJcvPPqZfcZYEIlpNVYZ1ynN4=
X-Google-Smtp-Source: AGHT+IFuDikhboIiaYMvaptiCaVLWgHTd7PytIpVkwPBirQs+MehfXaG5BOis3agxS8fc6qHJ6mb4Q==
X-Received: by 2002:a5d:6f1d:0:b0:3a4:cfbf:5199 with SMTP id ffacd0b85a97d-3a6d128a528mr2493432f8f.9.1750428014205;
        Fri, 20 Jun 2025 07:00:14 -0700 (PDT)
Received: from localhost ([188.27.170.216])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ead2a27sm59854095e9.31.2025.06.20.07.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 07:00:13 -0700 (PDT)
Date: Fri, 20 Jun 2025 17:00:11 +0300
From: Dacian Pascu <pascu.dacian@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] man5/elf.5: clarify string table reference for SHT_SYMTAB
 sections
Message-ID: <78e41dade449bafddfb730b39226f8d9cb3fefdb.1750427945.git.pascu.dacian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kmxfzmg3zv5vyhs3"
Content-Disposition: inline


--kmxfzmg3zv5vyhs3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v2] man5/elf.5: clarify string table reference for SHT_SYMTAB
 sections
MIME-Version: 1.0

Add clarification that for SHT_SYMTAB sections, the associated string
table section index can be found in the sh_link member, following the
same pattern documented for section header string tables.

This was discovered while writing an ELF parser, where the sh_link
field is needed to locate the string table for symbol name lookups
in SHT_SYMTAB sections.

Signed-off-by: Dacian Pascu <pascu.dacian@gmail.com>
Message-Id: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.=
dacian@gmail.com>
---
 man/man5/elf.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man5/elf.5 b/man/man5/elf.5
index aacbb558f..c7b9a7cf8 100644
--- a/man/man5/elf.5
+++ b/man/man5/elf.5
@@ -942,6 +942,10 @@ .SS Section header (Shdr)
 also contain a
 .B SHT_DYNSYM
 section.
+The index of the associated string table section
+can be found in the
+.I sh_link
+member.
 .TP
 .B SHT_STRTAB
 This section holds a string table.
--=20
2.34.1


--kmxfzmg3zv5vyhs3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEJ0wpbBnaFZnrChkPqiPz/mq/jw0FAmhVaWsACgkQqiPz/mq/
jw3Z7wv/Yw8KdR8IBZsYkUJHbaciXPuNlO9VgI4wzQZu2QbYHM95lZWBQSviwWYZ
02t8tOGyMjy3A/lgFHx59G8pItn3a/0/b1yO7BYbrcd6bmpxVEaOQ8L3t0PGpzja
mPF5IG60Hkn/WyXLIVaSen2aZguQ1E0Q2bj26Z/R2YLkzQYbLn87BQaQEUgJ0YrI
s8WBr9//TwqlxyeXv54EAeSo/ly6SuCizvyNeesxM/QUbn/RfyVOlg274VLB5dBg
rj5q6615r9MnRq9SysEv5opR6rE2DnUBR8IIFBd2d3Uxmlo2zDFoo5te4T4jjurh
PYXUiOWPJse4OoZSVZYTu8bxqNGRMkgT5uMGgMdYRmZePgRJxPNPwRUliNHmD9wS
ZCvXSXeq/BepAdxqo0katMN3II8VFfPMpUhhIZ+/1kztAGtnNnhpsZMgaVQ5iXoj
ZwGXj2xE4MKyCnW4WsEfoTgaEXEJVwufT+/CNbFCzOGtAeMIVFrxNhpLkaO7tocF
9KAwzzfD
=lKHa
-----END PGP SIGNATURE-----

--kmxfzmg3zv5vyhs3--

