Return-Path: <linux-man+bounces-951-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECA78CAC3E
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 12:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FCED1C216D9
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 10:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A166B200C7;
	Tue, 21 May 2024 10:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5te2Uz/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A5814290
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 10:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716287499; cv=none; b=EVxuVxtRASpI8HeEbI5Z/3blDOtwSNgcOsNSDYMRRY8ihSU+I5GNLpXwGsYi0+tUL99siM2FLUkAeYC3u1TFrAfxM9iLpsqcyuZM8Bt4O+nZ8SyEVwgXHx4d31a5nFYvMTA13FpUDboKkwEPCCuSFxvMEFLwU2IGTd2IbLRhwGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716287499; c=relaxed/simple;
	bh=IFDVd6ZsWipRiO/gB0zQla5mF2Fq2xXg3r3nZ85KPEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uwlaur7VIfIpBzV4o1S2iM3hhj4GP7ub+Qce3ctQTyjiXrQB6d0iUEFiRLdYHk7ZIobwb7TD2FRyyA/OdtEKSh1gEvWCl6W8Ea+VnDd85Jpo0XZwc/3T1qMcLdNvkAUArjNoy3b2qwwcI8gkNy7iHlqSlZK1PLDKkKCsFTtgtmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5te2Uz/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDA1C2BD11;
	Tue, 21 May 2024 10:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716287498;
	bh=IFDVd6ZsWipRiO/gB0zQla5mF2Fq2xXg3r3nZ85KPEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b5te2Uz/AwM6HtSHHK0zsGSbHnRVfU3vQYdrUUpShu+rwH2PUA0Z1JuuGnjWUcha3
	 x6QJ3R1oZt11iBjfzTfnrCHjFoovvL9DbcU1ryvQZIGKcFoVAuQw0Y0es0IuE4pHeE
	 CvE6waUnUxYZdhHgnC6OCCdO4SZSd29sxif+fjmCsMoA8c7ysO/g5zNdThiWEOxhz6
	 wXCBMfLYyG9uyIyks4/s05wQ5Sv3i75QMIPxHV97vEOCeGmuOvt4M293gs7mo988ea
	 EJa/KT910nCybM1GbV0WlGAagpnwzXJYnz8hrj0+ZAkg6IlgzHlTSQH2Pd8zyusu6v
	 /HjZOUu2Panxw==
Date: Tue, 21 May 2024 12:31:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="42fgdqgetnhfkfhq"
Content-Disposition: inline
In-Reply-To: <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>


--42fgdqgetnhfkfhq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
MIME-Version: 1.0
In-Reply-To: <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>

Hi Rodrigo,

On Tue, May 21, 2024 at 11:08:58AM GMT, Rodrigo Campos wrote:
> On 4/29/24 12:31 PM, Alejandro Colomar wrote:
> > Okay.  I've applied the patch.  Thanks!
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3D8ea186128f96d6f8912e05c95544734004618827>
>=20
> Thanks!

:-)

> There is no online html version of this, right? Not even after the recent
> 6.8 release?

Yes, there is.  We publish a PDF book for each release at:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.=
8.pdf>

with a copy also available at my own server:
<https://www.alejandro-colomar.es/share/dist/man-pages/6/6.8/man-pages-6.8.=
pdf>

And if you want to check an online version of git HEAD (like this case,
since the patch was applied after the release), it's available in my own
sever:
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf>

You will find that my SSL cert is self-signed.  It's documented here:
<https://www.alejandro-colomar.es/ssl>.  You can use HTTP links to avoid
it, or add my certificate to your browser exceptions.

> I'm asking because I would like to link it in Kubernetes documentation.
>=20
>=20
>=20
> Best
> Rodrigo

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--42fgdqgetnhfkfhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZMeAcACgkQnowa+77/
2zLfHA/8D1S0dx+fZtbTDbkkUK1u7AuCEqM+BIWPxYi4Akqfh215w25LjqrsAj4B
LaB+JC4I89KiyprIoDVy4bTuFn5FMtPU5X37Sr5XXW6iUGRoWTw8CiH0EE+sxswb
bcl9RpcVQY4J34M+LmdTyPqF16jWcD8TmrtkcHOq5bCGAQVAKnQzTBlLAivBUtAe
yIOTzFibNPePtSj0R2GJj32QXr4vij8YmIpSFp/UE986etbJ/0Zwk7crBBPkfm7S
gB4NLNDHRpdVP2uhIHKxcPlyVJprhRVrnRUjORqcN2Rv7qnBRPG2t0+Ug2kARkXy
9RyM/cQgWVViqmVaeNDAgf0aZ/90f6IYYJvqyTQbDjirFhjNjqJWuerVgHuraIbt
f+f1ulwSmaUGivvJUiENfJV5nzTO0Wu7Ye8q0llohRpcOAg/qm28IntbaFRtrEEN
zj+E+/UqP28J7WFBtJR58o8X7tWoBbiWmuYiA2B4oTV0pqtLwNemmH72RVMwv8ms
7i+pEF6j1rfQBzQttEiWnzlwfqqbWkzZv9PtQzC0/HFEZCe+tB2Cg5hbx3T1lMsn
7oGU+RvviG0+alAvJz2zzvsvFbIOs4/WuzCEG/Xf2ie8Xa72vnAQxgVmmkH6qflk
wMYFfd5KPoDgA/0BbG3762qVlngaQZsjDezmyHemUjBRhwyktso=
=ZArO
-----END PGP SIGNATURE-----

--42fgdqgetnhfkfhq--

