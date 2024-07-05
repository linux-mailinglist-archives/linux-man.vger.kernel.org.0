Return-Path: <linux-man+bounces-1345-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 514E0928E60
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1562F287ABB
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB4D1448EA;
	Fri,  5 Jul 2024 20:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0QdPSGA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9F71448C3
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212909; cv=none; b=GW6y8BHMd3e8k5XlBqwo1Ixx9sfIzObp09tqyRLyE+I+RdgN+2sQBXOOvtOzfOfEpvtAFstnHqkD2iwtzYb0ofde3zmehGHAW3xTQb8ZYkLVvvaJubVTWekv7IMWb60h9weNJ3Pohtt+sDqIYnfIfM0HS7fDC10Qi6e3V+kfWjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212909; c=relaxed/simple;
	bh=zzMTqYXESCPKyavXMHBIvZt82AJBH0CNVA1ypnKLHRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Se8eXoE3ZhFPOGI1TWF9+uvXCZtSQsiZ9/Nkj8iNsB/HNo/jnwIVgBqtxif8ef3yLSVBW/Vva8Bp8b5AVJ0FnDoDbie2JDrWVL7RbY9ezdyTF8EnMjm9aURzi+BDIQr1Iq3Y3jgU/bQeucYCK85h/6i02xs+OCHawEsekkh1An8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0QdPSGA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8159C116B1;
	Fri,  5 Jul 2024 20:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720212909;
	bh=zzMTqYXESCPKyavXMHBIvZt82AJBH0CNVA1ypnKLHRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q0QdPSGA7s6jzW86wMRwDz1Hgms27HlSQL/lDO/X1wqMInUj9epsZhtuXJrKuJ4YQ
	 UaCC3/bFeHsFYCTfNqqwiUOtQRdRnvhdkObvEjugn85p7u8tzTPhTrKvPNrJNIdIAq
	 osup30yNKtKTueaSp6mpjwocfx/+UUq9SsmOwqQHnddSc0vgZDsXvtHhf4NVClLMLa
	 kpH5KJzmE6PVpaEsEuvL2HmThXKmPw2LY6Djkv+frv9QVngMVCVR6pQEj7l+su7946
	 Y+Ipoc2B1yHw3QTiCiC4JPaAI0MTyzBQlK9EhdPofMiyU4h/2czpCPewz4Vhzzj3Nd
	 +75AIZEfspJYA==
Date: Fri, 5 Jul 2024 22:55:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
References: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3vsfba2shupwztcb"
Content-Disposition: inline
In-Reply-To: <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>


--3vsfba2shupwztcb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>

On Fri, Jul 05, 2024 at 09:28:46PM GMT, Jonathan Wakely wrote:
> > If we marked endptr as "write_only" (which it might already
> > be) then a future warning mechanism for -Wrestrict could
> > ignore the content of *endptr.
>=20
>=20
> That seems more useful. Add semantic information instead of taking it
> away. If the concern is a hypothetical future compiler warning that
> would give false positives for perfectly valid uses of strtol, then
> the problem is the compiler warning, not strtol. If additional
> information can be added to avoid the false positives (and also
> possibly optimize the code better), then that wouldn't require a
> change to the standard motivated by a hypothetical compiler warning.

Let me be a little bit sarcastic.

If so, let's take down -Wrestrict at all, because it triggers false
positives at the same rate.  How is it even in -Wall and not just
-Wextra?

Here's a false positive:

	$ cat d.c
	int is_same_pointer(const char *restrict ca, char *restrict a)
	{
		return ca =3D=3D a;
	}

	int main(void)
	{
		char x =3D 3;
		char *xp =3D &x;
		is_same_pointer(xp, xp);
	}
	$ cc -Wall d.c
	d.c: In function =E2=80=98main=E2=80=99:
	d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qualif=
ied parameter aliases with argument 1 [-Wrestrict]
	   10 |         d(xp, xp);
	      |         ^~~~~~~~~~~~~~~

It's impossible to know if a use of restrict causes UB without reading
both the source code of the caller and the callee, so except for
-fanalyzer, it's impossible to diagnose something with certainty.

So, it's certainly not something we want in -Wall.

Or should I remove the 'restrict' qualifier from that function, loosing
"precious" semantic information, just because the compiler doesn't like
it?

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--3vsfba2shupwztcb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIXaIACgkQnowa+77/
2zLYtQ//dlfQcgZXaEP+0NYlbSDMjWm0qR/E4qrn7DrWmIQhkJXrvJZoFUSIHojx
Oneq1Hi3BtcrdwV8zWTV45Z6wtQsbKbzYYQzZysAeCgLFO4Fqth9Et4uc/7xlmpi
Z4EbrzVLK23nSA+17agA1N4188g4CbHtlGQr6DJdm1i9bF7mnQpfTy2PBKHDJhGg
a0KNa+bpPCEQSOs3ssU0pw1lgH7KEDAvaS3McIwKUphxp5k8jr2drMU8A/P4WUFh
GpBH+N43nmCNkSTVfpY27ds8QTogohcGoBWijCU4WGuwWciqll+LcuES7HBXkStZ
s9dgubdzvsMZx3weRDmcqp49VoXolovpJPduL4NOmIVHusOFr4H6XVAf0ylqGhR9
XH4dlwk0B2ozyh0G08BA1NtIkAugGnzhiTqsWupiBNJRJrMtH/sKx/Wr8aPdNkma
XF/bnaaMdtQNUnFw8oPJqZutxSAqPlvvpOnVEASplZyuIny1A6ERUw7EYL0W/JU/
Tdep45LE+48cu4HZvB23maWVsMF6WX9D4B16BRPrP3IVVpoBiXUb9GIue+E2hyGA
pcZimUcul2YGSUFG7cJC/Cz+Sr2N81iQr7JIgBI3fSWq6NZT3lEqAHYw+g+QKlyL
QuInnn1BM7EgdWQpOLR2LNC1EHHs1tw9llnf1KrE8BvK1/C31mo=
=NM0r
-----END PGP SIGNATURE-----

--3vsfba2shupwztcb--

