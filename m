Return-Path: <linux-man+bounces-4047-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8620CBB9CB7
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 21:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46E303B3DF2
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 19:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340E31D63C5;
	Sun,  5 Oct 2025 19:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dej9idB6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6593273FD
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 19:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759693875; cv=none; b=LxU1S/iiVYB69XVnMmAP/078NgQit7D5HOfaDvPQtqxNMrvYq0v9v0jGI14348NOo2EoI8ZB8/bHvhO8Or5XDyoE//IFg7s7ZomQifT2OU3rnEIqqCZ0Ty03j6gKOb5s9caWdPMIq/JyUEwe/0Q6wYGsFQyg2VWNXMl7uqG3wXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759693875; c=relaxed/simple;
	bh=TVeVqezJCM2T61wYW4qtPaU6qtf1fzzkeecIBAmMMUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SshNazuZW1c6suU8UNU9m9LBH8JkQQ/NtadESdbPD2NprcabfE+r5Pe8VqOy3u/0rAFbgR21Z6blviosIu2219/JtXIPlZkALbEHAgt0a4/dRIK7swfyikMmmxYhpJRIZfDdTdY8LxUdow20yMQJJbBhyX5wNZBnAGC37txyvnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dej9idB6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E2FAC4CEF4;
	Sun,  5 Oct 2025 19:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759693874;
	bh=TVeVqezJCM2T61wYW4qtPaU6qtf1fzzkeecIBAmMMUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dej9idB6wtszCRYLvtnFA3EB5SifFYvxdJ8AJV8deFKw3fa8+J/GHJ3fm9LyJhXNc
	 Nf26c+rQaVK98Cdfyd90tp1E2nY9CVmPlVXHHIFaMgDaqKhbjnNC+/wiYACOUV0Ocm
	 UImFgtPwMZPC12U7Ze4PFAR790BkbkvudgGh9nqDND0CfovPgpAVYL8q0409MpUmGe
	 EVPz+H8zMubdHZrWexQQA/82Jazd6p88t+hzWJiCe+rzviibiwcqBuQvpDz0FBzQW5
	 3dgCKoisFHgsU8aHeD0e067zw7614cjwgJPNykA4HRZHw2BJTgn+JN0AQbBYFsHeG1
	 2TMMYYcJ5JYEg==
Date: Sun, 5 Oct 2025 21:51:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathon Reinhart <jrreinhart@google.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>, 
	Rishi Sikka <rishisikka@google.com>
Subject: Re: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
Message-ID: <ypaoat2man7lizoo47pkoc4pvopgfs4choac5ujnabug7rz4ej@orjkashmqhrd>
References: <20250924152313.1902586-1-jrreinhart@google.com>
 <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
 <CAJJa5HwukWFWQHkZwVOhuXZyS_ZpYYNFZR4KR2xesak1uiP7Ww@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ska6wznmmr7iveae"
Content-Disposition: inline
In-Reply-To: <CAJJa5HwukWFWQHkZwVOhuXZyS_ZpYYNFZR4KR2xesak1uiP7Ww@mail.gmail.com>


--ska6wznmmr7iveae
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathon Reinhart <jrreinhart@google.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>, 
	Rishi Sikka <rishisikka@google.com>
Subject: Re: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
Message-ID: <ypaoat2man7lizoo47pkoc4pvopgfs4choac5ujnabug7rz4ej@orjkashmqhrd>
References: <20250924152313.1902586-1-jrreinhart@google.com>
 <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
 <CAJJa5HwukWFWQHkZwVOhuXZyS_ZpYYNFZR4KR2xesak1uiP7Ww@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJJa5HwukWFWQHkZwVOhuXZyS_ZpYYNFZR4KR2xesak1uiP7Ww@mail.gmail.com>

On Thu, Sep 25, 2025 at 11:17:05AM -0400, Jonathon Reinhart wrote:
> Hi Alex,

Hi Jonathon,

