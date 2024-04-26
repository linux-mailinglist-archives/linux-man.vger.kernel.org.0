Return-Path: <linux-man+bounces-823-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D370C8B417A
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 23:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 892371F22585
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 21:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3102364A0;
	Fri, 26 Apr 2024 21:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IGEVI4v2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B6F2C68A
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167864; cv=none; b=oUQydgE146kl13bZ3q9V8sBQcrPZ/fJUE9vfmMEUqqua4509U+T4YT/1XdlofojwVxlWTb8yxcQjl9qOX1J2hZvmNEyjHKa3hhAq6zI4h+WaBR10w6PO1pp1uJwH+gD8YiXWpqwntHMyccoMy4qpQR/+hRqXbLorXNuGZxBBW4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167864; c=relaxed/simple;
	bh=YMGzm0lQbDISjGw5HzorJHbvCYpwanRhZNXFCnt9A3o=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sP7TRe5HdY9CZi855amSRSQWRcHP86Ax8vzgkEOBg1H+/xEbghkuctE3CGSMn6g4cGVms+m36JyBAemS1ObeBnvCYNBIhfwLkshUGmDEQNET7+pgLZoUrcx3nhBZPUqJH6ZFGciWkBj1Ljm9NYJThUtiUSrOkQJ5b9kYoWqzcag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IGEVI4v2; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5aa400b917dso1745941eaf.0
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714167862; x=1714772662; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KAq4DjBsgAomEWA/RelvqM2OBghd4Oi4av0xDc+up9Y=;
        b=IGEVI4v2Vwii3FbEfshgiZZPg09CJY9CYKv0Mb0D0aBRsqPNcr3JQ7LV/NBAbP+Vb9
         cVbK9LLPwozdV90uE/vf1gWUyMd5DowrIsjCs96+V4EZXFfvOSk2c/ntVhDXwuf1jCWC
         NK80Qh0haZaRnmkrFfHpH/u2XcVVamXI70RmCOJSEkXQQPT/goirMWzuaEbdvA1GCzaO
         X4dQ431dl3UeU5SxlsuWy/0pCaWcqC9F5qGmABDj9GqjlWkc6mijrfmscUGxNfsW5zD/
         /eMkiiIPNk0lTzrW4En7QLz+vxiD8m1j8JeP2+bus7OKTuoJNd+3vhCJZrZns4yxA2Pr
         aCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167862; x=1714772662;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KAq4DjBsgAomEWA/RelvqM2OBghd4Oi4av0xDc+up9Y=;
        b=Rzshe9ophRBXREd7dImwRfzpj7isoCgU8LwTlKzgcM0CLy7fdictt7HNAs5MNAZURR
         WH8uBnTKnwxet2h5UnsgIY4Yc3I+Wd0drk9/11g+8mVu42l2OxytcYPnyDQZiHN7y1E/
         ZPPx7hhkJ1Fwf/4+K9KBk5k+rbPwlwoacHANTIalBS/wbjiDkMV66dzscvCgVpdcdSmR
         8KpieRMMJw/bUPkPZCLFLtpfQUfBgGYfRN1wSiPIksxqs9aF3ATK/DPTC0FRiR/NUW6T
         AjV92UMyZg/9tdIX82oV4YllO0zoc1GWr+PVtKiW2ExBqAflI+dZVOiNgpoQSGoTDm5E
         Njjw==
X-Gm-Message-State: AOJu0Yzz2BjI1RpD8ShY2h+29R1PBEiy5MK/xpq9KgLvj/HHlWLHBm//
	L2DEaYkJ9an6C+pC9cTUJZcs0OjuQuLrTdG3YZ7qpw8Hs9unt4DH1PbP4Q==
