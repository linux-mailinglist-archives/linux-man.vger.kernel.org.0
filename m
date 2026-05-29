Return-Path: <linux-man+bounces-5635-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMaBDu6kGWrEyAgAu9opvQ
	(envelope-from <linux-man+bounces-5635-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:38:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 825AC603BA4
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97AE73288CD7
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 14:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C923B3C1A;
	Fri, 29 May 2026 14:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5ybmv35"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D5A33F8D9
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 14:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780064769; cv=none; b=Czio7+ZyyDPcmV+9GliAvtfoIDT+JEFRBk4n8Tlzhkbr5S6s8hmpR3iBxom3wu/EkkkvlzE0kU7fn4b+cuOjweWOBgkQMKrw12Mg+F0dMN69MeMn7ZLJQ8iDYTWcNCObKtrpdv9vMou6GLtZKJ1Os2wYU2p9wfow9Xd1dNJMmtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780064769; c=relaxed/simple;
	bh=tW9Wp9kHmk1Co4W3h0NX5t3NXiYQ7A3Y7O7mp+MozmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W6iWD3GlKQlGjTgTnuTHxr6+KP9ZKqUpFeES/WKfZCuqBtzPLxP80mE46A71Umht4H24jBkUCfD4BAvmyE77qJ2kWTOpmnpjFdTtixgj1nacoxeAI/3/rbsHwhRgicvNoLFHZMk/S9AazHNcbhJKZPNS5WPJGtyTuyGYIyQu8MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5ybmv35; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E14EC1F00893;
	Fri, 29 May 2026 14:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780064768;
	bh=2U2K71yi5PrL96Vo5JE8dy1bli1X+eNv05dtog1h61s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H5ybmv35H/h/K57YjmTTy/TvDBJreL8O+c/PviePtZhhSTbOOMeR5Jp+uh3PG+0B4
	 eFZvlKkT5eNmEtQVhLBcFK9sy6W388ZED/lMINxlOoYBUsUonKu49XmkTjzom1wt1x
	 AeEdGjeI/zmXF4KP2XENv/KFNXP07vHgaRrg0DP/59OXTVphP8a6d6DLGhxjqsDZlm
	 dAidw44ZKp3e8qOPbrr8J2zBA/ixXP4MDjjL2JvQIjQIgKM88suGm6AcDDnnhVtVmm
	 Tg7BSvN0BFxUbZDf9rlGR2sBihJnoU7StTSCP6peiINr3IDKrkoMV/f2lX9crdRbyO
	 Dz3vI8mIR5ggQ==
Date: Fri, 29 May 2026 16:26:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Chris Adams <chrisadams741@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Linux Man Rendering Issue - Resend
Message-ID: <ahmhiZwvC_BgEqMl@devuan>
References: <CAJ8owHS3QMOykxJTveCSB5iSiSUVKtswVjDaBJ6cos06whB3AA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ln4l42uv4fwphf6p"
Content-Disposition: inline
In-Reply-To: <CAJ8owHS3QMOykxJTveCSB5iSiSUVKtswVjDaBJ6cos06whB3AA@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5635-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 825AC603BA4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ln4l42uv4fwphf6p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chris Adams <chrisadams741@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Linux Man Rendering Issue - Resend
Message-ID: <ahmhiZwvC_BgEqMl@devuan>
References: <CAJ8owHS3QMOykxJTveCSB5iSiSUVKtswVjDaBJ6cos06whB3AA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ8owHS3QMOykxJTveCSB5iSiSUVKtswVjDaBJ6cos06whB3AA@mail.gmail.com>

Hi Chris,

On 2026-05-29T10:16:40-0400, Chris Adams wrote:
> Hello,
>=20
> I=E2=80=99m writing to let you know that the rendering of links within the
> description sections of Linux manual pages is currently borked. I
> apologize if this is a known issue. Behavior persists across standard
> browsers and devices. Thank you for your work on this project!

Thanks!  This was reported earlier today:

<https://lore.kernel.org/linux-man/20260529111929.7vvqnyie3ankf4ec@illithid=
/T/>

man7.org is Michael Kerrisks's page, and is not officially part of this
project.  However, I do have contact with Michael, and he has received
the report (I don't know if he's read it yet, though).


Have a lovely day!
Alex

> Best,
>=20
> Chris Adams
>=20
> *Message resent due to linux-man spam filter.
>=20

--=20
<https://www.alejandro-colomar.es>

--ln4l42uv4fwphf6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoZofwACgkQ64mZXMKQ
wqkjAw/9GBe4QM2ixoPVblKkQO4i+dtXlf1+WJ/S1uY8O4dIL3P7zY+0ItG7nKTk
9v7p6NkgoSwITHjy2G6mh5tsji+lBDz4KOUKeDgYTJzaXSkH/H8MGp2R+2c1PzaF
oSeF68fF6Kq3GetN8jKxipUPBmdSK3/hQOe8L9WoCbHoa4yrGbWGWDAIdWyVVtAx
1LfIbFm8m6SbHdfWCC7QT0Kp2FK6TJ1zX5NfHkzYP03RSCu4h3gw4Zedq4zX3sO/
aPQdQiu0AdqtO/Ei+QKuNefzXiUvU6yY56QQugxQn8NVH9nMJHa0pNyhj2lfeEFP
PLolxAzNx6MJF4YKIdYz8nIzFzW7/X2wEFMEKrWte9M+w7QvygLqan5/T1T4qbnu
6PbKEWRYYECXxBBE6QtMilzjspDnxA7FT096+wW5ct3iV+X+5FpisEdMVKX6UtXX
iJWhC+k3Ju1g+YZ31sXPC9YpFAKKV0PRuRokShES7UdqqzwYF8ddsPQOJzACL1qt
UgFDbnaapl+GFssth6kWf9aO2e7JFHi8ZMJPkVabbebx/lV/FsJNB6zcH0MlttZV
3iuh6NdiGP4yNARZAIrN5VosgRvH0zTPZQC7v6MCBL3NG5yR6duPyeZJjuVY6/YX
cvonLjXJobW8y8BUxMue8pNVQqkgSVcEg/5uozKYexQtYTfimxw=
=6Qyy
-----END PGP SIGNATURE-----

--ln4l42uv4fwphf6p--

