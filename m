Return-Path: <linux-man+bounces-4460-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0ECD116A
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 18:16:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FEBB300807B
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD662BF3D7;
	Fri, 19 Dec 2025 17:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SyJeNqk6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD96C275861
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 17:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766164568; cv=none; b=G/IumzoOxlJhdCniORI0XhKNk4E2iUnRD60dAdxnzpkeLWGdN/UxBRNDOh0bo3F41ApYk1gdvaMyJ9/Xi9JjSJHGuOGfu82OtSpEXlF6za56dMJyQLqKrJK+d8fxNRZ7ClzBWGbWpCh7yhb5b1879J1o8nuZpS3j1D+bJPjqbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766164568; c=relaxed/simple;
	bh=1yxPmcBYTArHvXRVLPnGhilJortgBwbIFJwG+yWXHa0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Zcn2PxMyVnCp12bDZmOjXagvysbkk1ecp70CgQeOXg88zBZXLb/lgSBv0mOuiWT2w9AaYep88oNnkVDk4cLf2yqefJC7GpJ9MKShTwL8UN/zzZYHcjd/Cu3pvinCnH3O+WThHaj2ncahyg+2jpaMOOuc2oaek2V8U9pbi1ThFdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SyJeNqk6; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-78d6a3c3b77so31721377b3.0
        for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 09:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766164565; x=1766769365; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1yxPmcBYTArHvXRVLPnGhilJortgBwbIFJwG+yWXHa0=;
        b=SyJeNqk6iXaPU9PlZ74lq9hCD54CwcZCSUxVhgDK+OilMel9W3qRB0VWeSg4zmkCWy
         NW0llOTNbY9YVf8tNSLNEB0dCTGGb0GKiCKxcMO//oTdB1xe+o0SDrIJ5PyQnwTC6Imn
         aGF7pSr98uu90+crHQlMfKY7VWapSBSKylXjdOGYsVywWk4/DhXH184aBvrIt+QB11Fa
         fQdP6LonVTSDyET9EA4KJmVkGTsdP2xzCJFpyrpNFAU7mnIOB/Fc5cAWjtKzLFYmTb18
         MK7ADlmO7bU2P0eqCaoWYlyg18G+Nq8qZ5hNjGLmsf9Td1Qy81yg/xqb80tgYgZ+oqZa
         bZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766164565; x=1766769365;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1yxPmcBYTArHvXRVLPnGhilJortgBwbIFJwG+yWXHa0=;
        b=jvolwHkQ91Nz7oTwCU7gLzfZRf4UDsXon/bfwgG5zwo4lCXSmfvMomDrejMzwTNQu2
         xBISpG7XJo4f4HgZ3wiZ3auCEAyFubCzv/dsCRkHCK77Rza9inqJE/U1VDZ27ADzXcY1
         Baw9c8WW3+ufVI6Cq/nrtxEylm657uha48kCPH3i3UUVcGWSHIco9dzuLlHzBkrN0cFX
         PyL4TUhhSEhJuzYbPTegcVfW1Nin8WjlI41qmkTDW0UJih18i9L4cS589kxpfWRLMi3y
         HzTAo+vwnbYblwJpcce36rlQgRPA14fRDhN+xlZpka+3DaoXUwemCqBJyOkiSZ4Qu7xY
         rjDA==
X-Gm-Message-State: AOJu0YzY6YQrA3YE6Om4oRBmW/84GzuAZg6nnx8as4Lc9i9ii43fIOzb
	yLOYgjqIbwaTHJCwisAvcX/MHq76Me6sl3qApnB2sA0S5cU/eyGCC7G7uK1oow==
X-Gm-Gg: AY/fxX6cuUJqE5m5RwRGc1WMBrqoMq861nScrRKo0LBOdbTnQBDwkQ68nrUKTsbErPi
	AXXh1uIF7nLm0oVwm0Lf2ugDbNyUrRL3pVUzjRoVqX35ND5AtRwvt7klJrnSCF6uB4QoOd+zgOb
	AhzRObxXlpfMfXUB9S9PDfzmD0PnnzFTKBf/lnxUoG53GvlIX2uSJqzln+DrZbMyh90mlyZBV3f
	S5hdWenm2G5tG8Fi3duNzubeBDXgo3LqOmV61GDfaVMmLagMeQEliIIxczpLQqxtXav+renWUKU
	VGQbFzg4/jmR9CKNEQjXsggcpph3p5aQo5vsCVOmn3Lw2WSEtMqXUhu7v5jD8Nd3I99CmBsIt+g
	oZjFiDHb+D9EC1wB5ccF5uTM3fR7QrYgYiXAP8+KgO8YsiCg3nBE9Q9f9DLTFCK7jG3LCx4AtTu
	HZ
