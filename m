Return-Path: <linux-man+bounces-661-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91B87EBB3
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 16:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74F56280F75
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 15:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA504EB49;
	Mon, 18 Mar 2024 15:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odsmdb+f"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD654F881
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 15:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710774572; cv=none; b=Xn1p93+svc4IyRYUPvwX937PK7lWKjnh/M6ayLuqtaAO9K/CNe13gPbZ40JU4lup8xJauQwCVgy5ckGtDfHbGyiOi9RwvRmTyS7BZTdAi82dLcIgEm8FitVf+tyPm7huHYlpV+bdbBbxCvxdvVPzOf5Jd6LNAdmxbdBq1CIKddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710774572; c=relaxed/simple;
	bh=SDV9+11wHQCn/PtXRp21lbzOoqsLmVRBcZyIxzy2M1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQ+SmcnuQyZTfjX6pdlXGwxAYCgdVzaS6FAwfJ907XbmVU0TIcKMimhyZdM92oi1UIZWrE2dejy0erce5gb4G/9EkzCsD09ji8rx9OpGssxDaD+4WJphL1X9g538eK/CMoMvElw3EZbqGnhuHg6lSNWcKIhaoswSZXJG/ECxIGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odsmdb+f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94CA9C433F1;
	Mon, 18 Mar 2024 15:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710774571;
	bh=SDV9+11wHQCn/PtXRp21lbzOoqsLmVRBcZyIxzy2M1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=odsmdb+fFhUIhBOKbeNANbf719HePpIKYwPxN//biCbIIs1X2WEta26YKcuWesFuF
	 iopvXI5tKTwUoMmjbN6X96+JoL5NwGGLLUrQT/hiQl93xMakDNgDJzZvFdRl5j005F
	 L8QlqOAgwChlSDskVmMV76B3NSsi87KJPUo+qA0hskbXrwxmkmszc1vJZN7IH4WR5w
	 XutScQNoTLTMrJE2jtn072rj/O7M8JPdSe6IUFmDONvvOTxLyfF5YY4aA+AlgcYm5w
	 HnljJFDe7/EDCfFbmz6Ht5uy9sjVD9LiJf1jx35+skCMEJOh30Bw+tMWS8cZ4ZK7IW
	 ol3t7uDrvDN4Q==
Date: Mon, 18 Mar 2024 16:09:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfhZKLOVh9AOsWjr@debian>
References: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
 <ZfYJ7MQdjRC3-mzN@debian>
 <CE2DBC36-6297-4B9E-BA65-F14129A927EB@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+n1vt//hYUl6t1Bf"
Content-Disposition: inline
In-Reply-To: <CE2DBC36-6297-4B9E-BA65-F14129A927EB@memverge.com>


--+n1vt//hYUl6t1Bf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 16:09:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

On Mon, Mar 18, 2024 at 02:38:48PM +0000, Svetly Todorov wrote:
> Happy Monday Alex,

Happy Monday Svetly!

> Thanks for looking at this over the weekend! Hopefully
> not too many more changes to go.

Nah, I think we're almost done.  The patch LGTM.

> > We should document the kernel version that added this.
> > Please look for other (since ...) in the same page
> >=20
> > Have a lovely night!
> > Alex
>=20
> I was referencing MPOL_LOCAL in the same page and there are
> two commits listed under it:
>=20
> > .BR MPOL_LOCAL " (since Linux 3.8)=E2=80=9D
> > .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> > .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
>=20
> I want to add a similar comment for MPOL_WEIGHTED_INTERLEAVE
> but I=E2=80=99m not sure what the equivalent would be.
> I=E2=80=99m thinking to have something like
>=20
> > .BR MPOL_WEIGHTED_INTERLEAVE " since (Linux 6.9)"

Yes, the above is fine.

> > .\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758

And yeah, this is good too.

> Where fa3bea... is the commit in the kernel git
> for the weighted interleave patch:

Yup.  That commit is already in Linus's tree:

alx@debian:~/src/linux/linux/master$ git describe --contains fa3bea4e1f82
fatal: cannot describe 'fa3bea4e1f8202d787709b7e3654eb0a99aed758'
alx@debian:~/src/linux/linux/master$ git describe fa3bea4e1f82
v6.8-rc5-108-gfa3bea4e1f82
alx@debian:~/src/linux/linux/master$ git log --oneline torvalds/master | gr=
ep fa3bea4e1f82
fa3bea4e1f82 mm/mempolicy: introduce MPOL_WEIGHTED_INTERLEAVE for weighted =
interleaving

> https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git/commit/?h=3Dm=
m-stable-2024-03-13-20-04&id=3Dfa3bea4e1f8202d787709b7e3654eb0a99aed758
>=20
> (Forgive me, not sure if there=E2=80=99s a way to shorten long links like=
 that).

No problem.  I don't either.  :)

> I can=E2=80=99t tell why there are two commits listed under MPOL_LOCAL, t=
hough.=20

Maybe one commit significantly changed the feature.  Don't worry;
normally there's just 1 commit listed in the comments.

> Do you think just fa3ea... would be sufficient?

Yup!  Please send and I'll apply already.  (And remember to add the
'Reviewed-by: "Huang, Ying" <ying.huang@intel.com>'.)

Cheers,
Alex

>=20
> Svetly
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--+n1vt//hYUl6t1Bf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX4WSgACgkQnowa+77/
2zIWYg/8C8xt9LSkMq+irwavGZlsQs9fV6wix9IXpia0D/Esyn4OU3t87TSlmoFG
rzo0WHtXIlxhhBFrYooxXUs5OZ4JWf6fRRFVtqbbANwHn4+gPzJvk0tzp/99sjd2
yq41dolqKishoeu8wLPZfSbWkpgQzsE0D0plCu0UoiZwtlObDvmgQnWtE0yv7fB1
t91RSgj9Y8vSBfcLhDq79sSICv2L1PLbOleOv1bkGRDE6h5+Z4PqFIv0PKmY4BsO
vKNz5aGeVUFkVLe3EYcGopFxWj9AeuiKxilIRPG76pmmNNrfj4312NaijeubILyT
9QsE5g113tCoQGukUFnvQLFkvTOmjKHwSwR9+HFNsvkVFT2LUwu5/Y44/8LXCXlm
kQ+rtbGJ/QRsw0iaPlGFNBzE6AKP9vCP4GWpz7zw633DDPNVBXwN7rvbAE9hkFbb
CFqNUjc5mj3hoeRY15cGWIgDVHINrE5CaXBDSqmyP7JAZdEs09QCxLzftdPX11/K
IpSO6nYwS9+rxZ4hEd67swEtOrC8ecuVlzoH7Shoz2tIMsJjSZcvhgxgGRfJSUZE
uoIpjlZuBpSri7aMiXS3Q1RBP7ZkLTdoH6yJEQ0Wqx3WT7lMpxeCIcGE5hnXD0T5
/MbkBnmrSTOSVut0UcptYsYq/fk/YXcsz+srbwA30rC8e/D2Q5s=
=Wiy9
-----END PGP SIGNATURE-----

--+n1vt//hYUl6t1Bf--

