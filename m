Return-Path: <linux-man+bounces-4088-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 763CEBCAFE4
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62A8A4E21F0
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F657283695;
	Thu,  9 Oct 2025 21:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eTsIVydU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E35215077
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047067; cv=none; b=rMgSQsOCh5IVsAWwBILWAXQ2banc/zpRJo+DkSBtDtO/Z22+ze9mgdxysUR7wy/eT12FA1iUore74jcR0BTR/UvAQCmDJWPxjgyswPA0BIrAuZKN+xw8a20V5KouHzWLLdrCjMfRQZ7TQ8oWiYS1RFSld1TL2z2CZeCcHRl1YJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047067; c=relaxed/simple;
	bh=07vBNyvkzbwN0f5hfKR/HPAT4jVi8yR6CictQ1T1CXA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsOHYRLn8Gn8cT5Af0fLafe/k0zmPhQwa5wyGjp7w33D669NGVtdmzH4unfJ8oFZMN/2N2nX9svAIxKbWepG9hrdheOU/1hpmIOHQ+AVdRaMaqGBa3z9plKQzufdh3Bx/l+EBtIajVjf81NUELXntCmvBZLGWjDZ5YD3SjYsA3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eTsIVydU; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7a4a993dea6so523852a34.1
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047065; x=1760651865; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zSs2nrP4ZsLc4rr8ALfvh8gTnK7zOZb6SHmXL9NA9ek=;
        b=eTsIVydUnBeP4W4TTrcC9rdlSRotBqquYedMIOK5+tMxpAhvI473EbNE19Tlj30s87
         jW4jZ5XovODdmNPEpNP3xJnCdAFRkNmq7S0SijLf8/5cpC2nq0E3q/eVwK2g8/nHKnnA
         bDabjLsMOqJiBawJWswFVvXiy6AOkpvm3Pr6EX7g4p2u9DMLDFv+AUXrwlwTsRKW8URn
         nJANda6II2L0zGliAWqk6VQ+EgAaBI8ymp1sVtUM3CdoJpY0pq6TVzsDeMYp5jmm2TZs
         vyLk+znsbSg1uJMx0PP4cXu3/phVI67Twe/jcIgedt420PrkLmob380EtYPnMtrzQQsN
         bUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047065; x=1760651865;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zSs2nrP4ZsLc4rr8ALfvh8gTnK7zOZb6SHmXL9NA9ek=;
        b=fg5zTIMacX52MshKe1wOupMRogQxbWOn+BsR91Q2c0EuUWFbGIUcyzL61G4dyv6FP4
         Y+mEqeLHqtwTnJPHg7IoGiDjGHWH1WzjqbJOtRYqHjhp8gqYU3HArdQ4KAIBLfmnxmFe
         KbGt1QVhF8bjpWWjsC5/GjLao8dumGPRSzgS1YXddTQh8k9TZV7WsXax7oeExNmCRpuj
         30Pv2BKe4rIhmcBjhR9KCFKvrraThdzGwzXf7s6QcOSI/lbn5jSWMW0W2MEHzZmgtDXw
         iy6OOYlfEucTrsiWB9170b5EN25i8XxZxJI4Z6k50TTNfRawFhdqZDG12lq20pkx5nHm
         OJMg==
X-Gm-Message-State: AOJu0YyWeSz2Zsq7JKCs7OQ23f/Kw8os0DeFqud8mXv977taP+kjZHEC
	FwiPLoCHbwzAge3nBbq5PxMrxuZoOwvolNwtr4QoykFUW3oF2IWzci9J
