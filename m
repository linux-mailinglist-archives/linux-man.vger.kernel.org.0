Return-Path: <linux-man+bounces-4561-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B8BCDE173
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 564393004F15
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856CD23EA8B;
	Thu, 25 Dec 2025 20:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPxyEpZ0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EFB18BBAE
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766695519; cv=none; b=JTiD0LM3QPVccgczi1psVWGoMRzpvqCr3ENbX1zuq+AoHhQyBtlyn2bmu/nfGLz97IdjM7iWrBLhCbf4OEwRlK14otmoFDO+Bn8SiLunMWtGro+oLpsDeXzD3uMlDbal2WYeDUE6PsBUnD5CkSk24Ph3yNVKNHruxtHpkUHLcTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766695519; c=relaxed/simple;
	bh=iXyHtsRPy6Io2D5KRhTwR6eY6/reDqdQV29Wh6CIK9A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MvnqunhciqXlvJTbVxJat/CEWiSRqFMQblS9Mz8K7dleZxvP1u/dtlfFgYiakUXhPiAa5cEfw6OTytW1ZcZ8NGTvmX0NUODuDQFAOAY2rSzJ4/diHQXyc+L7/FEEJiTH3yKyTORLXGdypNO9GwoDBqr9jkhmVwpbQY31/KNiqsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPxyEpZ0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F146C4CEF1;
	Thu, 25 Dec 2025 20:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766695519;
	bh=iXyHtsRPy6Io2D5KRhTwR6eY6/reDqdQV29Wh6CIK9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rPxyEpZ0QstG5Sv7hM8f+uHnhvNuC28jK20oeSApb7zU8LHD6Y/xJ5WzhsotA2J4T
	 /MLLCB1Jq/xnkCTdWapntfQwTvFUL6mmsOAAaScnD/Z2Z29B7UinLk2Yd7rJ/FU/SE
	 T+OxdwjSzihrQcavo1Fj4LUHi2eR6Pnn1IGl3Sa1B1yY/GmLeCH4PgushnfqM5O45u
	 2fiqb1ZdslJO1Aw30s75w1HKNM6PxzDBWNoJoUwLVvaAUlfrxmnWxRv9qc1ui6sFrE
	 lvzQ9HH9BlmxPTLOYzwIOjcTZw9CKDhMh7FmMJNRcsb3jV3IdbHsLtTN+7zIVIf8x6
	 aaGCS1yHZ5gjg==
Date: Thu, 25 Dec 2025 21:45:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_TIMERSLACK.2const
Message-ID: <aU2iPS6cGLMTex_T@devuan>
References: <aUv636Ne0XcB5LYQ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e72uf2ctjdviefvm"
Content-Disposition: inline
In-Reply-To: <aUv636Ne0XcB5LYQ@meinfjell.helgefjelltest.de>


--e72uf2ctjdviefvm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_TIMERSLACK.2const
Message-ID: <aU2iPS6cGLMTex_T@devuan>
References: <aUv636Ne0XcB5LYQ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv636Ne0XcB5LYQ@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     I<init> =E2=86=92 B<init>

I've documented it as B<init>(1).  Thanks!


Cheers,
Alex

>=20
> "When a new thread is created, the two timer slack values are made the sa=
me "
> "as the \"current\" value of the creating thread.  Thereafter, a thread c=
an "
> "adjust its \"current\" timer slack value via B<PR_SET_TIMERSLACK>.  The "
> "\"default\" value can't be changed.  The timer slack values of I<init> (=
PID "
> "1), the ancestor of all processes, are 50,000 nanoseconds (50 "
> "microseconds).  The timer slack value is inherited by a child created vi=
a "
> "B<fork>(2), and is preserved across B<execve>(2)."

--=20
<https://www.alejandro-colomar.es>

--e72uf2ctjdviefvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNolsACgkQ64mZXMKQ
wql6jg//ap5D9jNt1E+tFc1dvz+JMMvQE2uS5tAGF4dYMpBYwekP9vfL7qkrY4HO
THjk/vM30koiuIi3OOGYJKe6ikDgaKD95OZd/4C53Qhb5FSWuHGY/x7wdVBdmjBd
UP8Hk2NFid9R8UZ28bdPUUKn7VZStnYWx4l+gR/5y9O1DwpOO3Y475mh+ZUs7lHl
LcyBBD90NuD+CffX+oJp28/mg59EE0GVzh9J+RTar40g+KLTPmKk4bhLTJF8tW8d
nAvfflXmZEG3I03TXNngg/x6pFEB3F5npkfqJtfJs4EVG8GT7GzMDvYq3D2A+HVG
ksZcWmLzDqn3KT0knFcX3fA/LI+L5QLegokPIpmbSqGyu164/tfQ53yHs6O7XOMG
3YjQ8CXSaXeSSg0VCRfjIC8FDBK9zrHxCg6g6+FudLx8546mDEUjHfWTnfHN2W9h
NgDUgp7hdHzSKlY8n0Z9Gvb5Cyvkqz67SLbDl/on1p9L8FZjhQv9zfj1H4pTx+Z3
WZ1UJL87mXRBXmNx51433nT2gnOnDrDsEFfuhdzfhdM0KrW44Kh6M+t1+tGCs0sr
HNw/eL+k+o/3snMZdVINNhBcg3qprB+nEK3LUwXJTNG5KDH+q9DlQJLsjqqLNL0c
oNsP8LUJPkGeIgWWsOSC8n94sOPlVaYCl6X1U88SqOsKJjn11/U=
=YNXc
-----END PGP SIGNATURE-----

--e72uf2ctjdviefvm--

