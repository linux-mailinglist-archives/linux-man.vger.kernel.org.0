Return-Path: <linux-man+bounces-2949-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA721ABAC95
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98F77189D8BF
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88F0265CC0;
	Sat, 17 May 2025 21:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aQhWRsZh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977D5680
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747517159; cv=none; b=dIUDRWv6nAtG5aQExovkkOGEHII6EL0gHjb8+wGreAAaP/fnsZkr49GpYYtgobx/7XTGrvpEND3ZYWUTVHOYW6MmwXQSE5lS3Xn9XKMPDiDW5IBFhWliZHNjhVm4hmk/HyhIsH33s23/HEX1m45PFIg5Wrrct9/epznm8OtB9k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747517159; c=relaxed/simple;
	bh=Y3iHgEYPjM7Jgsr+lbrwC/Tw2rLwGxa1QjwCk0g/axM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=OdfRV6uZzVo4ZC9dPkh1SLV208q3prFZsMWJUamdQ9PYtqjnJstLpMcx32GNh+IpiaAVQqJrxFQIzK59kKVuiNFskZm4n9BBKKMLbnMPwMhXLtu9+9brSUreKcKtbyunqjYr28A1DnLk+YHq6cxHtb+dDBiAoLICXD1MsPtVGno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aQhWRsZh; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-30ec226b7d6so336620a91.2
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 14:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747517157; x=1748121957; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DS/ml2udY8SlGsLCf74rat8lsEfwTaibNTO/z6+4G88=;
        b=aQhWRsZhi6KjRaMqQkm+ZmbqufHgvghaeBXcT5i033yrbUjr4BHKCJTv6YCNHgknpp
         ij1bAIfRnq6a7HZkQYmrs/5N7mGpKGFvhvwCcXFeuo7w6nRhwxtQ+zSMzADiFsCCP24m
         KOvqx3l7sOD/f/eEK52XZk1GEMmBsXA4tbqf0S5ZORitcJl96a+BJG8ut3/69+qt6YiL
         149efn26RQ/9kdcQA8YbSK4H9wN1gGqFGTrCk3I3X3TN07QGpobY7n0gFWSijsRAHWT1
         SiXk1p/YplisPNPzOH2PdBx5E3xOGpAdItWJzFY2NltT8c8NFxuICwVPYA77GntY1MrI
         hGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747517157; x=1748121957;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DS/ml2udY8SlGsLCf74rat8lsEfwTaibNTO/z6+4G88=;
        b=aRqfU9jQrBJqfZFhSg7CiXs3qWaF8a+uidlUDUbICpREkWQhSxcQ+DJdl9uxnMNPul
         Gs43btZyOYXbH40meX8N+PjY9OzcMykUYhfQfw+E8yNc90Yx6zlrvZ5xHYv2sVxNRFak
         ODaJYXpbOsvKfcPbKptEOeqvRqgGMzReAK7QNIhcbgAed7k9FgN8Bszql4tpV22jnX0g
         zboML/+mujUmEaAUY/X1D1JQT7rpZmfzrSaTMLVzqlVmwhLhro0JnyBj84HQR0di/Mkm
         IUgFn21X2DIElJ3GNGZzTcBFH2TOXzckRfDEhDqGWxOz3KxsevIbRZVvmSsyvj9avnaZ
         tJwg==
X-Gm-Message-State: AOJu0Yx+YXgmY5Objfj50f7oNTWRzRHyTAX5CM2mFWlCvB5Y/rO7hPuZ
	zIkwO5L+tzy+LGFIJ3ndywCazvz3kpB8wYh6GjboNHP+CA3SVxUxdYAqxwuAZQ==
X-Gm-Gg: ASbGncvX4mF9fcPCdDibRguZlw91waFUamp6/Ov/jywYSm6FrQBNHg3DIwfWG/Tcpl0
	DZLdr7KeJ9JA4xjj5kqyo+E+z8jMJ251GSpdoIGl1zejJbrkYxuZQXQ3tH+pKCMVbqAFSgTZsKc
	QpyJhOHOgYHRuZtNzrSTB/5JcZTD9fySKoQpuhHWGe2Regb4zWmfjp/YkCbvDMHG+qNBauUSyLE
	6lyz/iIN4KWONJbNqguI2lMEdDeHIbZhmMy6plmS/9ABgqiOiuE2Isk8/8g6PjUp9DHNv3Zt4fr
	XszofX2/wggj7+LtI9rBuoBjBHxPrXo=
X-Google-Smtp-Source: AGHT+IGGBCqyKaaKZoUvm7xlZbGeWTTZYLt5uqTlJwxDwut1NwbWjIU4v2uIcJLf+HeAa0Vf5zqKAw==
X-Received: by 2002:a17:90b:1846:b0:30e:7afd:1a56 with SMTP id 98e67ed59e1d1-30e7d5bb449mr10154159a91.34.1747517157053;
        Sat, 17 May 2025 14:25:57 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e334fb834sm7442714a91.48.2025.05.17.14.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 14:25:56 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
In-Reply-To: <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
	<f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
	<ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
Date: Sat, 17 May 2025 14:25:41 -0700
Message-ID: <87v7pznd4a.fsf@gmail.com>
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

Alejandro Colomar <alx@kernel.org> writes:

> In HISTORY, I tend to not remove any details about versions.  The glibc
> version where it was introduced might be useful for someone, so let's
> keep it.  Other than that, LGTM.  Thanks!

I thought the same, but I based my patch on getline which was GNU before
POSIX. It has:

    GNU, POSIX.1-2008.

What would it be better to do:

   glibc 2.17, POSIX.1-2024

or should it be:

   GNU (glibc 2.17), POSIX.1-2024

I would check other examples, but my memory for other functions POSIX
adopted from GNU isn't working well...

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmgo/tUACgkQjOZJGuMN
fXVDjw//crq+ZLtClXPrFOBOLyDRwojzw40Jn9M9+KVNa8pN1PMbOwX/ItbZLa9a
hd6l+X21jTORSTslq39JpDV9NemGhocrkfauQsY5mR8riDs/0Xk730FmNCpEPCcf
9MH2hHkqXYtM2prW3C3FjfUC7eaDfgJWPUR84XOBmKfLe+az19HAFrQBzm3cirvt
tfbGw/SoXpvvA3W2aaRFwwvHHWChIparWzHALR4WK2QjsakX7QlzqEvfLx4EunGp
o67d0g3Kt0FAKFGlmLlvTpYvG2KZVUl848Ek1dd8yyTLGF3eUD3NCZJD2H5ZZ2m2
472gdqs03KlyO8bg+HGhiGmVbo/zxwOwiswgmxJgroK3ffwQ4BQY1jPTau2Ijf08
wIG0Uh35Mn8TJfl7BqZkp8IUb8CScRQ2FiwWOEQyDN2CoGURmQ/BcSc0JmUu7rkZ
RyjXbrhYLQWp6jStAmU+cbMA3GOHdgFP5o2dtdLUtIP8JhPcyhL0e/vcEDOpKRXd
gwLlhvn9ba0yFV1M6JZVD+BmUGJm8QMLyfKPqbq/Mc9p1fkcf70h5OnnGqnMrofJ
P/+0YgRtQayC5wtQ7CEdeYD0euAjWl8ynnkrDuS/hGxwD4ixgZhyfAlY36DmQqhd
JN1iWrOaCJJuDxFW6cxIAezAb44vy0twfbDq/qW4B6Tf4o9O6rs=
=oB7r
-----END PGP SIGNATURE-----
--=-=-=--

