Return-Path: <linux-man+bounces-4631-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBDBCF4767
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 16:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC3E33005028
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 15:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC17309EF2;
	Mon,  5 Jan 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DEjtA1bz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3452DF131
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 15:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767627153; cv=none; b=Cr3Fyih9LJ7naB8VZP06O/zTvHAM8L4GkPTOqNxQBSuc1ZJYtF4w14hROemZbKtaOdGqx8wKl42NJRfKQ7sxMZhdT2xFcuUGMy9IZqsMTbQnvzGQNTCifYtP5i00Qvg6fXENwp2kAigRoaYMAkgbbxVhblT5gqDwq3NHSJXmu50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767627153; c=relaxed/simple;
	bh=NUOpyob1L9RbIogp2qpgLsz3N0/lCFuLFdlIAfC5Qe8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=HIOuQB4C3l/Mm36fH8v8VuY5RPBADwe02pcFspVaKOq+Tyuw1SYX9yLV9gyvDabtBcKEAc6hWfcmgD2uGv+yBp1nzD/PUIT4HivCVLzpQm6c0sO5DaojpugAvKXMiPwGHkTFfZ75AGPrcnLnAn88ELaqCA1GemAQfekwHYP1jvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DEjtA1bz; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7904a401d5cso774687b3.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 07:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767627150; x=1768231950; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2+B0pw6OIjyBE3ZxdWDT1m67PcaklYbJ6MYfMb+uSk8=;
        b=DEjtA1bz7iq69WJvyi15wfVHz344QWzH35QjHyJXinin0UJUe9rdVWgbayKmzMTEke
         EELncdFnaA9PkYjPlLHK8j/CqiEah9NWUWBJL4rdlDw7hZektUGliNPcWMWqBtLbKads
         elhILXCplgRxBFeyOCc8dmxRXGkWaXCKoL2YpDPtIplyxt9iFEH+tTGO/GEjoZSLSi6o
         yTJQc3nMMh2Xyc8LIWogtMDZh3ompJGte14U42TVG0jgjwGzAm8mUbePuH3tg5U/RG2p
         30dRF6I8kNERWdd15oCWii6IX8+eTG1i9TcI5szoymWp8051xBZrrPnTOKAV6jbWJUUB
         CIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767627150; x=1768231950;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+B0pw6OIjyBE3ZxdWDT1m67PcaklYbJ6MYfMb+uSk8=;
        b=ZX+Yww0waxi/sHS9LGNQMXqbqyeBJVF3iVCV+f3CJIArBLaL590E46PpBCxTwidFxS
         Xz61tLxAygMXtXAGgkzC0AhWBgCEusKfA8qnw4pya37IEOItDqMTNK0ggbBI45RhUhpl
         rBTbuMwpaX0OHWzS0qKB4AanS0rpFV2uPy6ebIsRzUy+fkibfgmMPPEZZCissf4v5wPE
         Gw03WcsdSydUGJRysm35LSY0AgkDFUgrXMTaswbsLPDyKsR+ugZS2bU2p2AxsMJO2611
         BUqAzD0vwCLGWHft8nt1yoV4WXPubN6vAJraT0mv/0oCpj6MfYZm0d+A2Gr39b/hTQ9c
         19cQ==
X-Forwarded-Encrypted: i=1; AJvYcCVomd1vCheuaOLCEbaR8ghgwy3gxTYzEcWtpHWzUfxLRBhMT6Gi7LcWH5JvR+A4yjeqsgW/ylrTXcg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzok+n+F5+wJqTjVHU786ZeKFnrEaRMv12GlnhHnm7F3eJ3vKZf
	IUWygQO53m3+b+hDtMBNB9J/ljcfcEJyu6hEOtaBrlctllkoXu605tYk6GsZwA==
X-Gm-Gg: AY/fxX7rmE5lc44d1UTTv/a1IiC8KJjLeVoenE1Jdh7laZz1xkcWXK3cA19KOo3G7y/
	qmbuaoP8sd8yejpXTgtcNMpxpk6HnzR/Z46AgpCL6hNqor6c1bwkVSMH5D79WdIzxeF5HxyxOfB
	YmLFJQ740wA9inVijWjjgsqAZYgsuXbXXTh7r9hxofpQGVipq0CgrjQKVvxQIJUEFvjykCpj0wY
	a9GKIAQjqAPGge86Drn0VgxGU1yfqhM7duhqX0zpRRdtrf0pOmNT65/lqDHByuP2uCVbH3ZXf5f
	zgm9Be8SEOt1DFHVZIxJtbA1mO0YrJTZdSYcQ7Txgl5HknN5dIjDR45cz46Ldku5A3lt5VlpAhv
	q9k714J5zfCGJFbif9Bx4ZwQCJCBbr1mFaJwqJvQu5MOV0yY1aKnEkr+BsxbZBWpB/RRMPsU8O7
	h0
