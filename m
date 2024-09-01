Return-Path: <linux-man+bounces-1751-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDED967462
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:25:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08E271F21C51
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B562C1E89C;
	Sun,  1 Sep 2024 03:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D02vt6RV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E7133D8
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161109; cv=none; b=PH3S4hGWdVuVhPICZvCdbvus4x1K6Nu6ip+zAWkTh9NFi28FjjU4iy0mH9UqaZ2HdzFFIC3f/oZRifQYtxdxcyZXC2C/IDT+uURmy5WusWV1cpe99O/T01txJuWdCzyOQEgLaSg5TMvYQTUw78SxuKsbegFcBSFgRnJswJi+fqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161109; c=relaxed/simple;
	bh=dNUM+uk+rSsQdG4NEXE4ILaNeJc12ax07TUrDXfCNCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iytNBqdbEjxSlwhthGPIoMWLg+CVA90K2/+UcOsk0+b9bNhplrgn9ls+2R+h0T1ZZ64puX1Tt5YUe5aQ1VhmJLUwm+qQv+XQ6vnXBu6TcrHnznG03qoKefFQpDb2S1Ukq4AoG9VTvxQJjxhC6m5EZhkjxf+Oxl6PtSvXucbckvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D02vt6RV; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5df9dec9c0eso2110820eaf.2
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161107; x=1725765907; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XZZ52dR+wRzgP5cqqLmMvH+MCZdWkghDVd70QiF/Bgw=;
        b=D02vt6RVvsIrJVExbsrqPd/dPbJtqHUw6nkYBk1PRztfLi1nMpgP5ZKdkzdGHj5BFH
         wWwFsrFNam6ksDmkYa4EkBcmFdoDCNGDcPJMAkMHA5eU3qxLwRQeWpfQsQl7rB8AEA2f
         iKo0IveKpOw2f3V4OHxsDZ02mF5B5QFIzEPPzldowPLxus/9aPaWjxGdTU0/yfypOTHR
         zfYhUCl8am/XRBvs0PPSOSZ+VTX/VPmSz3KGxVUG+exmZr+IirDXEEIZ3TWSKzk0ajxK
         gUS6iCfxziXe5b2+hq8wjHNpTgUSxAYwuBBK4bh6dwEh/auVDwPfra5l4/J9Ou5a7PWD
         3kCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161107; x=1725765907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZZ52dR+wRzgP5cqqLmMvH+MCZdWkghDVd70QiF/Bgw=;
        b=F0yGpIfRwMHlOoho9/1DQhZ9wyXU3U/0HtpX2jUAl0UQfdeJPkcnmWpuYiLVlzOzy/
         FqY4A2gug/Ke8ipSwXW0OxbcCaMf3l52x1Vbkq4hF72kia7o8eWp9l6kZnIdiRORfs4D
         Mqj+wp5gaptmUtqZrjbfE2AnQ9TCFvVUIqht2pzWAxL3EW+KUCPA0Nwvj45hliR9XqOr
         hvdickJjxPJazi8PRwU32MFFwB3r5YJ4DFTjM6rqjmaUqibIbzlkBX38IMveDowArJfA
         6rcLzYDT4yKzdjBJbdiaaIXliSi4fjQEQZ586oP50uJIiZKm9WftgE3IzRYyyU8bIQUF
         bGbA==
X-Gm-Message-State: AOJu0Yz2CkIOtemyAptDp+U/WbHkkp4GUCIiVRCEACzpvDR68+N2ptWh
	lc7rq86Be8VOUiHOfBbjj9b3EaeTF0QKG2uOtEccUD6yo13dnvwHICUg+g==
