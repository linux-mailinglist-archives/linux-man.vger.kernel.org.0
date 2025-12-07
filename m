Return-Path: <linux-man+bounces-4371-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC7CAB638
	for <lists+linux-man@lfdr.de>; Sun, 07 Dec 2025 15:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 727AB3015857
	for <lists+linux-man@lfdr.de>; Sun,  7 Dec 2025 14:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EEE298CB7;
	Sun,  7 Dec 2025 14:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="duodhK6J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089C01E832A
	for <linux-man@vger.kernel.org>; Sun,  7 Dec 2025 14:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765118772; cv=none; b=BtSoZEVeh9zK0bb6ZFUutT/2CiPwe8CPpt9jBXZJmlLSRgDnatIdfHL1zB3aMrQme4wAEHftf/z0lJibcChdyU/4q3BumONi+M9ZKePqm6k7kwrlc/kzEvnOCZuQUXO4pDHEE1zSkY/nRwgEeLGf3cSkrFwhWDqG4gjT8xgV2x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765118772; c=relaxed/simple;
	bh=xmLr5fRGdfye8V3yVhUyFk/DO5gGUis8qYaOhInMEL8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rokYbr4VQO0cHJdCx999WWSv8zLu1hTNAueSS8jAb0MuYswHlKZ1F9te73EDYu0EPVbTF6OD8LxEuCkZ5MXTi/Ywjj7mBHWYRHnPBYfaVOLuHCIvWAIs0GpA6WyNkcnESCB0QC4VfS0RR/MLZMBxWt8Y0dsA+6ELuw8TzoBVAWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=duodhK6J; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-6420c0cf4abso3789490d50.1
        for <linux-man@vger.kernel.org>; Sun, 07 Dec 2025 06:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765118767; x=1765723567; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xmLr5fRGdfye8V3yVhUyFk/DO5gGUis8qYaOhInMEL8=;
        b=duodhK6JJJT7WE7TBR6oaOgbFecRMjw7aItsoQjicnJkzfZiH7RGx/hd4qMCdp4ZcS
         6GA48VQUOJ+gtGVdG3g2x/fLPWdbyW0NnOYXL8FlkVvbmUSatxQf8U6TAs1Gi50hVNGZ
         Z/LY7RgbGDlZ/6sGh79qsdENTK/kP1qcpQtVLGihjqdYjgH23rSnHKpIowjoOREoYdeF
         1p7lkWICJjODiDqC326oQmu9VoUAi0fFIX7RgDyfDPlCHOeezHxK4aXweRplgbFPa17I
         Vkx56nJNQz3JNClTEN7SQdNdrQX+vklKvv6h4VlHK2ee6+UDu3UNLtJgu3PXu5MKXAPf
         JG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765118767; x=1765723567;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xmLr5fRGdfye8V3yVhUyFk/DO5gGUis8qYaOhInMEL8=;
        b=GKvA80xXaxb7lvIZmXJ4irX9r/B7zCJu6BLuvbnIgXq/4/GSjWYxbdKJHt5/3BAM5D
         wVLA6LRjyElutRifMmXP0FWMIP+N541Ld/l1k0ZMMqsAjsdzF1uQeV/PNiV43e4yctZh
         lnqUj+xKr48+iZbJcIFSRfUCi7f4plXbbVGYhboajoEFSgEDEI4bcwbKNcHoTGXzZ/QD
         Af8qKy7p5jIytAuJs97OQNzG/MDGMh9c2giXGCPzcOj9nrRQTp7U/SQYtDZBw3F4AoKq
         vfyC0RdwB/Gm9sQve9gyHNqDMITRtfYePrXGSLexCtTV/uEM6+NVlUTtR4k1A2+YGSh3
         kxcA==
X-Gm-Message-State: AOJu0YwzeySeE5Ii+WdtaIFtJjqjOwI3LR95lfqtRiDNkzC/jm/KNxBt
	W8PXbJAlpUkgz6/KImYQHHhgw9hcWiXughLl8YMKaAe1c5vWBBsEnf3B
