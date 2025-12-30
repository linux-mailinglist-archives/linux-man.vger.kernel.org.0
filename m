Return-Path: <linux-man+bounces-4587-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6E3CE8D7C
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 611D330142C3
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F289C272801;
	Tue, 30 Dec 2025 06:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UcTbVt46"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A6327A45C
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077956; cv=none; b=KXgfWkK6rEL4iDjWTJdh8KgpVWsKozQFNyRL5AVUt3Rfw4Vv65vlZL1jJlIX3YXJxRRE2qjoUrw9sUjqaLUeks10raZdJrtAIupMWeujnkhjS8A0jwXrgf2HMN1IPLNWkVzEhUAZQYGzStW2cFU7omifY55RVWNeUGhdHp3IHBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077956; c=relaxed/simple;
	bh=Ejl2pPw2LJG3Z21GnRF2x8rLNzF+dR8nqTchGbf4Wv8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=T2uw5cwaWqXEq2i5VNynu6Ji9KUgsfbZHq2buOZlW7ViJvj5Lao9bXaT/JMotcukimwCW4hAzUNNkGPpsPgPbl9W/jX7jynvzdetysp/gRC81lPYkGxWTwFkK6buda7qHEHK1LTlifQR1KQNz6p9gvTxMPLMLg5E1WJ+tLfrFpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UcTbVt46; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-29efd139227so128344385ad.1
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767077954; x=1767682754; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Q2K918oMBgvg3cJo4ioGIyoe3pQHseRd9GOQ0lb3jQ=;
        b=UcTbVt46r272wzJZe7vw6EGv+Izz3NweyOWNrEOYreC74PB1cwm4flLZHPdaTccuEd
         b9pK+gmVvPcKfOdxTSr/nyCYsU3PXlAGpMJnF8EXoML4R4xeZi852Cob3TG26hAMIuxj
         u4LeJToaUsvrlgFMVfxL5JCBtfZUvUONu3uvlPQ4omaxfo5F+6VvSZlXUO2XQpno6O99
         9SeseCmtWOPXIJJ4qBdcxFuZUBga7VDh8DvHymG0Ewf+XLjhctu98bZQ9LvYhShrvJIx
         PuNjCT9pIJAvu/5yiw+eJijY8MCMp3XvMt4gl+QiPCSKmSQ/R8fDNyZWbVqUNVpPtRLX
         Tf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767077954; x=1767682754;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5Q2K918oMBgvg3cJo4ioGIyoe3pQHseRd9GOQ0lb3jQ=;
        b=TQTD2oTpbLds+OTlm8NWjYnbRhahxUURJU8FX5Tpe71iMoG67X4Au11XeZp1QWl5qa
         2HdaRCFee/C1F5RuK6xViyx2rxGVvOdt5iJWAeFgW/cvkfu/2JeZwOkPo/we0px+NohX
         z8enROvpA12WZrbDpsfoaSx+3TnlerZa5Gc7T6ClKNiuAJtlgt+xqFb33+iWamtsRXwq
         Wc/hx5cu/L0QVYZT/BP3EfQGKyFVxSMY6Xcn8W6nhIXatKktLehEvBeySrtaCzs9iWDF
         Pzx25jTYjZwXbuhi1iw7DQp0FGmr6FzJ/gai3hrE63lvJK+k/GkplDTtcCoR87jxPya5
         OHFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWxBkMTKbIgbxBs63FVPKajKvruioeJap6LIepezVj5PqFvLZMspd3vNyBpdrLwgr0NxmQp1Nnke8=@vger.kernel.org
X-Gm-Message-State: AOJu0YxWYxMxmLpRlfzuhRC050GHFsSfzs/Qzs3byVVUv6ijjCDp+W+T
	jCglhS9m+eaatHZneXyPj602ZJKCDdxWUHb5pKgeU9C5Xa2k8F7E8jwW4FK6BA==
X-Gm-Gg: AY/fxX7zfhTT5pVQOr63Y1XBc/Y+VXDQNSw/nhDqmUghj3S+7N7Riue73ZfhLGc1fdn
	rpVkJeQqdnPMzkRwRoa6RmG1pCBjScf6YukpKVCxsYvsNGAG2d8ixjspeJ0jseSucwtvcsJmbx2
	L0tBO8eyWyZDLOYMdeifkHlffBRcNHYB4Lhu6BnRujb3KHT/M2KkcQQ0+XfhVRelELxSb8Yo6GD
	0eGCTQyt3Hhn/Xb1eeeyW47EGmq0RVkWH26OzEyPaSPtnBhLE7/yPSJpUIgr20SVkgfRYwBWLDu
	dnH9s0kFkTPB048ehcjzDR69I0mWd2zgWeU9TD59NECNCTQ+PwMAgQPNMbdyjUwwjQd5R5Vuweo
	3dsq+KmRe5kwmTNJOFEWMx4yWT9ytxMt7CLeKkQQP6jUZg+wWzLRbYDORFq1HnsB17dgdtKdBYx
	9Yrgw=
