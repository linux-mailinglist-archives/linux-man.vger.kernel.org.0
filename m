Return-Path: <linux-man+bounces-3376-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBB5B1CEC2
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 23:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AC8118C5D78
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 21:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44DEA22A4E9;
	Wed,  6 Aug 2025 21:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUVfuLGZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0438B2E36E7
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 21:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754517520; cv=none; b=XgxOZpk021Tv7QZ92NgWdjH/+1RzU8UPHqG7ZgD2ubTt6913uCGFrG7g2Z/RsMSGq2vTNs2dflBAdPLHZ/F1duhiGlPQaPWh90/Re3TvbYL4QZLcalwhGCKeo7jhC51lyteys1gMOJSFYrJki3akTsG8jl1hkzP84YvyQdDRGI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754517520; c=relaxed/simple;
	bh=DLX7EPgleajxZzC9axBSczWZ3Y/JHXfJSZW1Ewrk01I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EiAlOcxMPxeoKEQhZtrnp/+nZTptqrg0AqgspM297Qbh0oROGTHN0m0oszPDDt8T/+/CeDAjOAUXl4xt10KN9XJA0yVexRl4w7AZYkaKKP7BQSMpSS3O0jAn6WGH17x9HNpBvVF0wGiIcMGqUU8iCl8T8bx1lFr6hS1BUL4Ahh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUVfuLGZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5515BC4CEEB;
	Wed,  6 Aug 2025 21:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754517519;
	bh=DLX7EPgleajxZzC9axBSczWZ3Y/JHXfJSZW1Ewrk01I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tUVfuLGZdFwqayaHU3IKp2Ua6iFbhFt/UH3VlmRzwwpZ0+st+4haMHLUQ2FvBvuBZ
	 JdupQGJcQa72fYuOVymuOj7E9jGJLqCnBd96FDxyd3EvMFLtThn5rzCjHa/LdxagHg
	 b5ODjS6HqG0vVFOfMDtcGolw17OFHv2tU3EaR8qyZixWSPJQMy5ZfHUlhHyZt6WmJt
	 ljp7gve9AgvQ44Rf4pCn8t1rh3zGnf3US8F9DFVBhQE6L+WQczyeRk8UiqTS2rJD3X
	 U07ZHgh9g9g6vAEtpM1YmlVQgGki45NQjY6pL9RSQ4Qa914VIen18f0vG+rQf0s7yF
	 7Ibke6X+bTKWQ==
Date: Wed, 6 Aug 2025 23:58:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <a6mfkenxducyucezlcsvddsnq6enhgrodbsqhgdwpxs3uhuqco@oyknen2yilq3>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
 <2025-08-06.1754495787-noble-trunk-meaty-crawlers-oval-sleds-U5vKos@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="krhic5qbxgjbyvhh"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754495787-noble-trunk-meaty-crawlers-oval-sleds-U5vKos@cyphar.com>


--krhic5qbxgjbyvhh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
 <2025-08-06.1754495787-noble-trunk-meaty-crawlers-oval-sleds-U5vKos@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754495787-noble-trunk-meaty-crawlers-oval-sleds-U5vKos@cyphar.com>

Hi Aleksa,

On Thu, Aug 07, 2025 at 01:58:47AM +1000, Aleksa Sarai wrote:
> On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> > > +This field specifies which
> > > +.B MOUNT_ATTR_*
> >=20
> > Please use
> >=20
> > 	.BI MOUNT_ATTR_ *
> >=20
> > The variable part should be in italics.
>=20
> I have changed this, but I took a quick look and it seems that
>=20
>   .B FOO_*
>=20
> usage far outweighs
>=20
>   .BI FOO_ *
>=20
> usage in the repo (before these patches, the latter is only used in 5
> man pages). I guess this is still being worked on?

Yup, I'm working on that.  :)


Cheers,
Alex

>=20
> > > +attribute flags to set.
> > > +.TP
> > > +.I attr_clr
> > > +This fields specifies which
> > > +.B MOUNT_ATTR_*
> >=20
> > Same here.
>=20
> --=20
> Aleksa Sarai
> Senior Software Engineer (Containers)
> SUSE Linux GmbH
> https://www.cyphar.com/



--=20
<https://www.alejandro-colomar.es/>

--krhic5qbxgjbyvhh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiT0AcACgkQ64mZXMKQ
wqnt9g/9Gfp1KLOwKTD13LDHaHVdejj8ensV96EjDVICOfpZ1C3Pz3fd805cl3q6
+MFPXzdx5HidPTTylqeGAbAs2DYkKC8DwrHiwpcElQjy4nqiddYEgdEpekDJ/1gN
QOpsR5k9AwCQNI1Gmet1RYkuLCZWtmQmKSOp5XCc/twwdAv6N1P1DT9tUqUAy7hI
htvUjp+WAPHQDe6cWg5Cs1k9Igzwi25HUJ6pPKedguQ9BQPNsMgJjZWtoqpNQnrY
yNksOo2sRw4PMxJHRNZJ06TVAvUVHpYJNWo6QIdpDItBP7Df7aWdRzIrBzraew48
cGJ+ip8zfmOE/tgHrBdG34YgaNsBq+6UTrWyKYo5e5tWdn5eZ74G1B9/ldQedcl+
VMDsNOsvQ4p23iav6thjR+ni+Mvgq7myV/8tPkZWCOKyaZGzjJj9vZUgseInBszi
SiBQE7hFq09Mp/yLj16SQbjyZ4Pxz38sbJz82+eVJmswKyE33Dss+h/CtrO3QR+9
lVa5jE77JB+uOYy9oqXWi7txk00mxXoCRvD9KkLfhpONw+DH0vDc3SlXGJUg6FeG
sCyGW8tKyXg5iBcttCIOG7lsAlhydRt8QvnB9cplS2cIPsmNxw5EEyYceD0rISt4
63MoLDaXHKWjVSUZv5g+Dc7w622lzOP25vnfe7QNZkCHc0d/xbE=
=pAbR
-----END PGP SIGNATURE-----

--krhic5qbxgjbyvhh--

