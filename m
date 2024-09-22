Return-Path: <linux-man+bounces-1779-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1BF97DFD8
	for <lists+linux-man@lfdr.de>; Sun, 22 Sep 2024 04:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DC3B1F212C0
	for <lists+linux-man@lfdr.de>; Sun, 22 Sep 2024 02:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3313F18F2D3;
	Sun, 22 Sep 2024 02:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="briQAwaK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42671E529
	for <linux-man@vger.kernel.org>; Sun, 22 Sep 2024 02:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726971144; cv=none; b=Q3LQMtoEdkgR/3pjFZ9379bf2VtZtG8kchmUBzVFyGzdKGzRWsX8nHgHxD8GBMCTX2LuV7DxWhCjdgZqWbHA1d1HhgoMcaKnlSv/c6FkWim0V3/JQOURG4c/wuJIdDVl9miE15LChXzl3Pbj2laMFIFX9fuiBsmDqiwjnhZz+Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726971144; c=relaxed/simple;
	bh=fi03gmqkV2q7lfC5QlNw+/S35JFG+05z1jWeZ1AEIDE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oDBbkobAJzAd3tI6f+ywge3vZenxXLIaJIDUIh8dN5Di9Ugue2G3E5cMBys2/ru8rbYKCJUVRiKRddPksSs0yo5OeNRpMPfYXXeobp+jv2Ua/da5QKHR/OXM0j78u+6bjFwq2pMc4B+NQJG6noEHIEqhKdQgRmjIPzXrAsnSwl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=briQAwaK; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2059112f0a7so29287385ad.3
        for <linux-man@vger.kernel.org>; Sat, 21 Sep 2024 19:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726971142; x=1727575942; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fi03gmqkV2q7lfC5QlNw+/S35JFG+05z1jWeZ1AEIDE=;
        b=briQAwaKRjQwKV00GFhrPvwRJXxOkzN5sBTr+g/WmSFej0pvErSHTpc/cdNigdy56d
         paGZCOOWytP/ix7FMtowyfw92uwwFQAwxX0kHaMEOVIDctr1Wh4wxeXHVUHGEjxByzsm
         5ilFzCgSxqrpZbj1v+XG5ooIGLtK6s/THrkGBiZTpYXvi/hcsI+HUcEVkzDJPt7MuZp/
         fppRgoO0sDZ5IjfW3k6arNiDDCVZNq9LQ9IG2F8uq2t69wkWf1E8FdOErCEGfXSTg2A/
         XIueOVvSG9l+O5vzhpHJN8G9z/7balLxcFK1+1xo9kIEBl45aJehqNulhSHhTW02jkqA
         0anA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726971142; x=1727575942;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fi03gmqkV2q7lfC5QlNw+/S35JFG+05z1jWeZ1AEIDE=;
        b=WYAaDjBRTYbgqL66ewvNPKHe8qUsm2qCGmiZppRIEgGpYiw1wpsje9z6B+VCX0LlWJ
         qoA2/m11cYRkbil2LlKal+jkZDqyH6JImYcYlpJy1EjpxlM0NHkJh60fg+GZYgvFx8fo
         nYteWlpXNlsIjQ9pwhpuWOqRPycynF/2Q7wo77Xds6+pl5vH8/vWwekh0QQHJbosyk7w
         mmzkYCui4P49VUgIJWo8DoeHlfTxBTC6lyUGUh7dWMZkDdbDOhY29JFqajWeAvGv4rsZ
         8rUegmoclABBJRC+crNjfbIU3cTTBYN17+S8NdDh9GSE02c9zbpUSHcCCp6fmNXWElI4
         fRqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYJ9utNniorDoe/IQJwWgQWl/bfO0sdCa9wDo5GfAXWqJANL7ZxP3eqlWcnnP3oE5pHf1YyzHWzmw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwN/uiduqb2+7QTlgw6iLE3MEE6wC16IENZyAtD5qO4Dst6WsgF
	8NGPOMkO2wVNiD8BOeitg1n0cATG2XxuqDsbKuqUkCvm/UldEZYSF4pJjFui
X-Google-Smtp-Source: AGHT+IGwMhcp6FQBn/iOpa4XwU/yTZ+00akNiax6oD7tTdIOW2R4t+NgRoVL9yOL50MC65X1H3a+Iw==
X-Received: by 2002:a17:902:d505:b0:205:841d:122d with SMTP id d9443c01a7336-208d8397de3mr107431385ad.26.1726971141681;
        Sat, 21 Sep 2024 19:12:21 -0700 (PDT)
Received: from lsc-framework (c-73-70-4-185.hsd1.ca.comcast.net. [73.70.4.185])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946d2933sm113715795ad.155.2024.09.21.19.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 19:12:21 -0700 (PDT)
Date: Sat, 21 Sep 2024 19:12:20 -0700
From: Lucas Culverhouse <lucasculverhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Lucas Culverhouse <lucasculverhouse@gmail.com>, 
	linux-man@vger.kernel.org
Subject: [PATCH] bind.2: Document possible errors from protocol
Message-ID: <cdaf3b91d467ee84e824f1b264f3a931c54b7e1b.1726971114.git.lucasculverhouse@gmail.com>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="viehvnmq4yswynnn"
Content-Disposition: inline


--viehvnmq4yswynnn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] bind.2: Document possible errors from protocol
MIME-Version: 1.0

When looking through the errors of socket(2) I noticed that it specifies
the selected underlying protocol may extend the potential errors returned.
For example, using AF_PACKET and SOCK_RAW can return EPERM if the user
does not have CAP_NET_RAW or uid 0 (This is all fully documented).

However, AF_PACKET and SOCK_RAW extend the potential errors
returned from bind as well. For example, calling bind with an invalid
sll_ifindex set on the sock_addr passed in will return ENODEV.

While this possibility is documented in the raw(7) manpage, the bind(2)
manpage does not mention that its potential set of errors can be extended by
the underlying protocol. This patch simply duplicates the relevant language
=66rom the socket(2) manpage to the bind(2) manpage.

It is possible further extensions for send, recv, setsockopt, etc. are also
undocumented, but I have not yet verified this.
---
 man/man2/bind.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man2/bind.2 b/man/man2/bind.2
index 388974145..a59ac16f9 100644
--- a/man/man2/bind.2
+++ b/man/man2/bind.2
@@ -184,6 +184,8 @@ .SH ERRORS
 .TP
 .B EROFS
 The socket inode would reside on a read-only filesystem.
+.P
+Other errors may be generated by the underlying protocol modules.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.46.1


--viehvnmq4yswynnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRei/iXy5+43ihYqFOmzwMuNwF/QAUCZu99AwAKCRCmzwMuNwF/
QHN8AP9Yzd/cM1q5PcdC4UlCj3lMU68Y9ESJ7f8Z0ou6zWVwvwEA9mC41NfupYAQ
dWhmWe/KqLlAvIxGTOjwy+04Qkuusww=
=or+J
-----END PGP SIGNATURE-----

--viehvnmq4yswynnn--

