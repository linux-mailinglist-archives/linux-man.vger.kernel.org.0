Return-Path: <linux-man+bounces-4085-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B56BCAFE0
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6815B4EEBC3
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD16283CB0;
	Thu,  9 Oct 2025 21:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g+nGnpp7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D4283C93
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047037; cv=none; b=A7Brsw4rtXD8APg0IALj4kA66v/0xYmoaQ1w37gWGuBTOXI1ue3cPTJgcbg5pXlIfbvOeRojqrrTxZ+//yS229CqLpFd0HEvo8eTrENqWGTTbfYpRFDQQHywRTLfz6B62iQCn+gcJEWW6t/T8PprKQefwL2M+TlcUVsBOf7WDTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047037; c=relaxed/simple;
	bh=jhXK9UXPrBVtP5smCo37qKLGdEV+Evc4ZEtER2cJpS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YYGPJK0JTZGbzTbPF3EzVbpg/LfQ+emQ29HEqyANfGOiGsLVvrtN1fhiJrPcAcm8i+YReucf325WyXqkfXQ9VPPkMxuN8L1A8ykDN2EcAwrISGTRDIvIb0kbwgfbEGqFUSCVI5MUmpJGlSi4ZTQEoLH1SqCh61BFd0heoBNHCrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g+nGnpp7; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-43f4a9781d8so320441b6e.2
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047035; x=1760651835; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hXfgFHo93K0DhFXS1K7o8PMnN1YUHbtMGhjVCK7p8Lw=;
        b=g+nGnpp7Jm4mbqlqG1K2QGBWDobfNuWaTTQ38U6VKB5065Wbxv3iZ2oroRRJzN6w1K
         PcC30Ul54cZXRbErkWsn2PHtb4WRMSSVGl/0a16/olIfCajTIzV66QPUV1JhgAcG0csq
         iOBBxqnscHh8DG/yjnIJbbelC9Lei4suAC4pV6WCDdPYZ/RSyhjtH/k2nOmZz+9v0MzS
         q1ApIPuv0ARg2jJj4UwdknuMhKtx5pHJPE/F9vnVE3lLlU3+uYIwZhl5gjGx7oh+8lwB
         nLbqcCv81MT44V67VPdaikQD83nlhVGBc0ta+sbH0Q7MBgb6kYeShP4IFsYSRki2kTmK
         mFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047035; x=1760651835;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXfgFHo93K0DhFXS1K7o8PMnN1YUHbtMGhjVCK7p8Lw=;
        b=L+65OxeR2+Aax3OqrC8EIftcRZZu0J+GMWi2QzGap/ERNu1+8m09P0We3EE+LAemmC
         Sg6SPDIBHLwPuJmYgEy/2NCAnzsNjMNcGXoacmUPXjXrGgP2tA9q0YZrKOvj0DaAk17M
         8ZRwfY2HpKHMb6CVugql8MmLhD6vyTzrnMSfKTiN13Ca4PEaq34huQuMnolxmDEudmlG
         3CYZO0ko2TyVX1kPd7Tt8x6laNZgMubAJiXH3cuZyY7any4ic2a/GKrqrWbwrD806Xyg
         eTS76b9fCBgXGogNG2rAXUwz/mgF65EeG0HlI0/dd9SZQISOxZNxl1Y4RpE3NpqKkjr6
         2wHQ==
X-Gm-Message-State: AOJu0YxdMKl2CECaOE7FLx43nb2XzUDpXxTlspweKaV/4IRZ5HB5dW++
	dnXTGTNWdJL4WCPLiOnjUqHfcwD0mJ1smQJyhHsCXOCduBBtgQjh29Aaam0Mhg==
