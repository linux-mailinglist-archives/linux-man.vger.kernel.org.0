Return-Path: <linux-man+bounces-2954-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C0FABACC4
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 00:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D26A3BDE05
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25831DE3DB;
	Sat, 17 May 2025 22:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GnsKcAlJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2168B18A6C4
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 22:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747520380; cv=none; b=WPY6aXcsxe0+rp3RLkjnnlJy9PiImhAh0CZKKhzGPSC6llMsxglHicFusVxGtg88UJ+6Zyl78qOVgwXwflSdy3HXOyWfT5mdydp1bsm/9Y2od1d3lqFkt4xfVtxsjUAJ0GEFSd0yFDSDcecwxURY9aV1PCKxi/2JT5x7EYsNBiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747520380; c=relaxed/simple;
	bh=j4ADuuYBM93Kqm3PfvsaU2j/b08P0xV0X7wu9RCmhmM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=R0XMKcZTp4lqN4O5Yh/hR5huVe31H/H/1iNu22q9G6pti4synUaDQiVPOL6C6ZJO8wuz2wQl9FOysASbNJgGuqC1iC1rgFbUJZhi9QedeQOkjmtMD+uKg5/RxfBtyAeND0jLYDBeIEXzXxS6AsjqhVrVmk2IZ5txR3jNvW2MNYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GnsKcAlJ; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3081fe5987eso2759014a91.3
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 15:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747520378; x=1748125178; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mNpyuq8EkT4v6fJ+dyvF6SPTODEsd/qvYz1Xy7AuFzY=;
        b=GnsKcAlJwiAJm8hAZaaquOKh9GphteYdwEPBfo9qx0F046yjpLbdgCfUsX46PH25uh
         K+kZ5Raz8V6GpXvnS2rc9Qwbjw44PI/ctFjL7I0vGgflomGNV5q4RcSxJq9hjcvYWrUK
         v2KmYDuFTKc0if/tbnhWXpR3exfu6O+QuwQZu7YD2ORzUn87PaBYq1eh12r7OTKZMvqB
         FvJScgwJCA1Ijl0lTHKKx6+Cf09zBE2yukNV6d/0nf9z2fcMMY/LcDUzKw3trkixaHMI
         mXYODR/hXQIVqsB4QDupPeXL2GJJeYrp0dYd3fcfAhPUWQcloeOORfqrfTyGZDSEBLiK
         dIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747520378; x=1748125178;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNpyuq8EkT4v6fJ+dyvF6SPTODEsd/qvYz1Xy7AuFzY=;
        b=PaYDjjQ4sUTOHT2xgDeO3bA0uIf7pwdJQIyq8p6UfuWmlHiNZOnfd3eEW5ZJcTz8bT
         j1fKKyaNyQsKBI8kWQPppM44tzagu60Ym3sQJNxduPIdZQkR4wBlTfJ8KUGSF2L7ityH
         Sa2NHVMeB40uVbvtqOdb44b6Fr3SzyK+Xf4YN5uvlzBve/rZjizAG5zz0aArxG/0y3zY
         grNou1IxIsXLt2o04qP/D1QKTJ4Xg5K8ukT8NmCqb2ToOibWhUhag1nu9S/KTG88HECx
         /Kwx7k2SfbBo52k5gYVY8m7uUWPdsikHviH8BTuBllBLZkUfWrWp/aQo/VgYC5Ee+VC+
         OK2w==
X-Gm-Message-State: AOJu0YxBIzkwIa8oNIuRGPFrgHUehw3tC1evRLd1Wl+NOLfVNV+BcZp4
	zcXseQaFEvUtABohdsHiAuHG7XrGXyMMjsX5IiHVWYfxKQ9t/ksbaGbdmJKU2g==
X-Gm-Gg: ASbGncuAylxfN1N6QYh+0xf0h+a+I2+2rYl8h+ojZPumWj4t16c3ETAY/NE5TtxiKk2
	RX14jgBP0kiIpNnzFEGYIzmKV5IpYPbjhZT9vUtrtVUqH0qPbM30MTac3zD6G0eb5SKGTVFAvrX
	yN5WcJROYfjiQLWkm+MECJyinLL7rWLDJq2F9GF2uZ9QTP/WzLzkeKFxLD1r8yk2PfWEGhdN12p
	S6+Jfpv2oEd/tiqFx05dXAhQ7ke6N+WMpZjmkiDJsJ/aVy7JhjObSIluEBa55yqgWtjVnYQX668
	NVoKds5xG8+Iiv0nwQnH3hCJ7sh5yLE=
