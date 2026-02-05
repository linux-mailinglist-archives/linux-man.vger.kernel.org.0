Return-Path: <linux-man+bounces-5036-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2N9UEWSkhGmI3wMAu9opvQ
	(envelope-from <linux-man+bounces-5036-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 15:08:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F13BF3C88
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 15:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F8BF3030EDC
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 14:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962723EDAC2;
	Thu,  5 Feb 2026 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZBlijxX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A98D3D7D6C
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770300263; cv=none; b=ZOkNDGrwwp6EZmh+TdP031O3q7EzV9DY8NWLh/FkU6QjSWmnxy5iGpiS314S/Kg+0f2epdAa1GoEKvEiw69nF0QKnDWA/NQE4L9hg691SASNQNFlP51LU3bzETDB4hLBd1uYod/cT29pPjwCdCIUNXHdv3GWWxdeKVvtHrJwUSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770300263; c=relaxed/simple;
	bh=dAg8YruyDtmRzu2hmqzSlzxgWa63OWR2OD66L0vM+G4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TBzRrlKIg1zq06Q7Eva1zZEN//uIxDQED11zVTaVYuFxpJFdFFuI/acgGEtBUeOLBhzok744oRYKvrj3CwzyvKlKNFOOeKm3Zyq7Ws+qpIYdVLBPk5fkvTWrHzheH/2T+rVGqwzU7VmS6OK/EFEGBH821WjmNpLl1SqIYVypfv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZBlijxX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57FC5C4CEF7;
	Thu,  5 Feb 2026 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770300263;
	bh=dAg8YruyDtmRzu2hmqzSlzxgWa63OWR2OD66L0vM+G4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JZBlijxXMf0v/p2yva7qCyIdRjGX3KOKg9olLSI72RVOx0BgFRS2V2CkP3mmE2pZ+
	 5lSvl2+T5V+LalY6ge4iXUWFvLCMZ+R7IXmn57yCzUTQcPtJkKZSSlStCqkMYND9MG
	 4OUwkTEzdN1390/kTp2q/W05r4AyeuWTTWFZ7qTFwQ8tbrtQDVcBi7dVQOGU5C+seh
	 ZWod6lzmFvA8gNh4HTIMdT1SrbWqcpKr8jhTdavYvHOc3i6ISLOvUcKnxvZzyMtDtP
	 va9MxvrD1nOErYlWxVrr5DyacTVUPLHneQs5HM3RcljkaFWRx2tIrW/94dYBBTwMHk
	 e00QF5sWzlrjw==
Date: Thu, 5 Feb 2026 15:04:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSi4mKh8jbYy4HD@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2nvnzmqh4xt4pkeb"
Content-Disposition: inline
In-Reply-To: <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5036-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 9F13BF3C88
X-Rspamd-Action: no action


--2nvnzmqh4xt4pkeb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSi4mKh8jbYy4HD@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>

Hi Jonathan,

On 2026-02-05T13:55:47+0000, Jonathan Wakely wrote:
> On Thu, 5 Feb 2026 at 13:26, Alejandro Colomar <alx@kernel.org> wrote:
> >
> > Hi Jonathan,
> >
> > On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
> > > Hi,
> > >
> > > I don't understand what "except for the added restriction" means in
> > > aligned_alloc(3) here:
> > >
> > >       The  obsolete  function  memalign()  allocates  size bytes and =
returns a
> > >       pointer to the allocated memory.  The memory address will be a =
 multiple
> > >       of alignment, which must be a power of two.
> > >
> > >       aligned_alloc() is the same as memalign(), except for the added=
 restric=E2=80=90
> > >       tion that alignment must be a power of two.
> >
> > That was fixed (removed) in
>=20
> Oh great, thanks! I was only looking at the Fedora man-pages, I should
> have checked git first.

No problems at all!

I believe asking can sometimes be more efficient than checking, and it
triggers discussion, which may sometimes uncover unresolved issues.
So thanks for asking!  :-)


Cheers,
Alex


--=20
<https://www.alejandro-colomar.es>

--2nvnzmqh4xt4pkeb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEo2MACgkQ64mZXMKQ
wqlf1g//QOH5nYKKEpLTkwzFV7BXRNlsFkQcCAYlMaZFyxzab5HLE7s2x4yKdxvb
K0T7oO/FWFFoQjEGgB3lB/7AfR0gmhqc5eDmkNdcdWWfA1vpg5NmiFI5bKBUZxT4
S9/vVlgRqxJkiHFeT7Evut1Qnvid+imGJ98dnIU0nDtvJCyF0+7qZTKLaZZaZiUK
d3bzX/8knteDClhpxXKLzyMd5Hf3fWdv+wZzpkn06+LAduPXPo9yHjTuwVYDCQhz
B7UNQGPi5uiN2fJBl4TEwM/OCdd1u1cD298gYOyuF2LRChuQX/cx35zp6wogbiPb
mrSiLQKSArb1IOPq98GSbEOa7JpYxI/o+jz3vt45dqwikAB0MGYZ/hvjAOjslSm0
7gwqFuJjbPnKANXuJ7gWpFYZAHZ5o/81G18X+bzbFvOMF48SjY+i3gjc++6glTpX
q8LQjNKz0wvSIa+294zTFZCG7v0dxWsRteA+2N/CgAraZBQK/F1OtIke/txYH5T5
VztRUKbDRJl47+km3qFqGq7k+HpFjy3RAv4hmmhSPX/8S/aNaAyYrQawr+ERK8L2
f9v1d3ySYx700UnCbJCwZ0X3GUaar2nn2eJzjVJo3DaPtbyQLkhwFxxX3uVs6+Cn
WRxQS0jc0susMifqOVG8jy48TmB6uQZOS9398tFit46CZcNsUbk=
=1JKx
-----END PGP SIGNATURE-----

--2nvnzmqh4xt4pkeb--

