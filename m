Return-Path: <linux-man+bounces-4999-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGMhCV+Oeml+7wEAu9opvQ
	(envelope-from <linux-man+bounces-4999-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 23:31:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8127CA9916
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 23:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B11B30160D9
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 22:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758E62857CD;
	Wed, 28 Jan 2026 22:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kfxSlRmZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013D01DE3A4
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 22:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769639516; cv=none; b=TATHSLOKk+7VdEvUVNDK0FZa6sSJd2B5v6xprrN2q2O7NJJCpSWE2Am5GHzetX0vqI1FsVSCMbFYY5lVtCb0Y/Yr1ElL8Eh/XGn8hoZs7XEen80en9CrG+iCL9HXfOp2bJv1AK+hvqW7Kmuxw0ltoY9LCXXscTa+H1aQRWtiFp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769639516; c=relaxed/simple;
	bh=ai/UB6znAawlPcYHnTCHKxY7Vnw5O2aSzGqT8hh4r+g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CvL09DoEAKp5IK2edxYZgG48OWsDnZMb4tqJR/yzgP8oeb47VkJW+MuRC5ZWc76AQgkeJRWESgvxuccwkndCaz4H0E+orrfhoSnhs8Pjpldsb0HfD1+kRICIZ0yEPPfLxprPa+kXSXWMjfq4Dd6/EJ5q61eHi2fM9mNLJUz6iDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kfxSlRmZ; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64965ee303dso357604d50.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769639514; x=1770244314; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DFDXKiN7WpY433XIBS7qIGMwPXDOw8fYEknwFUMXUZw=;
        b=kfxSlRmZ8KX7BOflk1E+Lk8jS4z0mnvJdWQJ22MNWUe1D3ACTOJV7orKPLLf73swQx
         J8CJIMUonrQpNTA1HJLTTKDPMTq/PiuL9wDjGg6Ys3J3m8sdAlRRXoZ0jvfQ+L+6rgNv
         pb8yQYvHk4/rzqB3LM7J3G6xXifmFLoazpZezP8hs/sWOC3NvbfhzfjLYfVXh/YCyMBs
         W0vmU68rJqp0idR181xS/04iSAsGChTVsRMHF8cge/YPxTzAFzzRVMcvQUeyM1L7gwdi
         OCGR9OkqOtxd77XDJTZwyzfuzxt8pyxdeH/VtAoHlznlLxuqeg4dxdsYHkKORc+RgPrJ
         8LqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769639514; x=1770244314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DFDXKiN7WpY433XIBS7qIGMwPXDOw8fYEknwFUMXUZw=;
        b=OVNQOaD5pGpHBRMx5WdsfAAkoxmlOfxOnHiAMGbKJM2TegrPlydhwsK/KulF3vzOx2
         Wty0lima+6TVpblLucutlcLZv617dqJeSAkNgX1jzhQ2z/dQFiTbXdgYUgyJxHoe3JrY
         uORcA5RMF9ML6EXrrpT5Z28CsoEbSmu2fNXyzW5FjEvAU3Sk9YEzbfM8VeHw43E3bw7j
         1tlXuFceVz7+75pZSrGlYhfYQ1l1MqSLKiDbBsLwXCqtnCktKscC1N5Rw7VeGFv773mN
         XxSo0/oRrJ7hi6ggqH0Pe1tgU6AHZwNu/tNekVkJ4vPtdDa/4BBEhecHUHJ+Dn8HnyM4
         OgWw==
X-Forwarded-Encrypted: i=1; AJvYcCXb5d/b4zNL4coSzSI5Gw3i8yxNc0mCrHAyzysT4pVIu+kiZYcNu7+677atDD69YRgq63mZCeWp3oM=@vger.kernel.org
X-Gm-Message-State: AOJu0YyDgjS33I/wf79zwgFy0AWzIyRlDeZnMTsIERGO3ljOFmcYLdUp
	vxO46l8smH2Ipz0VD3pdOaMlXekWd6tYOvHqYW9wUQl071t6JgDKchCJ
X-Gm-Gg: AZuq6aJQ6nXw8Daw6QGRCIErJOFTUGEbdmAA34S5h1A8MhgWHQ9o677tbfLyji0Gmi+
	p99cBhwasS2BvnFeh3lqGRPBcZDfB/OdNzlpECeasnh2vMzTbuJyG4tiNFu6f9y7kCeY8PgzKKB
	58UL0D09wrEtTtnKG180kZNuYO5Iw+jpyFcyG8ua7o6ydhRSxMZAxPwZhTANLaJFdWJ9ZkP5DUi
	hzo21NJXkqF76y4CusoscWqkrLn7p52Ik518+PWy7atahS26KmW2B+IBDsF9EXgGUKAvPYgW30Q
	AGKo5y92CzsKu7bPMBitFQ5xBtbMO/W14HWlVjdyU66HPH6SARQRA4TZJw42gaepGF/J4pXQePH
	XFQ0kCNaiDerVSh7AswEOp9Hj2mS5Jlv3himPJlnRQilFbrVYhRvxDr55Ws3HVJTLErwS5G6ykJ
	Um/QZ4Kj2rjbo=
X-Received: by 2002:a05:690e:134b:b0:641:f5bc:6975 with SMTP id 956f58d0204a3-6498fc76b6amr5052834d50.81.1769639513759;
        Wed, 28 Jan 2026 14:31:53 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64996105c96sm1432553d50.23.2026.01.28.14.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 14:31:52 -0800 (PST)
Date: Wed, 28 Jan 2026 16:31:51 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <20260128223151.tkp6urusx7wtrpyo@illithid>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
 <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
 <20260128190730.aylqwn55b6bo63xi@illithid>
 <tl5pjzy56c5f4ce5smzbvjlbiblld6vjhrcg3u5ahmcvphgnur@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hvivjdpnp7yv6dyk"
Content-Disposition: inline
In-Reply-To: <tl5pjzy56c5f4ce5smzbvjlbiblld6vjhrcg3u5ahmcvphgnur@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4999-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 8127CA9916
X-Rspamd-Action: no action


--hvivjdpnp7yv6dyk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
MIME-Version: 1.0

At 2026-01-28T23:02:24+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Jan 28, 2026 at 01:07:30PM -0600, G. Branden Robinson wrote:
> > B) (While the foregoing discusses GNU Bash specifically, I have
> >    read--but not seen a proof, and can't promise that I'd understand
> >    a proof if I saw one--that POSIX shell is undecidable as well,
> >    the "alias" feature being a sufficient condition to produce
> >    thus.)
>=20
> If, AIUI, "undecidable" in this case means "the parser depends on the
> execution of the program being parsed", then alias is sufficient do
> ensure this property, but I think it's the only feature that lets you
> inject macros into the parser, or otherwise interact with it directly
> like this.