X-Gm-Gg: ASbGncu8o2Rqxr8R1/MpP+HCyayvL20Y1sG/ZqedV3JcrATOy2/P2Kj/FsDLeoZJDU/
	HU1mdMV1bWWVy25HwI+mj3BiClJB/1r2Vc8rA+L32GhcjGakimiJUiBAsA/URc6Wtx1COQsRH9T
	D/IWr2hAoSJreC7KmZjHNMFRKje3+kh7oYzIAVGs2vYzo0qBGrn3m62aDc6CVJsqzhC0rGYUDno
	+MAlaIPClOtBWnXTKAvDEQzRBBEm2FGRIwpIK8t+63l6pWcOy+Rv7yHh4pYtWjXqEMcrwPMbKRO
	Jx1NOPYQ3Ua/KEb8f7Aqnd9w1cGSXmjVitCwxU8GRkDOC3jDwhfdSGhAei9Oh7slTjsVOf8RPcs
	EGwbLDkEC6OipTIYDDLUAfoZja/ida9SaEDafi+Nz40gB/KYZvM01CpRwnzRVPUl9NONo5851uH
	NR
X-Google-Smtp-Source: AGHT+IHex0mIwAYWAVmEEFcj9bNlq66ZL305Sx6IfAtpKPvYCcLPona3V1+xDZrckiFOtl7BgDQJoQ==
X-Received: by 2002:a05:690e:1386:b0:644:535a:64a6 with SMTP id 956f58d0204a3-644535a682cmr2812188d50.36.1765118766679;
        Sun, 07 Dec 2025 06:46:06 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78c1b4ac94dsm38159707b3.9.2025.12.07.06.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 06:46:05 -0800 (PST)
Date: Sun, 7 Dec 2025 08:46:03 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man3/getopt.3: Assist getopt_long() users
Message-ID: <20251207144603.o7yh2azgezbfzpjd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nvq2s7g7xpdgtyab"
Content-Disposition: inline


--nvq2s7g7xpdgtyab
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man/man3/getopt.3: Assist getopt_long() users
MIME-Version: 1.0

Throw a bone to users of this function who need to report (in a
diagnostic message, for instance) the identity of an invalid long option
name.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/getopt.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 8495719af..432ea1252 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -300,6 +300,12 @@ .SS getopt_long() and getopt_long_only()
 points to a variable which is set to the index of the long option relative=
 to
 .IR longopts .
 .P
+Its analogue to
+.BR getopt ()'s
+.I optopt
+is
+.RI \[lq] "argv[(optind \- 1)]" \[rq].
+.P
 .BR getopt_long_only ()
 is like
 .BR getopt_long (),
--=20
2.30.2

--nvq2s7g7xpdgtyab
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmk1kyQACgkQ0Z6cfXEm
bc52YRAAhW74ME+mY0iQBwYe90sNHgr+NRfUNDhjNeEDqR1qgdmMTak1OrrzdFGk
nS20ONeNz0/Ao8pbjHpZ5nN+ZuG6eISeP+lWTNzrPhIOelZB/rDkPBMFzlEXZ9bs
mBeBwYwJiPNTtOthw2DwyVg6VKkW8zQb5LBvUZvhZqzSV7Fm7EALt1TKja+DM1rj
sJoUPAFetgDRpfgWaef1uBODhOaimIpqyitJ+I6tsHEuJ5ZB33QL/pXfOfup8Cfe
B1h7S1CuJy4wokh2Yf13GkE2G7SePe+oqQkSKdnAknRzws+XRdehtYTFcX4WuNua
LlJ4iNKxeHXcni+SkMtrHGCEF/NFSiv/UpfzAN+oCShK0Jw3BuFS2JXy3tMC/rgJ
O3f3xjwPIEOXUa8rUWFQ/CCYZNGV/VzYC0evc/8RJm2kz44fp3j45qK/Xwj7tKb0
xx5RAx5msjlZmrMWdnT/Ua05M0+0LG3vmk0cvk+kg5xrPzHO3HROxUEaP6yj2A9c
dJ+p3BV8x4abCSFkkaRvYM9/EHlgwRJNYSb+IcAAS/493sKRH5u9g+mJE6/nMD7J
MX58Y3JcPT3oPtRXBD4IVcDoldyKhCHITIIqmQg2DElPsn4tSjSJd4u7r+eSOIK3
MDaPrwE57Pt2KM0fbWOefSLDGiulLoNZ28y6HTsjD/GalA7F1/E=
=ls5q
-----END PGP SIGNATURE-----

--nvq2s7g7xpdgtyab--

