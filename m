Return-Path: <linux-man+bounces-1344-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E119928E4E
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE843287596
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887981369B0;
	Fri,  5 Jul 2024 20:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6gOscbB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1181F61C
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212080; cv=none; b=eesig3tcwYS0QSDDjbMypgmGJ26NbvT5CxF2tDB2vC/9ySL3/ARpKB4oATNA9Di69hPcwM+AsK15e3n/yT4mEvzvIWCIGFT6LCANC8fjo3qAQch5m8t/c+h8BwZOB+xBcH7byZLSQpSiMCVNGUBlE1aGCcctk6baG+0gga0bdo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212080; c=relaxed/simple;
	bh=JSVVVuA3cHVscuOo5EANuL9WrEBfc5npGCZ/vaXlx48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bTxq+pBc8aZ3mhJoaQUiBdAv4cx7kxNaQTIgUdZpItyYjkHwxfBkpFjM7CkwTi4vtmOUGzyqW5XZwMowCZzfrjXooiWdmK14sTwGBhPdrZy80VYlvQKRxbIluCmTbCXBacNX+vMdrvXwNQ/z+fI3rzWi/wl+32JCs5PMkeThyLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6gOscbB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3237C116B1;
	Fri,  5 Jul 2024 20:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720212079;
	bh=JSVVVuA3cHVscuOo5EANuL9WrEBfc5npGCZ/vaXlx48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u6gOscbBBlMWvs1ydQZBejnniC/qY8tbCdOBTTln1Wkc8UGJ9w4e5LHZcf4wlEIhw
	 jjMZyIjpmZMVdOmji/s31pSt5vEOKiEXd5ImQ0Z+enunyA+kGC9TnW0olY5DfK60B4
	 mdTLaeZeyhube4dUQZ07OijnyZ2d5PgqlSTxXua+aP+b6VZm65ePKlcUP8oPy0PIu1
	 uH9l7yZFX4b0iVOO+8ABWw/+gtdnIgLA6QgaF9ETEfFDM5m6vUX8RjgUnN4ZxgJRKK
	 La5wpj08KusIqRCZ5T28+/zzOAknJ5SUj/P5WJ3IkN1gd1h/Jgr6UMn7/ljWcAAm63
	 h0CAoJNZlwCdw==
Date: Fri, 5 Jul 2024 22:41:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <fa2flrqt5kohlkfxmqaopi2ug5olktxfs4vz7bj66zl7cudcew@6ivbfc64hhne>
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
	protocol="application/pgp-signature"; boundary="p2mgqtrs57lqrp2g"
Content-Disposition: inline
In-Reply-To: <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>


--p2mgqtrs57lqrp2g
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
> On Fri, 5 Jul 2024 at 21:26, Martin Uecker <muecker@gwdg.de> wrote:
> >
> > Am Freitag, dem 05.07.2024 um 21:28 +0200 schrieb Alejandro Colomar:
> >
> > ...
> > >
> > > > > Showing that you can contrive a case where a const char* restrict=
 and
> > > > > char** restrict can alias doesn't mean there's a problem with str=
tol.
> > > >
> > > > I think his point is that a const char* restrict and something which
> > > > is stored in a char* whose address is then passed can alias and the=
re
> > > > a warning would make sense in other situations.
> > >
> > > Indeed.
> > >
> > > > But I am also not convinced removing restrict would be an improveme=
nt.
> > > > It would make more sense to have an annotation that indicates that
> > > > endptr is only used as output.
> > >
> > > What is the benefit of keeping restrict there?  It doesn't provide any
> > > benefits, AFAICS.
> >
> > Not really I think.  I am generally not a fan of restrict.
> > IMHO it is misdesigned and I would like to see it replaced
> > with something better.  But I also not convinced it really
> > helps to remove it here.
> >
> > If we marked endptr as "write_only" (which it might already
> > be) then a future warning mechanism for -Wrestrict could
> > ignore the content of *endptr.
>=20
>=20
> That seems more useful. Add semantic information instead of taking it
> away.

How does restrict on nptr (or conversely on *endptr) add any semantic
information?  Can you please phrase the semantic information provided by
it?  How is it useful to the caller?  How is it useful to the callee?

Cheers,
Alex

> If the concern is a hypothetical future compiler warning that
> would give false positives for perfectly valid uses of strtol, then
> the problem is the compiler warning, not strtol. If additional
> information can be added to avoid the false positives (and also
> possibly optimize the code better), then that wouldn't require a
> change to the standard motivated by a hypothetical compiler warning.

--=20
<https://www.alejandro-colomar.es/>

--p2mgqtrs57lqrp2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIWmsACgkQnowa+77/
2zK9sw/9E71j7lVzIU3mV6mFCbTD2S3o+NLsgHMeiy/A8KVZAPjtbHttMCqYckML
FeUCF5i3Tqy5+ZixDx//4Nt3Txu1fsJ/fuEp5+7DsiDTTqQo6PUyek7+iq3itY1b
XhlQehXGtlAI0bQr6XXf04Z/qlSi9vKv5d9FNItDj/Zfb0Ay4ipErWTRAoneLXRC
wUrAgu8DFY1iVlHF3EEwgpz+Kw76koIIcT/j+jbKxFxWiReBwnz2f6qV1caf9Rm0
cs0p3nqQ6OMQ17H/Lff89y5Bejg5+99+tMEHoiAThh3zMXMUoVo6+VxCqNDlGlnQ
OYGQ6tz+3E6ONU9O8TmfwIAewrwEvnCEiqaXWlpzoWSdBPEWVrLdudPHJ58uuaFg
mIx8PQjtpJniOKo13av2ywzH2apK2COIhVg+aftc+rg2crAy/vETtwuH0hF2c4cY
P4Rs/NS612fie22ORe4sX89GGQjPJOMHm56nmFplILZRSQs49BhQwO9zum3wMDxq
EH86aR8gNAYsG/O64X4C3/CVOWY/V/VNOuktf7T+k75GlC8kVhdxv+1s5IEyhwxn
zKGEiYVHbXuZRwTPULPP9JwiADEw6Vqi/QnCAnCPyJK9cW3orCh1/iQ0kIpZuh8J
laaucPiP6Zq0cBj8msZYIwomDYwh0+Gxn/gAsaLOYVcWoW6UgCk=
=3d15
-----END PGP SIGNATURE-----

--p2mgqtrs57lqrp2g--

