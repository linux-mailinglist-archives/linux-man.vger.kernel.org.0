Return-Path: <linux-man+bounces-1607-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A580194F5D0
	for <lists+linux-man@lfdr.de>; Mon, 12 Aug 2024 19:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56CEE1F2201D
	for <lists+linux-man@lfdr.de>; Mon, 12 Aug 2024 17:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169B31891B2;
	Mon, 12 Aug 2024 17:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="IiTK+SEo"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53FF1804F
	for <linux-man@vger.kernel.org>; Mon, 12 Aug 2024 17:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723483693; cv=none; b=B8UGFWYpIbqX5MXWynSIYiawl9acsijxASmOvI1STTyFpvYA3QnMAlbs1LLgDY+p21HGcIt6+SaSi+DbxYWKSTmUm3Dn6CZXsPDpTRp/ptsq45pURcsPWtjAtcPtHDTticCnljb3h5Pm513Qm9tplJtq7Y102jxIFFiLlaR6+jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723483693; c=relaxed/simple;
	bh=BbIqnbpKp5TGeG1d8d6GLAQPx9cDZEPdUzK1cceGv2M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=X6TgEYTyN2PMQuIieRPCwrwyCa4x0C/7SCMrxa6ToP+9LuyKDoHchBpv1J8K4eRxg2Ws3lMKqMoY2jdonNSvQoZ40pdyyutn4THJgOrQVtBXQRYragHc/qk2R50Vo2gAt7CmI4SJWepYcJBUGMoXPw7bRoXfK/yMAH9h6quNPU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=IiTK+SEo; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1723483340;
	bh=BbIqnbpKp5TGeG1d8d6GLAQPx9cDZEPdUzK1cceGv2M=;
	h=Date:From:To:Cc:Subject:From;
	b=IiTK+SEoXxW2T0Og2V6f5RtjKSrCnB2ZFdq+O2/q01ILi/wetUgABk7Ubp1n9Ia0g
	 E1VR5LXAtDYKznDPGn/iiM1gmngaB4Ml0zKIw8+ichMAvUNHrC1skXfvTTaVW0zeqQ
	 angzj26CsbvaSdJ/8JgtMoLjMiOwg12OnRZvWrYBl0VkHLnknunHV1iwKSXEqSkER8
	 U1UWW6K7HrrY6ZKMP53snKYM4D/fsV2SL5P1exCMmzTAiWQXLM3WW1ZJzHSHhc51M8
	 PmZVsnQ2PJx8DolgkcvtPmI1Dynm47SctsNmrK7W0kE5a/zw8y7nj/HwlvnELNxn97
	 c6e/avwxPN4pA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D775FBE9E;
	Mon, 12 Aug 2024 19:22:20 +0200 (CEST)
Date: Mon, 12 Aug 2024 19:22:20 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] syscalls.2: grow the Notes column to the right margin
Message-ID: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7tyxune6qd2wzrre"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--7tyxune6qd2wzrre
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This prevents rows breaking when they could just go further to the right

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/syscalls.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index 7a7d6d730..795a3f7be 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -140,7 +140,7 @@ .SS System call list
 .\"
 .TS
 Lb Lb Lb
-L2 L  L.
+L2 L  Lx.
 System call	Kernel	Notes
 _
 \fB_llseek\fP(2)	1.2
--=20
2.39.2


--7tyxune6qd2wzrre
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAma6RMwACgkQvP0LAY0m
WPEYoA/9Fcd9efSUH5Ev80dxXXLhYGbpuFEyOHkI35IKiuMyYjtE7fTAuhuazH9d
BpMPg/aeYQcp4AWcsRwwTLTI7eEJb60aCtectIaeSROHUw5TGT6KIosuMNJalkqk
edlHLVG2ufOhCWbZ0ks2zi4j7Km2p6dTHRVVFm6KbetgUW22QEatu610xHZY3VxG
RWsWO7SYx0bcv/6kFtErMEwPJQCMY3TvMzSxntMstaRI5Nk1PB96HhRwEvot0tH3
6qzYhjCoQzvD7vjxR/yExS378S2KModkcofXYqr6UnSW64HDiFrCRHeeaH1AALmq
6iW4RoegLK3L6JxAG1uVQHzCQssDoHMv4O/G9/ZNf18oGFxAnDwRD6USO6i0K1CH
xBwf9TxRbzFS0ovsRm/fsfv+EcGWy1fFMgg9VHlO9WyA6AXdfXLidSjHbAh4nsa/
7YPLesD7dObajLplvl7z9M3IgIdODuJ/Mfxv0HfA/Xt4IYEd3AcnjpoBu25Jzibk
cAlhRQQspwMnCzjxJ3gB99ziYCDCQOA1Z9kqXt/um7VmOWbIFq2VSZC9rYPy6J5F
GYIz/ZsRSWlf6BdtZKyzos+xoZG6GMV1i55w7UCi9qwGxCRpWvgujMmvloVTYeIW
aee0X1QTUBQwEeDxGxhPuAKOEtJv++oRLm9HnPJqGDqwbgWQE8w=
=5sQ6
-----END PGP SIGNATURE-----

--7tyxune6qd2wzrre--

