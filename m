Return-Path: <linux-man+bounces-3360-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D89B1C8AC
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 17:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02131188DAFA
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 15:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E04228F948;
	Wed,  6 Aug 2025 15:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RApSRq/P"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E75329117A
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 15:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493983; cv=none; b=anFd97wWXvppUZ2K9ArCRTpvw80V+2eHS29W7a0VeDwL6NqOt8Uy6MQL0m3ZLLP0mysqzFJJE5REJ5unSiZ8I9S4wQSwyC4Z3YkMyBqbCNeZF02ersGT5uQrABW3Dtfj0OphtoRZrr7mhvc4okn1Hy2J0nMr3GCBoZKHBSsfwww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493983; c=relaxed/simple;
	bh=jn+2ZnDpU997Oj5aGGdi35piDqcTIuFYDwqVUGSof7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hhhhUUyWAlJBDpsSeJ+dJg/WVdpzHkj8AoX6Uz6p+ME9PFe6M4VlUAtrIHroUY9iPog62gJQR7PJv9YvceODjYvM/YfRFNXK4lfXV0CUGVbU4uUts17kjmEQXTnsPXBRkXd3rRk0DbVWsHOpRmhXetgwqWEtXbHv+qwvIMOTegY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RApSRq/P; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e8fe3aeffb6so5978276.3
        for <linux-man@vger.kernel.org>; Wed, 06 Aug 2025 08:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754493981; x=1755098781; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XKkJIqYHP2DQwKAv7BFgljIk8LPjwILp8HGNVV9WIsg=;
        b=RApSRq/PfHFfG7KFQ2175j4HcqgreloHQMes/ysqUDAC0lhEc4lQMJjhMmqyWxQr3e
         ETI7ED3Bc7F3yVJ1GAWK/nE+1uJB6LKudelrUVxuXGcECqKWvNcSN+mrnstSDrbYYnAI
         cW4/wKWtxIo2bTyPjdohzCs8Btley4NA8xxc8Ad62EykgndJ5qxS1GNTcvOb8ytSiQIq
         rjyhhh3nM6ZRJVSUUCZMInPhZ4JiTi+PcGFHSXoPMAGaJXIiC9bEKG2t1qXRlyZp2z2f
         JyxRBa5RDUvncCm94cKVn/sKCrTXnB7isGauQrgVbtlPlcR0jFsF4dD24H0kPIBwcMMt
         0n9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754493981; x=1755098781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKkJIqYHP2DQwKAv7BFgljIk8LPjwILp8HGNVV9WIsg=;
        b=uTlrxlFVPFxWyKIhHaCYAunhK3Q5qoa7BOYjCiCqQagCyBgaNRqdWm0Z6MknFdxHE9
         AedLu7JZL0SB02i8o6Reo3UU+0uEVWglb6j42Na+7OAv6IKM6l9pUk4D9GZNRrqHbyBC
         E1txxrTpNom7QVdK/9+N0fsgRXUsTc68tw2QvmUNt+iz3HhgDUqbO4euErYpJF07/3Tc
         yKehbpeAz49HeDK7eO01sIQpt6gsdfzMTKH/KUPaLMRNBWdS3ADoTyBwv8JLLOknShtz
         odNejrqoFmIh3JVbdMmcz7l65q8OHeT46dYmKlLwPW4DhT3qsi5iasg2vLTj/kw8ty2E
         9Rvg==
X-Gm-Message-State: AOJu0YzbocZOMJDZwapM07eRPOfxJuNs6bqeDZxG/d4W3vyhUMwrIWMI
	IFgs1XY2P73V146GfFQdbMpKrLWXR675ccP6RhuEaIWuLGotO8v73vYV3Vr8CQ==
X-Gm-Gg: ASbGncvXtFEJ69DFZxEUMp0kpOchgZk/nPTJlDdWEdGKjg1PZ6m4BjlyEpIiy0t9WlL
	79zKDFj86uRrTg5piLavT7qZOUfUeljd9VCOQ8crtDMq4chpghJE9brkQzHbOEelK3iKzZbt3Id
	ibLzXyXmg5y0ReLv94GZUAvdzm2x+3rLhXCwq3iDoE8x7jcGBD7J/whjZnC1gz603hAN+ZJMUIo
	38JURJTCrFlLwS1/nvFTMlWeboNEpx6FjWGcRUh6cub5Xxihaq4hUJoqp70T4ffmfWSQ76zke/+
	Edd9PwoGsgnnxs5dU+kkSJbgJ875VOBlhPu56hWRcfA9QWBfcNi5ccGKaSfWN0kq2VDyRCAa+/s
	6SoQuJo9ExCMge/HJ5rCsAEg=