>=20
> On Thu, Sep 25, 2025 at 7:35=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Jonathon,
> >
> > On Wed, Sep 24, 2025 at 03:23:13PM +0000, Jonathon Reinhart wrote:
> > > CAP_SYS_PTRACE is required (via ptrace_may_access) for accessing vari=
ous
> > > things in /proc, so include it in the CAP_SYS_PTRACE bullet list.
> >
> > Was it always needed?  Or when did this change?  Could you please
> > provide links to the relevant commits or source code (or any other
> > useful source of information)?
>=20
> From what I can tell, these ptrace-associated restrictions on /proc have
> existed in some capacity ~forever.
>=20
> Even in the initial git commit (1da177e4c3f4 Linux-2.6.12-rc2), accesses
> to /proc/<pid>/{mem, environ} check may_ptrace_attach() which calls
> capable(CAP_SYS_PTRACE).
>=20
> The affected set of files in /proc and the exact semantics have changed
> over the years, but the general restriction has, AFAICT, always been ther=
e.
>=20
> A few more notes from my archaeological dig:
>=20
> The relevant functions have used different names (ptrace_may_access,
> ptrace_may_attach, may_ptrace_attach, MAY_PTRACE).
>=20
> Here are some relevant commits:
>=20
> 006ebb40d3d6 Security: split proc ptrace checking into read vs. attach
> 831830b5a2b5 restrict reading from /proc/<pid>/maps to those who share
> ->mm or can ptrace pid
> 5096add84b9e proc: maps protection
> df26c40e5673 [PATCH] proc: Cleanup proc_fd_access_allowed
> 778c1144771f [PATCH] proc: Use sane permission checks on the
> /proc/<pid>/fd/ symlinks
> 1da177e4c3f4 Linux-2.6.12-rc2
>=20
> I could include this in the commit message if you'd like, but after
> digging through this, I'm not sure it would really add much value.

Thanks!  I've kept it out of the commit message.  Since it refers to the
mailing list Message-ID, having it in this thread should be okay.
I've applied the patch.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ska6wznmmr7iveae
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjizC4ACgkQ64mZXMKQ
wqnClRAAqGJ35CH3FBo0LccYujC4LbpI5BU3Ki9SJXY87XED6iWFlcnByPYaIbaz
XAryoh9MqtfoyiBRw+pUrcry0dSkSJDySaAfUwXwKLDL1yeJi0axqLqR3Vl8JvsU
6y+jU/vPqZf6JqgOmjiEtBU+F2zyGarKp3+b6StID+MGG2DkafnZhaoTGV9SnJHR
HBdkh9iGEtVwb64xkQ+Dm4ecOz82crtqL9AMWZ3Er9gVzQ/Sz3KQ9EdtPOvY2VVu
p0ceAI5poY/a8tWS9i89ITuQ8lqNo5PwzKtYwSkym8bg+qhPXBbA/YyOIlfl+WiP
9pqvHBWPMEic8iNYPmlQMhb5VcfusI99xnGMZkP6obKVlyfQhsZK5KAd5aYF11V6
JxYDuSlQGLVukY2trHk5d5TRQxrfEBQGtyIVpflUNk8xSSLNgI0XbmJW67LWWnmy
FR1VbHJKvymZlxn1Em3N8pW1IzloXsafp5d2semFEUL7XELb3Y57g1miaCI40Slm
z666MdzGNKNMBpB0ZdtZtKM0P9AaR085Tdmj4CZsJ/lIp8tWiXkqKClJKhmLLnMG
X4jcWFTXGt5WNEy9kGFmdCQiWBAkv51QDQ4jnGnHaEfPA951p7Y3m6zqALBS41L/
D6kRPcPb4xU1Ke+G9dKWL8IMC8oOqEfqxaAm0AY+wlth5C813iQ=
=ZkE9
-----END PGP SIGNATURE-----

--ska6wznmmr7iveae--

