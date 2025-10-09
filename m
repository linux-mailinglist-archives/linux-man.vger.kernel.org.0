Return-Path: <linux-man+bounces-4087-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B31AFBCAFE3
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94EC51A63DAD
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A21283FC3;
	Thu,  9 Oct 2025 21:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NX8XJ3/g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77926283CB0
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047059; cv=none; b=tuf7J+46q2/RJQzQVg5oTxc40uv6ujhdsotyayIYR6QLRrP1GyCCteigMirQdj35vanleIJu+ZPyceDBcBRT0OSbZss6rwo04e/QlzVB+jf4CTsN0B32Hi58L6W8+6YSjdBQrrncCl5TADbn4DqmEAQSL+DInGii02U64hQ2usc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047059; c=relaxed/simple;
	bh=YC4rnMr8Se/YrsfPlf4hNSKVgeTzbzCKBPi5jPzXWX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mszknMFMtG2x1BLAceCALTwL0H6/h5JyvhKzGasJJ1mhUX5CiT4nH666C0BehuLoJCwHZX+H9ZPvEwiuRTQxzi2+3Mw9m53C/qcbumxzmo/WhMI7jLEB2rNLhEIzad4ula4NhdkntJEwsRx5GGuF0lsR660UbfIcHwHO1Z3Cn2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NX8XJ3/g; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-649a715fcaeso379253eaf.3
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047056; x=1760651856; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UNyWIebjtoMWkckWKQg2s8gw5RmW00agVHeZhh8qs1s=;
        b=NX8XJ3/gu9vlESiH96EZa6+ufwWHi7sVF6JID3lMSgGauXvepUSZ3eIvNbNmtg3wVS
         BXup6Tszcxnl+BuRmQ0th8PtPJUl95WrN0GNQQaWtDya2KzxQnhD8OY+bcRDTxB2oAND
         zIRgnDgPNAwEGkKG1q0DpmTDOt9s8O1RfiVjyTrPJHEoxr1jxnYCqh5ozIVdJ39KAPU/
         1DuCTbRHz7TUPa/PYrG3ypcHsT1alqY8zozHvfFqR6k6RdeWzKhM1k9wzbzfmUMEcjBh
         KRXy5fG52uix19XF8hMwAaIIeYWnAnGZt0GLazhaYO4c32dXxkVUriT9EisKyb7jin7w
         7cNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047056; x=1760651856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UNyWIebjtoMWkckWKQg2s8gw5RmW00agVHeZhh8qs1s=;
        b=kj+DeF0YLYAM1HX6d7dMcKd6cVFbm85AkY3AeGBOTdNM0yXp3UvCYpQOUp4gA7Qmfm
         p8gy1JOVVcU6E7yEH6D5vMQmvExp9rw3ElVg32MagyVz/mPBC2g1F2uiOi7N4sl8+MBZ
         FtLfm64aRs/WzYyinfgB2AeaU76J+gXK39f6NIArsLlCmdkh8rNZhHIFvu7FqWDylYqx
         2Naap3/y6NJKqZLoGmwpQN8XngwoGotsfpx/zKH/rn05ZkIznfrh1Qm7pqRAAtxf0BCx
         5iqXPVZT0fAtP1ouYtAInkbeJ2HQGEG4PnfWfyeX3Q2alldPsrGTgyismIpiyCycPWrR
         ab1Q==
X-Gm-Message-State: AOJu0Yykg6/RqUP4TXPy5SvgTq1jd16MuMzxI5ZuyOFcYOc3qDWGZoCW
	GKachRlHUWtTaMMNLxSBjbOe1PBDHEipfrRLnJcVUDEc48Soa9ZZS9U6NJ5rPg==
X-Gm-Gg: ASbGnctTPy+kLJlKYHxAi0syjLfL90JZkVAxEfKv6cKgu3lEXXRXTzmTDV0P3f79nfq
	jpz19Dp0Vrg57VTPZ3GzOQ1ax/VGmRStHMatGzHjLO4a2PDUAwWOv42im33IucTdKXZ2QmvL9gh
	wYvLaXKSZdGuEE+7HwqRIdpGSeJaPNVLsU17tg8MTasIpGo3YhwDVdbhDKtzrwRmvR3kYeYb+yy
	Y8A0UMqwcsmVaQw9KlSm4j4Op/xkZ3WsC5LFRa42crugGStdYcI8HikdBKpwn3nO0gqEBRcqicq
	CygnAMPoLLLOQFFJtF66+JXl4mt5XD0JIf89PUoXVtz1o6q5hON5cnejOrSFbzcduGrBT2Wd/FN
	hfKbufx93OwNXDpH2Kmq2GMV4KQpSPxGYjQ9sL3SFsKtPBX8=
