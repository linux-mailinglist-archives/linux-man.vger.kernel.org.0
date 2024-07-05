Return-Path: <linux-man+bounces-1321-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A45AB928BFE
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A9D028438A
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE690148849;
	Fri,  5 Jul 2024 15:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjZOCOx9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7B813A88B
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720194820; cv=none; b=nHZUwH1JAuaDuiO3XwF+TzqU1bNInWG+dntnX+5YtHCYeDtOiieSKHzxH91i92HP8NXwxFclEBZA3HmsMgzB4x9pObLnpXosSpt1fjJx29IyGHjbuZamyGU0CvAl3cG1g4lY7ka2SpHpMU4fdcWI421RJf+zW/GoCmh4sy3VCnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720194820; c=relaxed/simple;
	bh=06tALYLulfCZEWsewRMRB5dlwz8NtCx82+MRbxUfsFs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GgeIziRpppULMtB2DRa8yyEVoKxTQ94H847iGt167+GOhaG7k8ZQya36aGxWcL5CJGDdbl7LWrGKmUN7IoNmEtV5w7k2Fp7JooQHIxe2MzgQMyn6YFZum39ItR1hlKnhvTxX+3lGAud7+jdMV5cYlPLVEueuq+AiSDmU6H4jVLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjZOCOx9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2600C116B1;
	Fri,  5 Jul 2024 15:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720194820;
	bh=06tALYLulfCZEWsewRMRB5dlwz8NtCx82+MRbxUfsFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YjZOCOx9gXjhPfIuXKlbkd2hFq8l2MI+gC740xGAxsxJxLgwGbijmu76ayBpMQAUm
	 f23fL5N5WYN8/oDKF+h8nhrEdu5l65qWhEAPwzO/Zk4zrww7YJT+SevNG1CR9SAyQD
	 1WWTyLAGJBM5HQq+S1i4dJLEdEvwKdjwxwQvkgL1y4klyUra2FnDJuupvFmR1Z1Ehq
	 alHzkNrHN5bEQSyGmEvrvZctfbZ4nTW+hobIaUZvLpO2cQ2/jkuuIa+vE/p149r+TS
	 9swyGKpuhp2gMpWFUN1oZWQAy4H3NzkdnwM9tzqVuDBeedybMpLhpd4HeTg3WxhTFB
	 hIwtYDqpIBe0w==
Date: Fri, 5 Jul 2024 17:53:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eptbhls2u4dp35mz"
Content-Disposition: inline
In-Reply-To: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>


--eptbhls2u4dp35mz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>

Hi Martin,

On Fri, Jul 05, 2024 at 05:34:55PM GMT, Martin Uecker wrote:
> > I've written functions that more closely resemble strtol(3), to show
> > that in the end they all share the same issue regarding const-ness:

(Above I meant s/const/restrict/)

> >=20
> > 	$ cat d.c=20
> > 	int d(const char *restrict ca, char *restrict a)
> > 	{
> > 		return ca > a;
> > 	}
> >=20
> > 	int main(void)
> > 	{
> > 		char x =3D 3;
> > 		char *xp =3D &x;
> > 		d(xp, xp);
> > 	}
> > 	$ cc -Wall -Wextra d.c=20
> > 	d.c: In function =E2=80=98main=E2=80=99:
> > 	d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qu=
alified parameter aliases with argument 1 [-Wrestrict]
> > 	   10 |         d(xp, xp);
> > 	      |         ^
> >=20
> > This trivial program causes a diagnostic.  (Although I think the '>'
> > should also cause a diagnostic!!)
> >=20
> > Let's add a reference, to resemble strtol(3):
> >=20
> > 	$ cat d2.c=20
> > 	int d2(const char *restrict ca, char *restrict *restrict ap)
> > 	{
> > 		return ca > *ap;
> > 	}
> >=20
> > 	int main(void)
> > 	{
> > 		char x =3D 3;
> > 		char *xp =3D &x;
> > 		d2(xp, &xp);
> > 	}
> > 	$ cc -Wall -Wextra d2.c=20
> > 	$=20
> >=20
> > Why does this not cause a -Wrestrict diagnostic, while d.c does?  How
> > are these programs any different regarding pointer restrict-ness?
>=20
> It would require data flow anaylsis to produce the diagnostic while
> the first can simply be diagnosed by comparing arguments.

Agree.  It seems like a task for -fanalyzer.

	$ cc -Wall -Wextra -fanalyzer -fuse-linker-plugin -flto d2.c
	$

I'm unable to trigger that at all.  It's probably not implemented, I
guess.  I've updated the bug report
<https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833> to change the
component to 'analyzer'.

At least, I hope there's consensus that while current GCC doesn't warn
about this, ideally it should, which means it should warn for valid uses
of strtol(3), which means strtol(3) should be fixed, in all of ISO,
POSIX, and glibc.

Cheers,
Alex

> > > > Well, I don't know how to report that defect to WG14.  If you help =
me,
> > > > I'll be pleased to do so.  Do they have a public mailing list or
> > > > anything like that?
> > >=20
> > > One can submit clarification or change requests:
> > >=20
> > > https://www.open-std.org/jtc1/sc22/wg14/www/contributing.html

P.S.:

I've sent a mail to UNE (the Spanish National Body for ISO), and
asked them about joining WG14.  Let's see what they say.

P.S. 2:

I'm also preparing a paper; would you mind championing it if I'm not yet
able to do it when it's ready?

P.S. 3:

Do you know of any Spanish member of WG14?  Maybe I can talk with them
to have more information about how they work.

--=20
<https://www.alejandro-colomar.es/>

--eptbhls2u4dp35mz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIFwAACgkQnowa+77/
2zKLRhAAimCfTCeHWtFjTJv9l60CjmAKtC7s1uS8whAqh/QyJoc7dDpf9ykEvNrq
psiUloHI6C6/p7EsZAMzLsXBSGmos1D/d/WlpoVlOPR6Dn9SxczFAEE92fOOghgv
1YksGBu1MfKFyJTjjf5gs+RPnXdIizfhMhTwY8vZBS39ZVpdwrAefBAJnJSHILTn
nPcNYUjNgOdCz0RkFaPOMC0GaYshGhey/iBN386QUBHrN3aYJyoPXeQuDghCtHKN
YwrC09lzOIZWA+lZvwUbb60sfdUx9BagGTzt8h1OIDClJU473hbvTI5UmtpoLw6C
3HGF2STEQT2Hrk1Ml4bKzvC0v2wxOx8l9e7cDQRT+k6sAKG3X65cRSCLA9kzR3/f
fJPVb8cy2xtdOSVW1sSk8TQC8O2DWs1j7k1kY6smafi43nR2CnjwFzP1yNxGQ63k
WE8beoka3rKmkVOtf1FeeMsKmzg+qRKytT+TeEUhZrggvPHd1YpZP3kK+y2uZSvy
7Fuv1o+AorpigdIwcvDTc4mpTZcc0ITEQhJAyn4iKi4h3NeL+hAAwECJqP7Q4U5U
cnAadm0bL/R7f8OeeO9rN0moCCBHG03O8UXoq7OFAup1VhnZPvcKo+xldotjkGGC
50o/2sSqPT7g81uSMMAbnsGTb1HPls5hPXnaMmL//RvsylSjmI8=
=JVjC
-----END PGP SIGNATURE-----

--eptbhls2u4dp35mz--

