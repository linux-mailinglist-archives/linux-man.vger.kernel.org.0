Return-Path: <linux-man+bounces-762-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5BB8A5DC7
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 00:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6EF62830AB
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 22:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8BC1272B8;
	Mon, 15 Apr 2024 22:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CmJmCdh0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279F12E852
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 22:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713220774; cv=none; b=W4qrA2CFzzLNvIz22b5hLWNx0wTnkoMjfrklaqaljNwfSHHW1dTmEH6PKLa6pydUdh5RVKR+mkssLMnKBazAVChblV8bgno5xz2B/lUiAfON5KdX8RcEaP5ZZ+wYP/ZVPYBDHiDw/BU9jLt/leSM7keEvuvZU1re+WvJk032rjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713220774; c=relaxed/simple;
	bh=1Ac3F1fJJ95GZsfrpKXg26vPBp7+1UKkMcMr/20bdqo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=iddceXen+gcc6cka97v4vDFQbK2JaqWH565w7RicNaWmYy/+lMxitX/nUbkkbXOYxGdvallZivRpwY3HLHWyLz2R3RIN1Bbe4AaGVvd1+93aDRYzd9/DammVCd/M14+Y6o+VO7v5hcYqAvgBeSQnIDoSXbSNnBPa3bzisb15/QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CmJmCdh0; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6eb75c202dbso1398048a34.2
        for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 15:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713220772; x=1713825572; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ac3F1fJJ95GZsfrpKXg26vPBp7+1UKkMcMr/20bdqo=;
        b=CmJmCdh0RkvUgGSnhNpeSY1Ghq3nw+LpWDp9YF8mLxD5Xgv67L6VZQO9gFevCuRhuO
         hWvA5UrBHcnpI70p9YrFrkCw438ZlsaYpuTBfwMEKiQMwR/45bceGmhc0KFvV47Ase/P
         /oaRo91xbCBdieZLSyQmeDSsHnuX5uq79a5/+We5UbCMu6wMUqmFoVZX/Ga7VR3d8NDG
         rN2PQbU3cPHLm47Oa10hP15D5/3+Hm6YVXe376ANMGu1KV13lhegSX+Pwl9lFHXcEUFe
         6uQStkQhRu/kTCyCdDOzIxjbF9P4HkUvIS9E5WZ6eTIOqlS1Jxf+biXmEOj4f6r0C0wG
         cDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713220772; x=1713825572;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ac3F1fJJ95GZsfrpKXg26vPBp7+1UKkMcMr/20bdqo=;
        b=A0jR6xrM+xsHRRKM+4Gh4j3cVhfjV0/2ymnxzVYF4Toi8V73lvTpl8HlY8mbwKk6MY
         ANBKW2pPiQkeALBmtGq++OlT3lxumknvfzupXHMdcRQX57PXuLhGy1MYHyopkBU2mWRl
         UXQ24PLBg8LyvLUxWkAruqgmROKL3Rlgl93F6f09VQGlHVaJ94tRomXXuySkcpgiilXq
         03GcI/lllKLzF8i6ir00SIaMdOiPr0r6P162hRwCx0ak7urcF77Pcf27ZYJiZ9tw6N2q
         6HIlr9HdQmCvSiqBAjvTAFHBLhCJjS9ShBmhZwKAVF3MQ+q80vYQqJsgzhrMJU6wRtSq
         YBfw==
X-Gm-Message-State: AOJu0YxVA8zYgBMOw4pp+wKHgjgSTLkVG+mfx4CIQNaNm+T3xjevvD34
	xO1wdyrfQuftz4lp6wbHb9kWlshTVdmMQiQydjLfO9K55ZGFTYyZVD+8dw==
X-Google-Smtp-Source: AGHT+IE9wIm5XEpZM91tOWgxvF6NtANKOGOpeKcy32rpEGXxNqmQoYL74CclVSW4sj0FUjtafzUaLA==
X-Received: by 2002:a05:6830:160f:b0:6eb:7950:50f8 with SMTP id g15-20020a056830160f00b006eb795050f8mr5908441otr.32.1713220772135;
        Mon, 15 Apr 2024 15:39:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w7-20020a056830060700b006ea27c70ab1sm2045598oti.27.2024.04.15.15.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 15:39:31 -0700 (PDT)
Date: Mon, 15 Apr 2024 17:39:29 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/3] man2/getpagesize.2: tfix
Message-ID: <20240415223929.xl3lk7a5q2hpqvoq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pvmuij6ze6f5ltcb"
Content-Disposition: inline


--pvmuij6ze6f5ltcb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/getpagesize.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/getpagesize.2 b/man2/getpagesize.2
index 7abc3a246..fcdac938a 100644
--- a/man2/getpagesize.2
+++ b/man2/getpagesize.2
@@ -61,7 +61,7 @@ .SH HISTORY
 and it was removed in POSIX.1-2001.
 .P
 glibc 2.0 returned a constant
-even on architectures with mutliple page sizes.
+even on architectures with multiple page sizes.
 .SH SEE ALSO
 .BR mmap (2),
 .BR sysconf (3)
--=20
2.30.2


--pvmuij6ze6f5ltcb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYdrJQACgkQ0Z6cfXEm
bc4j4w//ZQq+YO5IdP3toaduI+MsXCHUQwSn9Uc3fx6zCHb3dJ2uabDxmCywmO1c
NZ9yadmREMujIj0dXrUtBuVJw0PPRQacHz8uHtNkG+ypnVwN/7Sc85Drduxl9+7U
uyvX8WkgC8NEPJPr6ZJSWFwUa3XvGqtqSw+8Umt1TSnXWBB4pIC/LVx+NjfwEubZ
XC7wJz4sfkyocWjvlnO2fBkmcgbqDs/S4q4yqWqqAXcRTnOD0Cr7JvjC6TlPlVtO
od0L+XEOiUgJOn/+OGlMq7XZYmlmE/yTqP7fSnn41JrZz3dQg7mZwoIqjrIgtwQ8
JC8fF38SdXDD6wqde7aBvvwh1+2t69f2U3cjgCZwKFkKGKHMJTKBpnPbfCHop82e
kPJraOyh/zsbetYcuQxDoc8hjJbnoCVga+6Mv0akeRxsz5rixaU/VovV8JNwClK4
TGFBAAjJjFLLzE/wRY00OhfKaKiXqGIM3r4rPaZrmVSCOPs2YnG8KlXcZJWGScyL
sBSfw9IXUg8KoMIPUYLg/DX2fON3GskUe/W3JnJO91HAIunxCodsISLHYEh+zaIw
Bcly/BuXs8CM+7Ti1RlKyXbqHcoGpL7awhXwJBCNwzkoDO8utfrfUdnnmziDWNd9
mHRiBLxfA245uibytwcr5FjP20cDkqVRAV9ACGlOg+IIwWB7Dhc=
=ZbnX
-----END PGP SIGNATURE-----

--pvmuij6ze6f5ltcb--