X-Google-Smtp-Source: AGHT+IEQJdlNlH9c2A7OO+DCn8d0fMN2hS+xd5fnesuUMoiholPK5WF1FUWfDitBdqr/8duDYJHgUw==
X-Received: by 2002:a05:690e:1896:b0:644:6d8c:e439 with SMTP id 956f58d0204a3-64662e30aa2mr5193398d50.0.1766164564659;
        Fri, 19 Dec 2025 09:16:04 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43cddb7sm11775327b3.24.2025.12.19.09.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:16:03 -0800 (PST)
Date: Fri, 19 Dec 2025 11:16:02 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] man/man3/getopt.3: ffix
Message-ID: <20251219171602.6255ekvsx24ocub3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="256opcxvtqmdw3ty"
Content-Disposition: inline


--256opcxvtqmdw3ty
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v2] man/man3/getopt.3: ffix
MIME-Version: 1.0

Protect literals from hyphenation.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/getopt.3 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index e7518192d..da390a1dc 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -137,14 +137,14 @@ .SH DESCRIPTION
 If the first character of
 .I optstring
 is \[aq]+\[aq] or the environment variable
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 is set, then option processing stops as soon as a nonoption argument is
 encountered.
 If \[aq]+\[aq] is not the first character of
 .IR optstring ,
 it is treated as a normal option.
 If
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 behaviour is required in this case
 .I optstring
 will contain two \[aq]+\[aq] symbols.
@@ -221,7 +221,7 @@ .SH RETURN VALUE
 otherwise \[aq]?\[aq] is returned.
 .SH ENVIRONMENT
 .TP
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 If this is set, then option processing stops as soon as a nonoption
 argument is encountered.
 .SH ATTRIBUTES
@@ -249,7 +249,7 @@ .SH VERSIONS
 .IR const ,
 but these functions permute its elements
 unless the environment variable
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 is set.
 .I const
 is used in the actual prototype to be compatible with other systems;
@@ -284,7 +284,7 @@ .SH HISTORY
 .P
 Very old versions of glibc were affected by a
 .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf0=
79e19f50d64aa5e05
-.BI _ PID _GNU_nonoption_argv_flags_
+.BI \%_ PID _GNU_nonoption_argv_flags_
 environment variable
 .UE .
 .SH NOTES
@@ -294,7 +294,7 @@ .SH NOTES
 and \[aq]\-\[aq] at the start of
 .IR optstring ,
 or changes the value of
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 between scans,
 must reinitialize
 .BR getopt ()
@@ -303,7 +303,7 @@ .SH NOTES
 to 0, rather than the traditional value of 1.
 (Resetting to 0 forces the invocation of an internal initialization
 routine that rechecks
-.B POSIXLY_CORRECT
+.B \%POSIXLY_CORRECT
 and checks for GNU extensions in
 .IR optstring .)
 .P
--=20
2.30.2

--256opcxvtqmdw3ty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlFiEoACgkQ0Z6cfXEm
bc72xg//VTj69KQKs4kmQXVz5xnQ2VKSGeSlJ67RnSpdXN5PFngPnecXTXMlBfeA
S1XvfItWQKESQevWgk03c/HG2lP5bi+DsnXiU5RuDkSk32d54h2f8Yd4oI7s4JyZ
muz3kYkV6LugmPjcwBMFo8PJCtFF2zluaU99TUArjyLMq0q3IIZP81MJ4xcB9nXi
g1yzEsAqD0ty6ocvt0KoJwQSmjngPgrwX1LMtMa+7Ic9TgOlyziiyfLAhoqpwMi/
fgK+m34NE/HZhZ9pthXIp1XLO4nKZFSCBRb5i9E2KCjyIBohhWfYjTCGc3y9VLnt
JVJkvpS3siQzDPp21xbVMAPSXQGFpUGzQDSupzER483eqHvSvjEhsk8Sjl5kckWk
Nd8NcBIycxa21qOvtgw9TpHyvqH4QmBYnyyAGnRmqoDSuhlgyppyZayOTHy4X6f6
LDPm0lKKfJN41UUyt0Xx9EofUej+N4lT0FuWH+jh6LMzEKOmwO7Bz7lQxh8CuB0U
L8EDxCJ+cTbGJhIQ4ivD4JRvchHTSsWzTzHfH48HuUUCFg0AovaK4Ui4pAU/oGQl
f11shTXJcIHXnaGQRJgBV+g2X/KWmPWDq6qYYm1i1QS71pQK/+zGO8F0c5mh9U5f
89qGfqunhcom2fOFW5KHNxEPEo0TrkTg+qDwVtyFA2S36uHUppI=
=S3Lp
-----END PGP SIGNATURE-----

--256opcxvtqmdw3ty--

