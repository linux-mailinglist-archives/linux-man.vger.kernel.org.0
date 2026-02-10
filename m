Return-Path: <linux-man+bounces-5093-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDFrMwqhi2l1XQAAu9opvQ
	(envelope-from <linux-man+bounces-5093-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:20:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF2211F5D4
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B607304A9E9
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84B4B32ED34;
	Tue, 10 Feb 2026 21:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2TDuXKM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48313328B7B
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 21:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770758406; cv=none; b=akY/jtib4ZobQZ2jhlSQqi5H4UVf3hpdt6Gr10JSbPIjiXA5w6aJMuo1w/zqubKaPO5Lom1qiC36D4mum4AZt/7ImHGJ3Pe/sH3DpoC1bcH0KgqYm+rPTHYwyk7SirFFtA0lrmA4wYsH+vx5vg4ssPb+bXd+XLB9obAVzLGz1m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770758406; c=relaxed/simple;
	bh=UeQUam64P5xf3JxoT34CZegIDKVHCZRTE0nvaOPkFmc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rkLmInKytLeX2FM1y5bs+8+4EKKy+Gw6HDK7S7ib8NdnlqdXFDH9mJUPYYoiZt6K3aEu8tQei45PvU61WrESfKiEPp9vRFIpAPncqFHqOcNCWKqSWcO4PxDpdYg1a09/D3g5Z0+JvlFsPNUn8N3EktJIjAQ6V0k319LQbhfoPqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2TDuXKM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A7B4C116C6;
	Tue, 10 Feb 2026 21:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770758405;
	bh=UeQUam64P5xf3JxoT34CZegIDKVHCZRTE0nvaOPkFmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G2TDuXKMG8QzPXzN8LANXycVwe7/EczEtjw1fB+XNkaY9BKcp+ca7jsYGvBU1j+pG
	 AEwexrUbgOBg8UBVPRi4rr0w/sEH25lmlHQOczAf2aliXysaJSutXV5q2y44PL4gGg
	 c2MYpWcbtcGJj/BcD9Ldf4yi5cFL/C0mVEWH+JALb5Du3foBudy2hCrQoMLpS6oW1/
	 R3aoToRNKqkaow0qfZ05FxQKwe8ldSqA7oyOszBBDVA2xuaukLR6cpF3KbRJBTKqJK
	 zubsDcIrBg8XiQjYHmDopnwUX+nV0DsdK1MR+xy9h4EPtrw49sPkJPdKW0gjr3blJs
	 5ZNao4KHDV13A==
Date: Tue, 10 Feb 2026 22:20:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuggAXkgFO22QI2@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
 <20260210205347.GA31604@strace.io>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wzyasf3tvvynofcq"
Content-Disposition: inline
In-Reply-To: <20260210205347.GA31604@strace.io>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5093-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,strace.io:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 4CF2211F5D4
X-Rspamd-Action: no action


--wzyasf3tvvynofcq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <aYuggAXkgFO22QI2@devuan>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
 <20260210205347.GA31604@strace.io>
MIME-Version: 1.0
In-Reply-To: <20260210205347.GA31604@strace.io>

Hi Dmitry,

On 2026-02-10T22:53:47+0200, Dmitry V. Levin wrote:
> > > Looks good, thanks!
> >=20
> > Should I take that as a Reviewed-by?
>=20
> Feel free to add:
>=20
> Reviewed-by: Dmitry V. Levin <ldv@strace.io>

Thanks!  I'll quote it, if you don't mind, as name-addreess pairs can't
contain an unquoted '.' --git(1) misbehaves on the '.', unless they
fixed it recently--.

	Reviewed-by: "Dmitry V. Levin" <ldv@strace.io>

Is that okay?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--wzyasf3tvvynofcq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLoQIACgkQ64mZXMKQ
wqmEpw//eKWJV2pFWG4m5CmpGQgEAyQxVVZZDxl9cdAhDngC/O0GV6QTIH4ZlIop
hh80WoTL2Lpu1R1krcW7Kglfjk64MK2wOckIaFM+N2sxoPsfTg+dBkFf7nI70zUh
oLXJ0OQLeIl/Lv7JusYIwrSLoxdjV+GlDNWutJBFLCJWbYnnHXaVKPqf3vcS5FaY
c7O0mtLFjIvUKrWJEBTyUt0beJ+Prheis9iekodz+TDYCyU7MWYx56r2FBvK+Baw
snMB28w47GN4eOS7rXM9XtscDS8peqwysHvoefz506CLPHXtsLIRxNsi5veiSeQQ
L7APQ3dg5u/1dVq8UyEG9+sLDvT7XrzZVDz2rQUIhOk8QUFTQpV+CB/x7/vFVX2R
3Czs4rXpjh1hE5aFuet+iAml7Dz/SPyhoPsC7iJSQwAQhgJ6vPb+Ro225j4Er2A1
lxciojsv5TmEePY8aeVGLjB3dAHohfQSDN9rzGwAyVnUCGn4pqjZaP5at5kMJRNp
m+RUwRXxAXBPOwZngJdIi51uTMOHJBzee7oqUDxIJ3dEfTo8P4unxTqAlFxZwl1v
j+/8uWA0LlTv657Q/LUToebLT9v+89T8ic4iXyZxugyaYUhESohl569X5Cbx8SsR
0CdXk7sV/78upajzksL6Pgk/S3P7C5ZxqXJXs6/uxqCOeU8M69I=
=ys/Z
-----END PGP SIGNATURE-----

--wzyasf3tvvynofcq--