X-Gm-Gg: ASbGnct/wuxe56eDXus/f1UUenK0+yFvNhW0aemQO97fjkS5pBDsewAkUmmlNGdQGtr
	UA9pVgt7CMnpTVLOstx7d17609d5qO+EGn236tSZgKkGEdfTopryOc2C8QFthRNSFalB17j/XgE
	1yjLrUnY2IvmPedFBP6MeArCwVdN9r2uXIJT+UC9PFU4EwuMVPMqcff90HMUdTSZM0/eoknAA/F
	UxXdAWMAopQBqos7kH5RikFBO7JxfpYqIkzOBL/SCGVzCpM/Zsbf0xJHwX+k0A2HA/W2vEAojde
	jvbTHPnEZQdmn5MIBpTfSlk45oj5DL5ILA27w/E0Psryxec4hCkJpE/Z7WGB1cYu0KOyyxbqIBr
	WvamQ//LpSvT0jzxDtzabd4SIlqrrJgVJGasFYm6MPY+hUDo=
X-Google-Smtp-Source: AGHT+IErSVIMRVtt6WxrCyq2UJyIYKp92gxaDh6VQAtWSY9bxMuHJdQJBUBFlHKRA6Zqdy4pkdDM1A==
X-Received: by 2002:a05:6808:11cc:b0:43f:445c:5e17 with SMTP id 5614622812f47-4417b3e8408mr4474363b6e.51.1760047035174;
        Thu, 09 Oct 2025 14:57:15 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c0f911a992sm253386a34.26.2025.10.09.14.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:57:14 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:57:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/8] man/man4/console_codes.4: Document codes better
Message-ID: <20251009215712.zhmxvmbtx72tk4yg@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cm32foniwd3uvsbc"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--cm32foniwd3uvsbc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/8] man/man4/console_codes.4: Document codes better
MIME-Version: 1.0

Document the names of the "ESC s" and "ESC u" extension controls.

See
<https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#\
h3-Functions-using-CSI-_-ordered-by-the-final-character_s_>.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index d1dffda65..e4fa71422 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -306,8 +306,8 @@ .SS Linux console controls
 Set scrolling region;
 parameters are top and bottom row.
 T}
-s	?	Save cursor location.
-u	?	Restore cursor location.
+s	SCOSC	Save cursor location.
+u	SCORC	Restore cursor location.
 \`	HPA	T{
 Move cursor to indicated column in current row.
 T}
--=20
2.30.2


--cm32foniwd3uvsbc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL7gACgkQ0Z6cfXEm
bc5GNA//fdeo+0p2CgtbIGlIS+un+LTuoMW9Swe9GLKtoBTvU2mePn5XcWkyo3fG
z0iyIbjMbUmermT93rQg+G59WJH/3+GLOeE/r+RSGOneAbkZA6ZdAb2e7Df1T9Ck
nz0DeNRkE5V/DXwq47GqeAYTwczPGtqMGu9QH/wUXoqsj6tjGQvyWrX7y+y1Cb2f
wREotwfD+aBYFOYQDtwZ2w5MnD1StoiGt6LNRO48tjRQX67L6wV9uS05X4Bxl1/a
mANtfM88wyJxETALmkbmrMD8uFdO0UMTuDp3TuZseUbmpUvMFUeusNJqYpsMagup
R9qJL6U7iwQAW/NE79A4HeyDdFm11jkhPlZwyAI+NU4NmwiqkBALfZ4T+23dRLSg
2954mpM9CKp/h3h1uhKsZLKPgdO9yMZzXzHocrGIf7wZbxTFhM0Aj5Kdz3aYL9CO
+ydNdBH7GJlrwuQl4Mukt7rqqfjfLzFSC7meAZs3QCT4khhWWLTz/Bz0oI+UBvLT
7VSeSjmb7RIu8OjadfqldqGHPa6Jo4FJiGpEitd6HdOlFLUEgkRb84KVvPCO6rFQ
A3AdU56gIqrLc/iRKfhsIpeiTapqv7cm23cgf2GrODDkuRngov9FIJFvJkUdvxOs
vNOSLfxFGVECd8gXBecB11Q5yO27MTQqKrboQjkgN1wxKezgWrk=
=TvJQ
-----END PGP SIGNATURE-----

--cm32foniwd3uvsbc--