X-Google-Smtp-Source: AGHT+IG10RSLjpx7Vh2chTkZxy2lFDLEorogLcHL2awoMkd59m+jkEdBv0NpdzADmNkd2a5XoN+d7w==
X-Received: by 2002:a4a:54c2:0:b0:5aa:5252:6efc with SMTP id t185-20020a4a54c2000000b005aa52526efcmr5105545ooa.9.1714167862445;
        Fri, 26 Apr 2024 14:44:22 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v190-20020a4a5ac7000000b005ad01260419sm3841365ooa.1.2024.04.26.14.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:44:21 -0700 (PDT)
Date: Fri, 26 Apr 2024 16:44:20 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/3] man2/syscalls.2: srcfix (2/3)
Message-ID: <20240426214420.62g27yz4lmoht26c@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5kdzvdbpb4yvy4he"
Content-Disposition: inline


--5kdzvdbpb4yvy4he
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This change was automatically driven by the following sed(1) script.

$ cat pre-MR-migrate-cross-references-2.sed
/^\.\\"/b
/^\.TS/,/^\.TE/{
s/ .BR/\
=2EBR/
}

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

---
 man2/syscalls.2 | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 979dba538..c8afd537b 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -187,7 +187,8 @@ .SS System call list
 \fBchdir\fP(2)	1.0
 \fBchmod\fP(2)	1.0
 \fBchown\fP(2)	2.2	T{
-See .BR chown (2)
+See
+.BR chown (2)
 for
 version details
 T}
@@ -399,7 +400,8 @@ .SS System call list
 \fBlandlock_create_ruleset\fP(2)	5.13
 \fBlandlock_restrict_self\fP(2)	5.13
 \fBlchown\fP(2)	1.0	T{
-See .BR chown (2)
+See
+.BR chown (2)
 for
 version details
 T}
@@ -681,7 +683,8 @@ .SS System call list
 \fBsetns\fP(2)	3.0
 \fBsetpgid\fP(2)	1.0
 \fBsetpgrp\fP(2)	2.0	T{
-Alternative name for .BR setpgid (2)
+Alternative name for
+.BR setpgid (2)
 on Alpha
 T}
 \fBsetpriority\fP(2)	1.0
--=20
2.30.2


--5kdzvdbpb4yvy4he
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsIDQACgkQ0Z6cfXEm
bc68sw/5ASNnRjQns6aX5Anh0Qe7ejyw3Yk+5xB5Vts+8oWiHdn6BVMP5v99+Gm0
w3yHrFTO5FqresqbJSj3dwP7ZLGfR2bz1VEebqVopTtll/vWmnH61TydDTqDLTNz
DWBAZW1DkaZsZwKHlZSCidKcovO/w5JtsG24NQYrZimjhJnHXZT7iQd0bpBJEWgH
+1KVn8xCX9jzUuy9pg2abRjp9Pfbk3Jr/wa1O76OPifgbRyjt676G3xAPTKrkLBy
kYgPPqjksD5t7xE/wOKXRMMCSDBn/F5ZhVEMGJ8aNSH+/U5+C7NWNPQ+FXjkpwPl
6FDrZJkoZ0MD1wfGrQ6aI4FNNh5e26IRm0cUYvk3FFcfkWxsM6qggYk4WPR2ShMj
yQ5dpPZXNEQCQe8nuLuecHUbyJAivQzsu2APkVqoFF57Mn2OCQ/mo2DIkgt9IHND
Q7xGeD5TMygrm4y3j4rpZCRlUKa8HZHF7i8NpJtZoMrE01qL01dXVmIUmm0qOaOf
UKwqx+HRuTZYPLNDGt8JEchc1sGJKE3sv16VoyeGP0dJlCJ5WoUwo45y3hYpnPfl
w7bgBMmmNtsjGnjNDqZfzcxCx/9wnpg4TtCRhJIczYl5sqkinhSAW1qXQqycVtnu
u6fTBp5f3wuGzDkd+PqGaW3XRCNV+7HCVOZCJtTGyyqj13HtJKI=
=zMC5
-----END PGP SIGNATURE-----

--5kdzvdbpb4yvy4he--

