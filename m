Return-Path: <linux-man+bounces-2031-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0FE9D04A4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0C1D1F2155A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0F41D8DEE;
	Sun, 17 Nov 2024 16:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OhfD8rW2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9D926ACB
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 16:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731859728; cv=none; b=XGH6xAVqkAaXW/J7/91oVGJh4YnZTOKukPjz+Dwxw8icBCThyVPJmAmmH2egMJKlTuJwkojiF59Yq75RqkxGJATLjAEYNeMZXh7nPP0djgPdImO2NyG4GSQ/8bexIugk2GsVhNSb5JjsD6G00yFE1OWT5Jpd/chTwF7VMRxEKOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731859728; c=relaxed/simple;
	bh=U2MsVX1diYDdR7mg9EYRHQk3TxMAsrHrIzhZWwIdrzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t4EK2yudwM4JNU5Q024U4+V3riLwr9QtOSt2PmLEzxkZ8iXx0ZILywBoN3xfjX9Wf/wpGfgIWw9FirqLSqn2pBxBoyb9Ds2D30RjrX/lIxhV3R2jCBR8wNQr0suhShnUzWNj9TPzbsPcCjFKcE+xoz0/NU/bPRzR5ZFCwvFTCyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OhfD8rW2; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-295e9b63d6bso1784372fac.0
        for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 08:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731859726; x=1732464526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=khkpyPNmweIpEfZgljxLHfK75SuGTjNtO+EWJxE1zfA=;
        b=OhfD8rW2+OonVQTUT3FYYG2GRBfefCRTdgIbo17QhpC1pRfTzOyoTZ7OLK3I6YiIe+
         zaPfHAzboHsB6riK/hVZNxYYQaU/IYyLgPCfb20626RQCZKxWO7u190L+Q6wwDGokU/0
         Kn8G+mzuI3PrUoNrRLEzySpkdKCIxQrwnQdgBdTSA49c7bVh1uUH5bcfHUWJM4vw4Thk
         e8s3K83a6zYc28WfYmJj3sjXblgtJhpVWW/KtNOh6yt2ekhGv+WdHs7Gf54Fh9KpJQnD
         nLYzAIYqjjATTvxCfZxwyzzmAyuIrOK1q4fqKndaEjGzhc4ShJBiLeBlFjutP2craEDQ
         IcVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731859726; x=1732464526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khkpyPNmweIpEfZgljxLHfK75SuGTjNtO+EWJxE1zfA=;
        b=aMmxz+CPas8/EQ5hc6ncd9+K9WSQwlki+nryBTipdW8MM3+65ALCLwJ7Xz9krvz+Z2
         FMW4NHSOuFumEt1virOdu23r/WPCyHxkvmQFFJwRG3rNU9Sm2qsMNJbjLFK//UkIQO03
         +23BTTUKCjT9sIQ0Og9wVaUFPoz77FETZuTN2TK8xG8/Cvg7QLfOZP8/ivD1GmcMjFtr
         1d1Mdw17kzYb7xS2IJ0YUP/5OxNRs0w1slEZYY6Iy13mK5MSF8IEa3/leOcmlCaTsYQs
         2eIS+rs95kBX+bstYxAhyfIIpWBq1VgWJ4NRMvTypVvKSAnljZZhn8Gg+oL57VMjCzx9
         WD5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXHc3T1yssQTje4yRp7KBwOviqKhNFLpv4/k3veUl6NpHv2osgGTMsh3wQaQaKeUzHRYQczt9M+yLI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3W6bM0+vlz+FRjTL6Ti6NU1kpmW46/PhUiRo6nAXHx/fw5yez
	0Ae+CSkqDdItLqvm7GrnaZAFqXkjEbu9nE12jM9u7Y+kPtfA7vyg
X-Google-Smtp-Source: AGHT+IFHTzNIKv6GTD/DCtjOGyrXZiz4YXwT/zDOk1iF+RETzjeJhUpFOhn2znwnrZKGBWUCjjrjKg==
X-Received: by 2002:a05:6870:d29d:b0:261:1f7d:cf70 with SMTP id 586e51a60fabf-2962e2a0ce4mr6179857fac.36.1731859726293;
        Sun, 17 Nov 2024 08:08:46 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a78113248sm2025652a34.34.2024.11.17.08.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 08:08:44 -0800 (PST)
Date: Sun, 17 Nov 2024 10:08:41 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <20241117160841.73um2wny7437i74x@illithid>
References: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>
 <gkvmpksnb2e7c5r6apwqmipx3gnzh7zf7gle7v26jukrnbt4uu@ijabu2zug2ib>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w6rwhemxovcpj43s"
Content-Disposition: inline
In-Reply-To: <gkvmpksnb2e7c5r6apwqmipx3gnzh7zf7gle7v26jukrnbt4uu@ijabu2zug2ib>


--w6rwhemxovcpj43s
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Subject: Re: Issue in man page time.1
MIME-Version: 1.0

At 2024-11-17T13:01:38+0100, Alejandro Colomar wrote:
> Branden, since this may affect your long-awaited patches, please let
> me know if you want me to amend the commit with a different approach.

Now a moot point, but it wouldn't have been a problem, I don't think.

> Also, how about sending your MR.sed patches before I break more stuff?

Since all that remains are sed scripts, I don't expect much trouble.

But thanks for the reminder.  My plans for the groff 1.24 schedule just
suffered a setback so I may be pivoting to other projects for a little
while.  This would be one of them.

Regards,
Branden

--w6rwhemxovcpj43s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmc6FQEACgkQ0Z6cfXEm
bc7tZw//dKOLpe1fc25In2MjDPMQcl+J9WCEAgyAzxBgKo55ybEq0pxiH/DW5Gm8
mcE1Yyb+esSRRxH3lncbKidaqD+CAOLy9E00urXaSvklJzeqzmivSwQ16//gnghc
8QUPLeXrO9AYql1suo4O+jEoQELfhR7wqHWFWrEPMt7Et5uKjhaWyRhFPJfxyKnw
n2cvsTse96jkgvc0gY4iefDoSi1mXqvaQUilJavJgNs4HsIv93ZLBA6FfiO1tkeW
RZiOvoMeF1DlejtZpBmHYchygW/mlbWPmvIDC4IWNsLrqcLKwuASS2ragdZVshOU
JRWncbXyoeoLbVpkiA8Shp/EIm7ogg0rF+BPH11SOj1ikhNfj/n7Ru0qStf3l0/m
UD2GIp3sUILhFJ68YMhidgivwrQwKyL5XbGTy9XlV79U3ieFyzwPajGqHGJvj84E
BcqGfkYM8143EIrHSQbiNukdOyP/eTWfwQ1kVcvXYYQT6ZnZZex3UPB2sFsfqMC1
N6R/OvdIr8UoPiIWflU/poLhQ7q/VJQl7p61EU1idYQnjj8pZT3g9bUO1TkcCfsj
B0XPM8IrkoLCqmWdqyxyagsc6s2QtBC2u5MaBLAVzIUQo+xkNy/kR4pxKcQhOrO1
hlwmV+D3Cw0txGuw+0khyVe/+yaA3KjCD1qW3C34KLpJkaCiyCw=
=KFZz
-----END PGP SIGNATURE-----

--w6rwhemxovcpj43s--

