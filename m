Return-Path: <linux-man+bounces-2419-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 228FEA33321
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 00:02:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 127F2167945
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 23:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A966209F40;
	Wed, 12 Feb 2025 23:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HwCFqci6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CADD200114
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 23:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739401337; cv=none; b=u6WfrsgCpgjbu2HmTsyaTEWe+PUqiOEiD5dkdcuHbIcfmtPp6RUy1aLFzvuVBxEd5FvKvbFyB6GkL0Gh1Ho0dwo2bElgCBea1T+vvK+J8hDxWoQ1uJAftd8yXlCYQfsnsewspo2Dh+3sNA8fOM1HTTjusGdZP07wIxQ/Zn8dqNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739401337; c=relaxed/simple;
	bh=el9bl3O4G4QXhJFPAJ+uOt83HwlaNnB2gu3PZHFTuNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJQNpIS5VBDhHRW3OSfXztnS6bz6ur7ODjx1oyaI5c0iX6hy1Eg3qzJ7U3pA2czh8z0VSzP+at832XsfaKC/tlLImDM9WA/MvBWfRf5jIRPhuyzD1wgS2ZxrUaFCyBoDaPhM7YA0ooiYm5CMDHMXc97ZdLp0c9GCl4yAWVr0iec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HwCFqci6; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-726fc93a617so186986a34.3
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 15:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739401334; x=1740006134; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NsWqlj8UEeFsEe+lmhldmpEmchsvlS2sxfyN+Tw5PA8=;
        b=HwCFqci6DmSRfwIUOPWoqQ+xu5geHpGdVvi4QWp30cgKJXCR0Nc2KyKHoPIEZeVIKZ
         +YusMOoO+abOEOXQNgfitfYfsd/l9Wp4IAd/vKT2iE0xddAmg5lH/QlavnL0WL7wuhF5
         kPSJbXm+Pe/6to33YR+UUR+hv45uj7Ua/kLsUDglr6oCQ5TaDMxbznGjXkpcl7BNHNkV
         ArY/ViE+okQqX6+t2v6ZvjfJOL5zoxywYFpsl0M4St6D/spF4X5lxfoK/kfreVrr7mgz
         J/lDuiAzjMatpeSxPyGJF9BUCvptTm+FiyBZ9UkSEgigNDXB/dUJS3U3Ll19F0oxuJHT
         2AJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739401334; x=1740006134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NsWqlj8UEeFsEe+lmhldmpEmchsvlS2sxfyN+Tw5PA8=;
        b=pohBkSHhOuRsO+haYFR9kA2XkAuUqAQpqqnJfkXLcf0ieXl9+z2ihyYgzgq8sx+ObL
         Af9MF52qlOpsqBaRjwOAf4ThOOyIP27LOTwfke2uNTMPPlQK7LZPdLa+JNI8zUsRX2AZ
         Ghy+vMii/XuyRUMxzctAzr473HXoSwzoTy3Nr7UBw2/Z+BD7t5eN8ehcLK4dWBlzjTkT
         w2QN1VPRAGxm/cH626CJKnrAG/hPi9wNgeFO3upAW0FMfB4rKtk1DOFoD0DA/U+v1EmV
         nNgyDQR7Ex0HazRMt2Vui6mfAnuHZ6d+YwBgitT8TPaGYb1a7SlH2ng5JYK0rW2eo1zv
         Nehw==
X-Forwarded-Encrypted: i=1; AJvYcCXeByV7E6Pf/6GSFX9Xz70NLmHt/rOdkTv+zmHK8OZgxXPB74olztwb8RgHPyuB+j7KsumeSp3v1ss=@vger.kernel.org
X-Gm-Message-State: AOJu0YzaVM5y6qoj0hZDZYJOl4WbJ1bhaW5O1yLBd4XU5HZgWKXBkRW1
	e3hHVGAkNh10ppfdIpvAEB1M6E2+cenJ1DhoZe1R/mlGHXS6+mgF3igp5Q==
X-Gm-Gg: ASbGncshAawLMNOV+prU1E5vATnrjneaSKcezDSBLyicTALnKWyOCpL/M8Z2u48ycv4
	PcOp3OpeQIgnX3NqEZp+4NeVE6VOoNDnt161GP7LDk7WQVPNCKVE4IK85CRmkeV9p129NYP5g+L
	WaTfZ4FWWOxCSsDXR0AOVGuakjoAsBq/bft8tONXXX5y48nLJe8JlQLSLpup4Giom0yw7EC5OOz
	Yfuqm1ju4xWddeyQwpoZ43Z2CRDVdua9UKgoii0uP4QgHrWZ3rIsxOsmJympU33AICfoynavS3p
	froD6g==
