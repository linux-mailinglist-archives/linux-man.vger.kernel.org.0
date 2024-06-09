Return-Path: <linux-man+bounces-1051-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0083A901540
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 11:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F230C1C20A42
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 09:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FBCD11CA9;
	Sun,  9 Jun 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvBtzGXY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE85D520
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717924223; cv=none; b=RSa8K4mxbzEcKaAN7PVUXk6Qb1WtA10oX32MspgKjmD3PZWhhGn8uZwj0nI36WdjyxPl3TWzlsF3ByPmfBv8w65ky5hRuyijcjw03wnuoFIcCZriE4jC8tK1lqmwlgGu6T6rQNicpU8psG3hxgXTmOmyDbyuF1qV6Q5oOCjoONI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717924223; c=relaxed/simple;
	bh=IMwhLFlC1jxMzhx6u00Z8euSSx70hJSA759u1ZxVClI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZLmXwMmH39OQFA1nX0SxKLEFHJs+/ihUtaQD2NskOOd5SpKPyh8/9zDwQzTb8S3++Yw0f42MQrqlMNmsv3qrQU26QR3Z7C3xcIjsDkgS+LLJ85mNEGwZuAEYpDqb1uexScsvxWu7BRNYsqa2TeyLkdnKjOFmwyq+wTmL/mh+zUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvBtzGXY; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-62c5fd61d2bso35601147b3.3
        for <linux-man@vger.kernel.org>; Sun, 09 Jun 2024 02:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717924221; x=1718529021; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IMwhLFlC1jxMzhx6u00Z8euSSx70hJSA759u1ZxVClI=;
        b=LvBtzGXYziDgfBT6tmAOM+tPlEykce+Zm0SURM2zn/L5ZLGZcre9apwSsiGI43hXFr
         GyJ9dvHCwSR1iuXEeur8Csk56HmV0IMEaOWjQb4hkRrVR0fEA5AkUyuI6zqp5UhkB5Xy
         /LWYqK8CpiQPi06+3Zz95OxX0VCVPH6DS0IjuIPm2T7V89GdkKrnaEp3K+CB0DIkLuPK
         ypJc+yJtOt44n93hdgFtZf0uXHM4rC13VqIU7IBh2Cv4uxOkGyB9GjmgLC/LQJjjTrnS
         GRDyRToXqud7NnznoufczmvoycE0By6VMOhCpgc+tWJgwvLfN9kIHxOyMenlhv7IZ+QA
         GX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717924221; x=1718529021;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IMwhLFlC1jxMzhx6u00Z8euSSx70hJSA759u1ZxVClI=;
        b=LjIERtzzbghdtpdlV+UKHREpnVxVqFTEikmvXmqGLVDbs5DeduZNfvaw2Cv/0FR2kn
         dBAFVtnZhHoy1EEhJvNEPxeriL4vtULTED2tYRlkA3Q1x/Y90n2+LbIsiNyTbr2ZRHSc
         K1MnKLYOszCFKcuL6eUToErxUIxiLtj7gloGJoGgK4cZ875/O429PLU0Dn7V0GO+PIts
         aslf9QZ1PxIRFf23dKhpYKsJz9VnAQGCWP6LuP64TeX0rNOzs8DlwWcR6MO4rbEOqbQ0
         WeNQO1eRxBeBZrtFjpHL86RSXPz2QlDV2z7aRsadj/tSm2TlIz5ITt0+FA9wC96ELSBV
         EsFQ==
X-Gm-Message-State: AOJu0YxJl97OOIfXfiCGk3nXJK/ZE64JKflf7/BxeUfado884nRtw6e3
	T1OCfwoMThPizzLKszIxg1ZS9n+d1ngPggyjFMjo6FtnJUF1Dk86/pfPxw==
X-Google-Smtp-Source: AGHT+IFgIbzeKp8dLfCyn7QCPcva4ZFBl5AmpriFtK8rC2ehoCrwo6SWMu3WE0402XMkenXle/7odg==
X-Received: by 2002:a0d:fec6:0:b0:61b:3304:b702 with SMTP id 00721157ae682-62cd55ba34fmr63837587b3.5.1717924220957;
        Sun, 09 Jun 2024 02:10:20 -0700 (PDT)