X-Google-Smtp-Source: AGHT+IEge6kuXWHWOOx3HHlHuFbinzApUJs5FDIXCuTqu86v/rLcVZ5JIeXlWiBFKuEZYnJ2w7iFoQ==
X-Received: by 2002:a05:7022:6886:b0:11b:1cae:a0fa with SMTP id a92af1059eb24-1217213721emr34975352c88.0.1767077954382;
        Mon, 29 Dec 2025 22:59:14 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::361d])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121725548b5sm126290566c88.17.2025.12.29.22.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:59:13 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: seth.i.mcdonald@gmail.com
Cc: Alejandro Colomar <alx@kernel.org>,  Seth McDonald <sethmcmail@pm.me>,
  linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
In-Reply-To: <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
References: <cover.1767072049.git.sethmcmail@pm.me>
	<1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
Date: Mon, 29 Dec 2025 22:59:11 -0800
Message-ID: <87zf70xxog.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

seth.i.mcdonald@gmail.com writes:

> From: Seth McDonald <sethmcmail@pm.me>
>
> Include 4.4BSD in the initial list in HISTORY, rather than stating the
> function's origin in 4.4BSD as a full sentence. This is more concise and
> consistent with other man pages.
>
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/sysctl.2 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/man/man2/sysctl.2 b/man/man2/sysctl.2
> index c59acff553..6566c4f5be 100644
> --- a/man/man2/sysctl.2
> +++ b/man/man2/sysctl.2
> @@ -73,11 +73,10 @@ .SH ERRORS
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> +4.4BSD,
>  Linux 1.3.57.
>  Removed in Linux 5.5, glibc 2.32.
>  .P
> -It originated in
> -4.4BSD.
>  Only Linux has the
>  .I /proc/sys
>  mirror, and the object naming schemes differ between Linux and 4.4BSD,

It actually existed before 4.4BSD. It existed in 2.11BSD at least [1].

Collin

[1] https://www.tuhs.org/cgi-bin/utree.pl?file=2.11BSD/src/man/man3/sysctl.3

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmlTeD8ACgkQjOZJGuMN
fXU2DQ//Z+TRtudg2dg5MjtCrmUfq7bZh3Xl6jIL5LhD8s7tAMBk6RqvFVq0EhZ6
Wk7Gy0mYY+729kNQ3pt536aJpgzSd+wspsLGLeKy0BPLLL6XNy7wxHDU0+Aij3c/
TvQjhQRY0EourrtQQy4JveucIoN7/vL6mvOYg3esoqXOeK+fSEj4v74RvSSRTbta
vkw3n98px4GHAT0Fpa1Z5CGQUj9O6sc8/kd7QlIlRG6esn5/5YXsGpU3ypnqmi28
9XNamwAcVYxVM9bNDDXfqwTBKz9N4yJoosNYZkdSItVQgngokqPoV+3tUqwYSDxd
CxhiMBOcE4g2lfW7NU7+0VPIP2W3j0erZnk0FU9I0uC4bKOirXGUOQiQs0ZjIP/k
tLJnTeC2VuNTJ28Nrhdp/YNR6+pjGwkUBuMs/tQa8uurC7yXa/55rJ0MWVGpSQuE
eFpr0ZFZ2t7cX3WDLXLTVYKkXSwonV7U/NoaabRzQMymEXtCBKDwyKslzz4kjOWw
EvS556Llht7XUWSHPdpVoV5sKAtc82dsswMOo+4PomCZDylBfd+UF5AsCIBLHNr3
Tg+lIltAw+H+lDUgTpAy7XLU9kiBxtFZp3ZaEZgMMe9zrPTPli4jWSprv1u5ENxD
Ptrl2/3HJ84+F0+jvVYnoIuhLn/9kcOhgOW5GChjMfF8LwV7mJ4=
=MIRM
-----END PGP SIGNATURE-----
--=-=-=--