X-Google-Smtp-Source: AGHT+IEa1/YEm2WhjH/IeKE1g5VQrMZvYTODS95XZctv1YIz12EQ6d1CmvWohDEeYql0FmBoglpheg==
X-Received: by 2002:a05:6830:3389:b0:726:fca9:bb2 with SMTP id 46e09a7af769-726fca90f09mr1100885a34.16.1739401334387;
        Wed, 12 Feb 2025 15:02:14 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72700264bd4sm88618a34.66.2025.02.12.15.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 15:02:12 -0800 (PST)
Date: Wed, 12 Feb 2025 17:02:10 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Amit Pinhas <amitpinhass@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] [PATCH v2] man/man2/kill.2: Add Amit Pinhas as a
 contributer
Message-ID: <20250212230210.3kkixsk7bi3cdc4d@illithid>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4cxurwa3vsuqbaou"
Content-Disposition: inline
In-Reply-To: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>


--4cxurwa3vsuqbaou
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/2] [PATCH v2] man/man2/kill.2: Add Amit Pinhas as a
 contributer
MIME-Version: 1.0

Hi Alex,

At 2025-02-12T21:26:20+0100, Alejandro Colomar wrote:
[...]
> >  .\" Modified 2004-06-24 by aeb
> >  .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.imag=
=2Efr
> > +.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.com>
>=20
> We don't update those anymore.  We now rely on the metadata in git(1).
>=20
> Every now and then, I consider if I should just remove all of those
> lines, to avoid confusing people.  If anyone is interested in the
> history before git(1), one can certainly look at those lines in old
> versions of the pages.  Anyone reading the mailing list opposes
> removing those lines?  (I'll ask again before removing anything, with
> a proper subject line.)

If you do this, I suggest you replace these lines with something like:

=2E\" See the Git revision history at
=2E\"   $URL
=2E\" for records of changes and contributors to this file.

That way (1) anyone diffing old and new versions don't see what looks
like an unmotivated erasure of contributor credits; (2) people who
have contributed and been credited don't feel as much of a sting, since
they know records continue to be kept in a publicly available (and
replicated, distributed place) and (3) future contributors know that
they can expect to be treated equitably with past ones.

Regards,
Branden

--4cxurwa3vsuqbaou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmetKGgACgkQ0Z6cfXEm
bc59RA//dASiHQLvbpHg1zxR7DdhKEgb1M2Rl7KN8C7fDMpBP2K+2CPXEZ6ZGTJp
MzCjA8HE5mUgtQd2gNaFLmOwSvF3z6etXHtkjviqGmorWt/oGg6ubh0oZIkhuNc1
0QFBAHXxPkGDOXzPEJP+zjlbCbBo/BhOMhrM6gR7zBHlPxOaYdIn4I64YHrGGapN
WhjY6ElqntIdZVTIhXA4tk9UAHEVylhDFcbLxyWnwsGrZ9vorVds9JBtp2jx1/Lz
UgUMBTzPJBHZeMGnrw1cqiUuLeDjbhyMLC2XaxtYyZwqGVNqNfDJvV14mNNZHNMK
8BpHDqo/mYkYOTqu4dLjVZmCcd0ANR6lBZsg/ZXW1ex84KxTeKMdmecr2rprzQ5C
YtNi+g6yuMBl3ZszJ1dr8JNaayGk8TYWmSdF99L2O4Zxc/mJ74cOlSZxmfbUnuK8
zGBeGoiUxl+ry1TZqBQtX4VBxuHRJx0m0Oa0DVPXTu0ARkyKsJVnFEtysxCAlqVU
bAiapr1KjRK/KhqH+JxkgVbz2nrGC6tNITtREDQKimZjAwI38QLX8ZBApgoI3qdY
XNVCbe36N20yzWIx2huDfFN2qH7s0iIR9EGjX1oneRhttW/BzfN9jLaI/o0tlBQh
lHhwF38MFgVYm+uBBPxKjEMv7pOGGhQx6d/xr7UhqyfvdbKRX4g=
=TKD6
-----END PGP SIGNATURE-----

--4cxurwa3vsuqbaou--