X-Google-Smtp-Source: AGHT+IGz3AUVRrsX3Pg93f7HZlyab6tHkiqH5WYx3Aam58u4QfOHZ5rSwFo3Rnk6h8rLjw4WrJ7svQ==
X-Received: by 2002:a05:6870:fb8a:b0:250:7465:d221 with SMTP id 586e51a60fabf-2779016ff93mr12929422fac.28.1725161107031;
        Sat, 31 Aug 2024 20:25:07 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abad3caesm1583399fac.11.2024.08.31.20.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:06 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:05 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 02/10] namespaces.7: srcfix
Message-ID: <20240901032505.ralmc2yuwd4psgos@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uqloknflgxov7hpm"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--uqloknflgxov7hpm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 02/10] namespaces.7: srcfix
MIME-Version: 1.0

Use *roff requests to shut off adjustment and hyphenation for the
rightmost column of the table, which uses text blocks.  (In man pages,
use of such requests _outside_ of tbl(1) text blocks remains discouraged
by groff(1) and mandoc(1) developers.)

Also break filled input lines less aggressively.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man7/namespaces.7 | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
index 5d19d004c..0e7f46661 100644
--- a/man/man7/namespaces.7
+++ b/man/man7/namespaces.7
@@ -36,28 +36,36 @@ .SS Namespace types
 Namespace	Flag	Page	Isolates
 _
 Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
+.na
+.nh
 Cgroup root directory
 T}
 IPC	CLONE_NEWIPC	\fBipc_namespaces\fP(7)	T{
+.na
+.nh
 System V IPC,
 POSIX message queues
 T}
 Network	CLONE_NEWNET	\fBnetwork_namespaces\fP(7)	T{
+.na
+.nh
 Network devices,
 stacks, ports, etc.
 T}
 Mount	CLONE_NEWNS	\fBmount_namespaces\fP(7)	Mount points
 PID	CLONE_NEWPID	\fBpid_namespaces\fP(7)	Process IDs
 Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
-Boot and monotonic
-clocks
+.na
+.nh
+Boot and monotonic clocks
 T}
 User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
 User and group IDs
 T}
 UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
-Hostname and NIS
-domain name
+.na
+.nh
+Hostname and NIS domain name
 T}
 .TE
 .\"
--=20
2.30.2


--uqloknflgxov7hpm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3pEACgkQ0Z6cfXEm
bc46hw//WgbcM4gCNEM257lUv5XXX8WwNDflkAuutRspbiyNm3Q+7/cdDkS2qC3G
bTRxLn1Y0imxoBN3BvstLrRQanDm6rV/DyIKsRZmeeSCvGNhz+G01vB3jKaqxYX3
Uh/4qErHabp6YNNMOdJ0PZevNiA+doM6eQTwZ7rw3HlXUeOHJGiA/VVg2AZMCqbu
QfcB0HPjFgiKgBkM/Z6oT1AjOjHLOddh0iqkpxQ4SnyvY4kIBfHiX5NMzdKg6El7
ijHkvHuqbMJI4PhB+RHlxQv3GDa5q+FOkSFBAXygnttBYr1TLCuMjaYJUtn0V7YB
O3gDBEU7p9Fu9MzkrR46KBcF875tikUi+MUCXs2CkERL17RaXNYZCHoXY2tUSH+u
iEjj2iyLXvPfl+O8aeNHEOvG6d1BKUsuefqB+i5aDBxdOFMMJ7zS0p8i1cijFBbg
lwi/DE6DXVuAb+kEevyg03uc29KmwsN4iPuQPBxQvK/xfi755tgAwDQOw0E9fxFo
+h3DWt6BubLeT+Ze9BAkBXJCD/uzHPGmNgTGbsZYJ1l6rt4DkQ6JtQkFAkRMZUSB
JUt8qjNtfSYdvrbf4zPOBGKUzKoBGYKd2/mltoqOYbUYhZ8QYSvoo2FVr94csAJj
Kuo4rqL0FuTmqiVzmwumD1v6GLdymi5Q+3QUcM/IL/gHL04465k=
=Poby
-----END PGP SIGNATURE-----

--uqloknflgxov7hpm--