X-Google-Smtp-Source: AGHT+IEA6+EPWIupKGrLplTXZphXLTfKrxd/qk7Q0BX2gozBGBihN929frLos0DoQYTsIXTx098LJg==
X-Received: by 2002:a05:6808:2123:b0:43f:9c1d:ae6d with SMTP id 5614622812f47-4417b2dea86mr4507624b6e.16.1760047056338;
        Thu, 09 Oct 2025 14:57:36 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65018130837sm238016eaf.2.2025.10.09.14.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:57:35 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:57:33 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215733.k3dgj5mafiysxa7z@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="knb5lbjggs3nvunj"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--knb5lbjggs3nvunj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 3/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Put lengthy table entries into tbl(1) text blocks, so that they don't
cause output lines to overset.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 64d914d7f..77ccca369 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -131,7 +131,9 @@ .SS Linux console controls
 ESC c	RIS	Reset.
 ESC D	IND	Linefeed.
 ESC E	NEL	Newline.
-ESC H	HTS	Set tab stop at current column.
+ESC H	HTS	T{
+Set tab stop at current column.
+T}
 ESC M	RI	Reverse linefeed.
 ESC Z	DECID	T{
 DEC private identification.
@@ -148,7 +150,9 @@ .SS Linux console controls
 Restore state most recently saved by ESC 7.
 T}
 ESC %		Start sequence selecting character set
-ESC % @		\0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
+ESC % @		T{
+\0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
+T}
 ESC % G		\0\0\0Select UTF-8
 ESC % 8		\0\0\0Select UTF-8 (obsolete)
 ESC # 8	DECALN	T{
@@ -780,8 +784,10 @@ .SS Comparisons with other terminals
 .B hpLowerleftBugCompat
 resource).
 T}
-ESC l		Memory lock (per HP terminals).
-		Locks memory above the cursor.
+ESC l		T{
+Memory lock (per HP terminals).
+Locks memory above the cursor.
+T}
 ESC m		Memory unlock (per HP terminals).
 ESC n	LS2	Invoke the G2 character set.
 ESC o	LS3	Invoke the G3 character set.
--=20
2.30.2


--knb5lbjggs3nvunj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL8wACgkQ0Z6cfXEm
bc4orRAAlhAVTfhKDIzgsnVejBfLdPVRavl8tqQU9IyRv0R3m0Dr+Jd0Td3sn7v8
r3k8iu/LdALefLf2eMeXnZ/5WNWr3DVy9z19MZiBFCmJChzzU6lpswboLxfN2csj
EGtYHtaxNrhFYn0JEZsbOxVGyWvhjHIWaD+4bQtn9IMDslelc/Vgg2/f9gibZqWM
Y/LZOHRB5YUFXcpO8/tvTRCnOMp6nVme71E7YORPQhRghQUgYF9i29i/s0BMFPwo
RheCTk1rvyv1pzHYXg2QwOxV+rjH0FtizlpfWMwQ7w3Wc3GkrbEv+2hTNu+axomn
BnRto9CU6pRBZ1Nw6c3qw0zlX0vNYi9j4tdHNhR8WdGbPorhr+HqsCPpzQfAbwqa
zzElXl3z5vwDeToUcwm1wi1SSSq0dLqgFYQpNQEbeybt4WvAFwdgMMcttsDzvZcs
eoY1lm8uLVqLhBSPVltIJWg77xNmAXzlJzSSQvxVRc1kSNvT2NtRI6qYdsTLoj/y
8fApT8Pw7tWIvUjHwK+iLj85vX54wZRkv35FNR9+B2r8LcXyUjEXQ2w+IK992clF
E9T1AxU+lVutxYrH70W8gg+bOgQwrrHZnoO7ATSpiszq/nN3IgCdu+I8FlLHvsyO
TdWFb9B01ayOQuDOrWEHPive87sg1ACyOYRDc9nIhMHi4CQhzys=
=XbYK
-----END PGP SIGNATURE-----

--knb5lbjggs3nvunj--