X-Google-Smtp-Source: AGHT+IFMqsiEvz/JRDfBkDyb8TeqJ0W/dOQ7/HIkE3SdH85woveBrMM41vq7fOANXd2nhD5hWptccg==
X-Received: by 2002:a05:6902:722:b0:e90:2994:bd14 with SMTP id 3f1490d57ef6-e902994ccf6mr3310467276.23.1754493981336;
        Wed, 06 Aug 2025 08:26:21 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e8fd375267fsm5618699276.15.2025.08.06.08.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 08:26:20 -0700 (PDT)
Date: Wed, 6 Aug 2025 10:26:18 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <20250806152618.a7ptqkpg4oibx56x@illithid>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <20250806140112.wkdw7ksbiycimw7u@illithid>
 <xgpx6t5tutxv65lzwrqocodlvhulvr4nva3bcuoygxf3mmlxqp@5nkg6qbnxc2b>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rltdopj7p33wdj3w"
Content-Disposition: inline
In-Reply-To: <xgpx6t5tutxv65lzwrqocodlvhulvr4nva3bcuoygxf3mmlxqp@5nkg6qbnxc2b>


--rltdopj7p33wdj3w
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
MIME-Version: 1.0

Hi Alex,

At 2025-08-06T16:55:02+0200, Alejandro Colomar wrote:
> > Did you change distributions recently?  The messages are an artifact
> > of a downstream patch to groff to force Teletype-style overstriking.
> > Over the past two years, distributors that had it in have been
> > taking it out.
>=20
> I'm using Debian Sid on my laptop (because Devuan doesn't work well in
> my Framework laptop), and Devuan Ceres on my desktop.  So yes, I get
> any updates that the Debian maintainers decide to change as soon as
> they change them.

Colin Watson changed the item in question over 2 years ago.

https://salsa.debian.org/debian/groff/-/commit/f0a34f20ff772f692255b7e32a05=
630c639f75a8

However, since /etc/groff/{man,mdoc}.local are what Debian terms
"conffiles", their contents can get stale, sometimes through human error
but in my years as X Window System package maintainer I never quite
managed to convince myself that dpkg's conffile change detector couldn't
be fooled.

You might:
* Verify that a recent version of groff is in fact installed.

  Among other things, this commit history is indicative of package
  releases.

  https://salsa.debian.org/debian/groff/-/commits/master?ref_type=3DHEADS

* Purge and reinstall the groff package if the version available
  "should" be new enough.

Regards,
Branden

--rltdopj7p33wdj3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiTdBMACgkQ0Z6cfXEm
bc6i3Q//fZUn6KzDRY1mhjOlw2Dhjueq0btfpxvz+F8K/26a+zD9mW4pDxEWtLXt
1Pk7yZoi4Oe/31iJ45xUxnEmsbc1Zm5cArgweQrhw5tzfM6oOX1fQ2obPq6nVaVi
RixoSQlHrOq7FkpQbU67bI6xzPNDablXipMWg8/43BJJwyHUAmkYEsjDs36c8/bh
+G+uTyWac4daWY89OfpoMlEdzPJ+IHElpaDfp76D0dI7X4qFdZEMChfKou64bivr
2uJIgKMlZtDxqYBpdGoAe/E3bBzoHU3kDyMsZLk3lWuJ17idCLKL2nDPj7Ywzwij
Gk/ebTjYagZFM0oppcKIdvb0J40pZETRpfafj4bjlF14REkyHH8KAnR6aMWOwbyG
qH5qpZ2BG5JUVfIkLiRiSODj39OfR1cdWP0pKC0p8BybB64X+52C04sovoVLK8Y8
MGf3GESm/BW8w2IO8gpdoq6upNoPca9VOZayAs8gB+EIZO1MtzWSOej3/SkOKRZY
d3BlTNl3y37mA4P+TAQv9Zf57ZgHKdGuSJJijiCPigWWVE1rZQSbVCrtd6a4fZCu
M/JL71RhxpFe6Wcu94ZFwD+YBHqrdQmea3oUnaCO1Q0z3OiGtIKfPgrRB39PjTlW
FgeCXfyBHbWkMPGWedESy9e9GlQWYfhhiEx8XN5YUcUZqS4fylE=
=qySZ
-----END PGP SIGNATURE-----

--rltdopj7p33wdj3w--