X-Gm-Gg: ASbGncu4/cem+LsrRZoHXIs1QY7U0+2fZyoMklvDORCYTmX3gzv6GSRM1gPUspSTLpS
	/Q0NF9FIT/e44uN3ZKRHozKoxEcbE1q1TkTxW7NwuZAq22lzkCQuy8nwC2uw5ou4XguIeo2zrmH
	mECJi8/YAEElso3x063rEXnYKPGBv/Y8hAJd8xI7aGSrvdDX52JF9OKMnags1dhca9toiue54Ur
	NVJQSyDmAxjPTfpY8zpnqLj9nH1fqYS1B+QXvE+bhfNXbfuHUHQfqjdnZXcmVcQTpcVs88i/rTN
	uwP6L88wCXWQI41mez8QuexH8YG8pbDBTD4yPuT0IXPhNqLnGk+ZEUr7zrjdlFgl07nynCUlWIz
	qQQuFVlV+WRjMdtdoC7lnEeOcxq52pHx0w8Z8Q2WV2E0oONE=
X-Google-Smtp-Source: AGHT+IGdVPrQvK0XKlkSYTBAs0iqpFCcYJ99FwgsnovIre8Z7gh/l6bNaEtQRyoL/Pt/eXrS037RsQ==
X-Received: by 2002:a05:6808:188b:b0:43f:4c41:bed0 with SMTP id 5614622812f47-4417b367aa0mr4426866b6e.12.1760047065396;
        Thu, 09 Oct 2025 14:57:45 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4419887fc15sm189368b6e.5.2025.10.09.14.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:57:44 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:57:42 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 4/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215742.w44sai53jje46m6h@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fgcda2fherzpbyu3"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--fgcda2fherzpbyu3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 4/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Use a more idiomatic means (than numeral-width horizontal motion escape
sequences `\0`) of setting table entries that are indented with respect
to other entries in the same column.

Use table region continuation (`.T&`) and the `A` column classifier.

See tbl(1).

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 77ccca369..4ef23a4bd 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -150,11 +150,15 @@ .SS Linux console controls
 Restore state most recently saved by ESC 7.
 T}
 ESC %		Start sequence selecting character set
+.T&
+l l ax.
 ESC % @		T{
-\0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
+Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
 T}
-ESC % G		\0\0\0Select UTF-8
-ESC % 8		\0\0\0Select UTF-8 (obsolete)
+ESC % G		Select UTF-8
+ESC % 8		Select UTF-8 (obsolete)
+.T&
+l l lx.
 ESC # 8	DECALN	T{
 DEC screen alignment test \- fill screen with E's.
 T}
--=20
2.30.2


--fgcda2fherzpbyu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL9YACgkQ0Z6cfXEm
bc7q5xAApEiucFu+bgTgln1/fVOCKf0+3MA6i6vcbjnmf+iyyBe6mZ80uULrbaHJ
oIteSV1EklRm3AfGD3uMgcgHnFKZAlQUWmGyUqBksfmF+7jut+TaUO7EtI7QBqMF
3Ugd8GAX2BC06pXi0ZCjik/7Cfm7klOry89aqxJWVmNNeBOlmwDp2HDwO1uGJpVL
lSV48bj1Zp7gbu65wKf5SE5vtd0kgw0w+xy+U9KQLMIrUZ6bxRHgeVOOjNFDEl9Y
0EeDIXCQQ0MKJ+S8a3Y0H8Yja0LsSjToQhhYm4Uy8Fp6gjMpFfu/3FGC3/GnDSmY
vXe/JjTzoEiKlBi2E76eyu70SdY4ppt996KK1FOBKmu1H4T+Kp7Md0kfrN2nKiwu
0trGNqv1zcy9p2xwHlDcv4nDNyuA8AC9CVHiJwYOOYD0pvlrQfM603joqrMCcd4q
RJ7nnDYsuBndZJtEiF0AnJbos97BWC76QiAovOKccRxMJEhT6tVAX19MJGCflFGa
N1r0VchQWM027pk/oluSOUYXl5PQBTLD11g0vLrR4VmP92sZgkjuIRF9qHLgBUKA
OXYdDwTFQ31Xgq40FYGBU5tlDyni0uqDdqY8jBou5TxnhjrW2LcGQ17MuGZPzwtc
3l51+1SlxxSX1QAPJwUdx3YLiteB9hFtIaFAs1MwPNNiinqoJEA=
=hWyD
-----END PGP SIGNATURE-----

--fgcda2fherzpbyu3--

