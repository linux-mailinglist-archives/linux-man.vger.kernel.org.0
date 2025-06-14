Return-Path: <linux-man+bounces-3150-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C6AD9FC0
	for <lists+linux-man@lfdr.de>; Sat, 14 Jun 2025 22:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92AF6189848B
	for <lists+linux-man@lfdr.de>; Sat, 14 Jun 2025 20:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CE72DA77E;
	Sat, 14 Jun 2025 20:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oio1UY8m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB4A78F2B
	for <linux-man@vger.kernel.org>; Sat, 14 Jun 2025 20:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749933613; cv=none; b=L2z+WOg2lSBDAvtCpr99TQ3zWa4AJgmVKNBvOTawNbF6grqhRu62Py6DtoLigm6C5sz9Y4owygT7LBg77mKY6sFyBQOLIc5vaL0wvXzf0cjOtDFvb3kcstMZqFcPbDPT87Y4e6DblpJ4TNs3dUE7+shAGXgKFnIwMlh1Z4In78c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749933613; c=relaxed/simple;
	bh=/6lpW1ctLxd1H13lfvutdCLzH8D/9p0IMfszx77QsvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DuBw1HLZn4LjNOK2A1ENZ2KahXEOk7hNDsYEFb/qqwXOgdl29mI4catwN7hiNwcMJq4BtI1FmsN8/FMaAZJu0V2f//WpNw2cre2PfsW5omAEgO63rcnw6exogD568IvlmHFQT9+oAZ17eRH04+lrhbUQwfDSVWzCMjERENKN61w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oio1UY8m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C19C4CEEB;
	Sat, 14 Jun 2025 20:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749933613;
	bh=/6lpW1ctLxd1H13lfvutdCLzH8D/9p0IMfszx77QsvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oio1UY8mPCssCcIp03wyP/EJYUp1poQQd1LgK/ULSjt6zpCnzf8SF5lIyOuFSOD8I
	 DnKsZ7prMhPlzMcegomJJAt6TTfoCEdXqFl1QrqfbZFKiFDAsocdUh4nKBWNCeURO2
	 +2lFjCBHt38JKsOaPBIU6xQgE39jr+0ZerC8QdFyd5m9DFmsXhyHtvwP4sfFQiAtXH
	 DHZj2DBfPv3Ypeu70iFTDowo5Ht+fmH2lyvXBM3MZ3RiCVmmemTaNcCqtRAAf1XDQr
	 1huUbQ4XsHoltDb8+aPvfBavXCVPbTzE/NhsJ0jfOYjvYXFl6FEvcbO1Y/60A+avJi
	 u3Fh4Y2Aotycw==
Date: Sat, 14 Jun 2025 22:40:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
Message-ID: <pkorsesntdo5bbtzpooedzmtwkb2bng756mmquualmkgit7o66@czanarvsxdgv>
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
 <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
 <87a56bs5ug.fsf@gmail.com>
 <tbaqdh5b7t3ri4n7b5y3kuxkxucs2rpdv56f3ou25wrv4gaj6n@354pxmwl6fat>
 <87o6uqjc5c.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75grhqu6fhpcgicm"
Content-Disposition: inline
In-Reply-To: <87o6uqjc5c.fsf@gmail.com>


--75grhqu6fhpcgicm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
 <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
 <87a56bs5ug.fsf@gmail.com>
 <tbaqdh5b7t3ri4n7b5y3kuxkxucs2rpdv56f3ou25wrv4gaj6n@354pxmwl6fat>
 <87o6uqjc5c.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87o6uqjc5c.fsf@gmail.com>

Hi Collin,

On Sat, Jun 14, 2025 at 01:34:07PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Yup, it must have been some blackout.  They're becoming too frequent
> > here, sadly.  I'm out of home this weekend, so I'll fix it on Monday.  =
:(
> >
> > Thanks!
>=20
> No problem! I remember the recent Iberian Peninsula Blackout, but didn't
> know there were issues outside of that event. Hopefully the situation
> improves soon.

:)

Yeah, there are "replicas".  The reason for it seems to be that solar
energy is displacing nuclear, and the system is less stable.

Also, the villages near valencia have had many smaller blackouts since
the flooding of October.  I have a battery that lasts for an hour or
so, and that was enough in the past, but blackouts now last more than
that.


Have a lovely night!
Alex

>=20
> Collin
>=20



--=20
<https://www.alejandro-colomar.es/>

--75grhqu6fhpcgicm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhN3iEACgkQ64mZXMKQ
wqlUSQ//buNUmNxzx8bzspZW+La7lfpB9lzds09dBxfdxj9BGd6NtlPBqi3RL5EW
/wF7BECuDrVOip9RlRpk+tQKN0iEYDCMsQPyxqGmPb6uLTKM/jXlZ9iaJ2Iswkg6
gtk503dDO/lurQFngcaVHcY8kTMzFsXkMlXbtJUpqTZYLu/HXKEHKsGFyqjuOr+i
hm3YU8HOhMoKDNWbkltvnKk9ILh3uwGy7KqD90U5so3l6uDmRUpk3HqpfUqfC245
CQSJNH1rdwN+3FzatZ/ROS/+B0n6G0cNb0xvTkijTH8PYiyHZoGMoBIqZG6JL+fr
vcNiYeqxPHwxJfBY9+ueribi7CE/fr7wGEYk6YjKuilLmFdZjwv10J5SczFf2g2W
M73mVtnSIIg7Qx93eao5QaRENrY3aP91yTJCBKQttG3BRDgKbYK5yPITCT71qJ+v
IAZFQ/gsqpNiYSOjeJg1AIxcByYqRSjtHs5jy1lAE8tVoQpFxJIb6M3q/l4W+WSH
LNQaxeZuBd/R2GvQCM0cUH6CRsZropSivOslMtJMwAv2Vn3KC2B5+oGro9jL48Vy
Tw2uYxGL5zeXIBRIPbsPOSqfSd9LcwbL4Hd6T3eZ1R37z2rcM1CIRxzy2M9TTiYQ
kgQqq7HZWVXSkP7jaU3/4pN553YvkmQksoHxFPaMcfIAU5eZ6I0=
=I/QV
-----END PGP SIGNATURE-----

--75grhqu6fhpcgicm--

