Return-Path: <linux-man+bounces-2210-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939AA07FA2
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 19:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F0533A64A6
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 18:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0BC1199235;
	Thu,  9 Jan 2025 18:15:08 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [193.43.8.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA5F19D886
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 18:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.43.8.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736446508; cv=none; b=tZlfTYSwTbMxB2OgKmO4GSdAM2fjV55YF2v8akRMn5RXorDeIyVSwKQV94UqdxTiZq3q8R2uYxFrDHIIM3gAl0f4uZY4ZSFl1/ini73rMzVVL6NBFSzdPfQJYo7E5kpek/GJuj3ddmRTyd7NqP478ztK2dolQrzMzjvVSejZhe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736446508; c=relaxed/simple;
	bh=gZXEAOUS7io7tBMCbxZ/6gvAtmjmiSN+j/m0CEv2IGc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rDnJLfeSCuSRw58fevmH5yBFm8I0+LLZKkn5nJkmxqz41ijVpR+7kg2Pu4NAHRlndqvXH7WSIvBuhis6YNuMu5gtrt7qaa1UuCITN8PReOkSyzjXVSFEVVoymvd10gHddHkqIa355YneXfM125ZSB2d/InWwn3LFK6sra43xNtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=193.43.8.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from geochip-laptop (unknown [83.242.179.123])
	by air.basealt.ru (Postfix) with ESMTPSA id B012C23397;
	Thu,  9 Jan 2025 21:06:32 +0300 (MSK)
Date: Thu, 9 Jan 2025 21:06:32 +0300
From: Alexander Stepchenko <geochip@altlinux.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexander Stepchenko <geochip@altlinux.org>, linux-man@vger.kernel.org
Subject: [PATCH] man/man7/user_namespaces.7: tfix
Message-ID: <bc17315eff26eb31ecc78a2c44b89dfb077813df.1736444255.git.geochip@altlinux.org>
X-Mailer: git-send-email 2.42.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bcqi6wiralzlxcsm"
Content-Disposition: inline


--bcqi6wiralzlxcsm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man/man7/user_namespaces.7: tfix
MIME-Version: 1.0

Fixes: 8c74a1cea495 ("user_namespaces.7: Clarify details of CAP_SYS_ADMIN a=
nd cgroup v1 mounts")
Signed-off-by: Alexander Stepchenko <geochip@altlinux.org>
---
 man/man7/user_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/user_namespaces.7 b/man/man7/user_namespaces.7
index 40a2a53634dc..eec29c2434ce 100644
--- a/man/man7/user_namespaces.7
+++ b/man/man7/user_namespaces.7
@@ -286,7 +286,7 @@ .SS Effect of capabilities within a user namespace
 .B CAP_SYS_ADMIN
 within the user namespace that owns a process's cgroup namespace
 allows (since Linux 4.6)
-that process to the mount the cgroup version 2 filesystem and
+that process to mount the cgroup version 2 filesystem and
 cgroup version 1 named hierarchies
 (i.e., cgroup filesystems mounted with the
 .I \[dq]none,name=3D\[dq]

base-commit: 48618d7701d55ca9401b259bb4e6200d841df6d0
--=20
2.42.2


--bcqi6wiralzlxcsm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEVFMC46vVZ5ezSipbJLrN3rRGHpQFAmeAECgACgkQJLrN3rRG
HpTb2Q/9EdFow86Zj8UvT9lshw44BjRjH0tw7Jx/4UD9og4jOfoD2iSVPNck1rSC
e8g1CZZEZW9Iw9YkWJg5Pcek15TFuHs1qd+8G+zSaIBpsH+AL7K0Wu6hGg9wFnJd
tw3aVFZqp3UP8AQZCyJCkpAzFGbCHcgZGoeCfDG4f/sTjEi6RG8sZAadfb6yUPJn
pIriJdGghYcQ0tkMBH5IW3dh1+LkFY9Uu3fzeeYe5lBOewokuZbvHdJnL0p76THt
O+2Nvc1mVk5fvkZJJImX6ZJ4Pn+/da/+Ugf0zGySXpb+WkzJMQ+tyrzVe6nUREKm
2Q45f69kLK1j+Qe6u8FhCkGlezZf4JPvfK8q4pl/7F0PlvtP1wTVKVMKpvszVpq7
2ae9qQyAWxm5MEb7dIfmb4I4XYbbRFA8NhIyb3t7SlxlFphQ+Kpf6SL61g8Vi9fC
903VRB3Ck6MyQCWPip4iS4Z1FbHOUEz+ynvSTD69ekK51yTVH4mibKWxQgBM8nhu
je9fpZDfZR05Xr2phPO18WEatno+SMC/PEytLgKL/mj4y4lrK75PhZebW/GjSoYq
2zq4aPFWbLz2CaeqkoDJYE0oMoMNSYAWQAryXemQdsNu1UdN+6qIHiLy9zXpDRhT
eQ+WLsvuBo0R7GkcFBsKk2T7Sfw1fTbCTmygYRQDN2vITKNM6cY=
=7QQV
-----END PGP SIGNATURE-----

--bcqi6wiralzlxcsm--