Received: from vps.qemfd.net (vps.qemfd.net. [173.230.130.29])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-62ccaeef7f1sm13002237b3.135.2024.06.09.02.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 02:10:19 -0700 (PDT)
Received: from schwarzgerat.orthanc (schwarzgerat.danknet [192.168.128.2])
	by vps.qemfd.net (Postfix) with ESMTP id 69A262B354;
	Sun, 09 Jun 2024 05:10:19 -0400 (EDT)
Received: by schwarzgerat.orthanc (Postfix, from userid 1000)
	id 5B66F6001D1; Sun, 09 Jun 2024 05:10:19 -0400 (EDT)
Date: Sun, 9 Jun 2024 05:10:19 -0400
From: nick black <dankamongmen@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] memchr.3: memchr/memrchr take pointer arguments
Message-ID: <20240609091019.GA1990109@schwarzgerat.orthanc>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gqX6rOBdwadQKXQZ"
Content-Disposition: inline


--gqX6rOBdwadQKXQZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

memchr: memchr/memrchr first argument is a pointer

Signed-off-by: nick black <dankamongmen@gmail.com>
---
 man/man3/memchr.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3/memchr.3 b/man/man3/memchr.3
index bb598c7d4..24fbef340 100644
--- a/man/man3/memchr.3
+++ b/man/man3/memchr.3
@@ -20,8 +20,8 @@ .SH SYNOPSIS
 .nf
 .B #include <string.h>
 .P
-.BI "void *memchr(const void " s [. n "], int " c ", size_t " n );
-.BI "void *memrchr(const void " s [. n "], int " c ", size_t " n );
+.BI "void *memchr(const void *" s [. n "], int " c ", size_t " n );
+.BI "void *memrchr(const void *" s [. n "], int " c ", size_t " n );
 .P
 .BI "[[deprecated]] void *rawmemchr(const void *" s ", int " c );
 .fi

--=20
nick black -=3D- https://www.nick-black.com
to make an apple pie from scratch,
you need first invent a universe.

--gqX6rOBdwadQKXQZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEmi//dHmU4oe+xCLxX0NADCHL+swFAmZlcXsACgkQX0NADCHL
+sxEvA/8CfzbvQChiqrznNRwsHXUSPVsKeDoijdNOJ11ine8t8cik5xpVq+Zvj7N
/52eEi76FL/Bq2qG2fXjRVJCfU5mK6PBp4fRyVc0a1SNB2RXOZnh+JjWwzsKtXu2
PCf14rxbYzsxi1x7yys1F8ydlS7+aGAByQkSjSRA3NoYNjViCVWUACgWkpmo2hvT
kglj9Vn4+2jMAxlQRC/ry58Wz/5Az/kH15motIS4AviC88zhktL2+VM+l26+oJwi
9bZl2MDtKV8r4Q1IloDi/6V69wZQokswZGFQ1mZtnLTr+r1UW6p/p4LOgtpAl1WC
A7GTJIfa+u282yunyr/uQI2uFD7ymLpf84XS6NAb3xHp6td2s82DCm6SYkY/1gsb
YRyDkV4/tZAsbH3VBVLkbFD3tTBV7G6VKF6e8DwabSdKDD2xyEdtgzzxYf8oXluh
0VBH9pqmGDKfMjKbnUA1nirUR8ag4aKqCP2mCh5NELTihzAQf1gX0VfQ55MGbvC1
xXtVrkN25J0CwYwXgG+CX5XRb+xSc1f80sDXejNx/8q2+NmsYaMNPUSHu4MfZqHg
akErMZIZ6qLQ5uejCfou8OKDWXarW5kwZsNj3ddgR0BR9YQhmfVDxMyb2Bn0h/ol
1BdkcoJV1tmjCY38zU+sJtVkFKL6dnO/szzOzWx+KKXJBkynbX4=
=1MdE
-----END PGP SIGNATURE-----

--gqX6rOBdwadQKXQZ--