X-Google-Smtp-Source: AGHT+IEMt9I2bhAi6dilxVCkeqkuXg8LHtt6mqyl3LIQSvXAdr10Sskz5jT0B7fqNAth2kDO0Yh7bg==
X-Received: by 2002:a05:690c:fc2:b0:78f:bceb:e565 with SMTP id 00721157ae682-78fbcebea8cmr541564467b3.50.1767627150195;
        Mon, 05 Jan 2026 07:32:30 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb452c44esm187071497b3.47.2026.01.05.07.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 07:32:29 -0800 (PST)
Date: Mon, 5 Jan 2026 09:32:27 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/12] man/man2const/F_DUPFD.2const: HISTORY: Update
 first POSIX appearance of F_DUPFD(2const)
Message-ID: <20260105153227.6tm44wrjaonclphz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6cgx5cyztun5t6hn"
Content-Disposition: inline
In-Reply-To: <24e850c16b1a16da197c3e86ec756a7f585ef732.1767599119.git.sethmcmail@pm.me>
 <2ebaafd230336d02405815949315e1b0bdf2685f.1767599119.git.sethmcmail@pm.me>
 <318b6e1e5d8a89b28ecfafc42794efd8a8ef32d4.1767599119.git.sethmcmail@pm.me>


--6cgx5cyztun5t6hn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v1 01/12] man/man2const/F_DUPFD.2const: HISTORY: Update
 first POSIX appearance of F_DUPFD(2const)
MIME-Version: 1.0

Hi Seth & Alex,

At 2026-01-05T19:18:37+1000, Seth McDonald wrote:
> F_DUPFD(2const) first appeared in POSIX.1-1988.[1]
[...]
> -SVr4, 4.3BSD, POSIX.1-2001.
> +SVr4,
> +4.3BSD,
> +POSIX.1-1988.

At 2026-01-05T19:18:38+1000, Seth McDonald wrote:
> F_GETFD(2const) and F_SETFD(2const) first appeared in POSIX.1-1988.[1]
[...]
> -SVr4, 4.3BSD, POSIX.1-2001.
> +SVr4,
> +4.3BSD,
> +POSIX.1-1988.

At 2026-01-05T19:18:39+1000, Seth McDonald wrote:
> F_GETFL(2const) and F_SETFL(2const) first appeared in POSIX.1-1988.[1]
> -SVr4, 4.3BSD, POSIX.1-2001.
> +SVr4,
> +4.3BSD,
> +POSIX.1-1988.

What ordering is used for these?

4.3BSD was 1986.[1]

POSIX.1-1988 was, nominally, 1988 but we all know how standards
sometimes lag.  It seems the record is murky in this case.[2]

I've seen dates of 1988 applied SVr4, but no reports that it was
publicly available until 1989.[3]

Regards,
Branden

[1] https://www.oreilly.com/openbook/opensources/book/kirkmck.html
[2] https://luplab.cs.ucdavis.edu/2021/11/04/the-hunt-for-posix-1-1988.html
[3] http://ps-2.retropc.se/sites/unixarchive/Documentation/AUUGN/AUUGN-V09.6.pdf

--6cgx5cyztun5t6hn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlb2YQACgkQ0Z6cfXEm
bc5Tzw//UN1Izm9+s182O0uDIodcGx//50r9SEtZH0mVBGLd1hKmzD3hHoHiwMNZ
O8VNPWPgsPQX87nmfvO76r1xv7cSnZM1ZxJs80p3aC7cxd7jkyZNLOHVtV3sHH12
Dy/9Z6AR5v8BhDK3cno6wetIafy/YT5kb+vmiYrKErgqatIYIUCQY4u7JqPE/rrR
cVqUJFCKphb7RJpQTDVUDSkdlV9gkz2valJogI3cVRlxnhQeQI4G7kmrqXp1GtLd
FSST4+KXRLqsumvRgCFiI/e4SA4U+VzqhBz/0Qdfi89rdqsJts6uTby29E4+D4BB
am89sUp93BGMEQKaeB1ZfPlUatgE7vjWPTlj0mLOP7dRhMiQEGp7IRxBbWwZLSXU
o/ngia6LhrDdmFaxCu8Ma5cA6o3wRCGsBHr9woMMxh8pShzAVWkD3DxNkBRMxmiy
hqoBvumgprFIDL1VXIwQIAUu9qLzEnSKfxAiYSt3l9/0lpe8+kyVLYKHk8Rg3xz0
7TRJSZHqRT6YiPduTr8cs0JRWZu2MOYI2tDkOjcm9wMzH/N8MC2ITfp8bT2ldPUJ
iokL4pdht41gTqeWhRf35U/SWEWCPT3G64CN5fZBcAKhGk9L4sJJsoGrlp66miGD
dp1Fw9yxeVFJfwyupgUbCoCOWBQNFZJAQssMZl4SyYA2K3MmKcA=
=bnQy
-----END PGP SIGNATURE-----

--6cgx5cyztun5t6hn--