X-Google-Smtp-Source: AGHT+IFBjhoolHiDNg5STLqVG8+6lAG0g3SoT7bjj9/iYkxi5WAdW0zQ7/fyhfmV2qPgNlqKIAkBVA==
X-Received: by 2002:a17:90a:dfcd:b0:2fa:13d9:39c with SMTP id 98e67ed59e1d1-30e83121243mr11674739a91.14.1747520378191;
        Sat, 17 May 2025 15:19:38 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e7d576c0esm3798859a91.31.2025.05.17.15.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 15:19:37 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
In-Reply-To: <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
	<f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
	<ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
	<87v7pznd4a.fsf@gmail.com>
	<aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
Date: Sat, 17 May 2025 15:19:22 -0700
Message-ID: <87msbaop79.fsf@gmail.com>
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

Hi Alejandro,

Alejandro Colomar <alx@kernel.org> writes:

> This is the better.  Actually, I tend to put POSIX before glibc:
>
> 	POSIX.1-2024, glibc 2.17.
>
> I'll check the existing pages to try to put a consistent order.  For new
> ones, let's do POSIX first (and ISO C before POSIX).

[...]

> I use glibc and version if I know the version, or just GNU if I don't
> know it.

Cool, that makes sense. Thanks for the details.

I sent a v2 of those 2 patches.

FYI, I left the documentation that ptsname_r returns -1 on Tru64 and
HP-UX. I just remembered that this is also the case on FreeBSD where I
reported it and it was documented 2 years ago [1]. But it still hasn't
been changed [2].

Do you think that is worth documenting? We have to work around this in
Gnulib, for example, so applications can be portable.

Collin

[1] https://github.com/freebsd/freebsd-src/commit/a5ed6a815e38d6c622cd97a6020592ded579cf7a
[2] https://github.com/freebsd/freebsd-src/blob/6b8222793fbb4c0e162232716bc454dad31b709f/lib/libc/stdlib/ptsname.c#L74

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmgpC2oACgkQjOZJGuMN
fXUdbg/+O8nd0AgXf1Q90HxPwv0MMXgK2gSg4Fy8kEsal22h+nx2TsNRmIGeWxTw
E9lyP4e8y5HZipdadiyTZX/gRzipB+SuxFpvB7qpg6B5uFJoSvjdEzq8LCJuNhlX
dRLcVFbthTJwHWJV1TR3sTPtWmRUnOjisNf1NR4YFGqpbBrqelg6lh2bgOqWMymE
ZoTDk/0iVCMNnP5hGcYnZ7mnIqqGKugBoLfUTvDeiYY85n18sANGMFi37BuAvwU8
hk72fozmFn1zXHbklefdYbQU4GQ/MmNyWa0Yfup8nPrFWV1r5P9VfS3y+gnkgsh5
qxFKKyUv6RYR46RzQxqDrnzFaHvtPt+DY4Jp64aGd0/3hgzDTncUNoWrEYRsz66h
KkaWDrulBQXeEgtqCP2eXsvedunn5Pz/ItXnImvxUBu9tFJnF0sLuag0hf0R5fYo
FFWqn0IIzR1/u9GXzEwxILDYZi8OiXBiqGag98kjKcwHNq6KZZo6u0xDxr6PfUdQ
UAZkegQS1uWgcaHxq0DE8porVmH1KEfCRFhZoUWI//yZYa1XbYjE65h1z15Id7dX
yR1YVITUvNXXcVPyVIbDrJKLHysSEVIxk1gpucH3wEU8ILGhOkO7oBQmiC1O/OI7
asTle7UBaEYMutEYVJkc9kxxkmVxrx4T+Zw2aUbGwpKKR547u74=
=6Xoi
-----END PGP SIGNATURE-----
--=-=-=--