That sounds plausible to me, and consistent with my occasional,
undisciplined, and inadequate research on the topic.

Shall we organize a movement to get "alias" taken out of POSIX
202y/203x?  I don't care if implementations keep it around, but it sure
seems like a dreadful thing for the standard to _mandate_.

Regards,
Branden

--hvivjdpnp7yv6dyk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml6jlcACgkQ0Z6cfXEm
bc5wTQ//Vfymg66zXwH80mzdVcExMZp/vsDaKQaro+el4hgG5X4p4SfpEbD2y/FZ
bx6F2jN2MnOHa0EguyeCgKWLeLRrxEDtWwkYRlcGm2mp6UyKgKF3S9+3qMh9uQ0x
IlQGafu9B3BJ62QOikBNtiCXnts7QZ7II+7nqnLdlZ2z7b8itPmW+GFuPx1Ehd1F
xyVGXiLChUYWD0ywn8LHiFie0IlOx1D78tugryB7wCg/DY0MWdO7mct1+zkbeD2b
ueAyryJqqXJCQ3Cw5SQrMMoyzIbH5os7BqA27qOaHFeXZqFO+/v3wm8hQ7lmBLFa
s5fmvmu89Tnm3FX9Zi/12BWuWBR7cMRlx3E4e2rvA+IhACjcq2P/w/48uvDLBHbT
X/vQ0wvXK6xld6tQsXWfh/yI69xHAiURy3LRX4nhC3rPWhI5IurRrQ8z1s6QFw8H
nKn0xWwa/tk/BS59xOq7C2D5l4wXeucbatIGZu+NWftK7BLya8K/NrV9pDkVD40o
hWPaPgH1nt+PchSvyx2R24u+MkUsX74x4Hqtpvr8m4e26SQI77Wc646/ytz+T4Ni
HGLoNtelVmYAHFTsqM3+pY8Ahu62IqTUAa6YQZshqzbkwYQrSP7u0rVS4lglZ7J+
Io6+S5zXH9guD/cVAVX9hSgOBDwUPGMDW9CLy2yf8/+cJ8aUBRc=
=5vnh
-----END PGP SIGNATURE-----

--hvivjdpnp7yv6dyk--

