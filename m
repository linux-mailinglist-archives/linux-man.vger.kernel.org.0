Return-Path: <linux-man+bounces-1332-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89299928C57
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3222B282AD4
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8523C463;
	Fri,  5 Jul 2024 16:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKa2phbZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC582F32
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720197150; cv=none; b=G0Tg2uH/t2GQDfXnPlzTPkGUO/tgs+GqkRfI3hfetwd5TfPz+DDvJ628AcTjXQ2ucL2NymuGy5L3jtRhbtk3xkI3ZcDWULaEIJvhoU7ik/UxYZ6Mi6aYHeEh3SOMCJKC0w30zGTPK3sKK0UOiPIjw1p6njJNPTTHuDSBErWYsos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720197150; c=relaxed/simple;
	bh=nUno8AAJKdRdF+eVmWv1H7fxqaUchG2LQOIrD+FTO9A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LHsDEF+5FDylq+hhcme5KeO/XXoUDcEz86T4StCA2kfem90oz3arpwPzZmMzqhLQ+aAdvFCYmQmd2p+VtCdJjANrnLpvezso8LOOxhNKZEssv6Y3ibakzpMFPnl/grNIxlPmUXJkY4zp5qjx5xlmrAgr2NJM7NogA/1jR5hAO1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKa2phbZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63650C116B1;
	Fri,  5 Jul 2024 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720197149;
	bh=nUno8AAJKdRdF+eVmWv1H7fxqaUchG2LQOIrD+FTO9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RKa2phbZ7b4iXdkhJQL+1yp0+16Ddr7804q8ATQsdbFehLfi3V2Yz82iMlVmkL0c7
	 Hl8kYMJYE7zOwQMfFqjHIoOcezMR6ylOhSpdQFqJjEs19Wo38REeDIKvCCCPN6bLtk
	 GSYQJOujiOFcb7AonOh95mYmM/NPTPFORSsSPUEYEL4XR+Wq+NnRK4hbfgT/dv0Jbw
	 6a+qslUcuhDTk1z0FfkdFBWwUWtsrH2wRuQi87hXIOk2BHbG8mtuDDJ9p8ttxWnq9n
	 QEnVRZ7ElRNiF65CVpLSMBcaoG3uem/k51asHS7X15olBmJU/1Q8PhVj+MYFIFlRDk
	 rBqRNEtnbgvAw==
Date: Fri, 5 Jul 2024 18:32:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <b5rg3wo5cjvocred2uctavvdulvjtyahtmusdkzes2fssvxu3p@4x436xzzn2zf>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nlxbg3aieyof6lfz"
Content-Disposition: inline
In-Reply-To: <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>


--nlxbg3aieyof6lfz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>
MIME-Version: 1.0
In-Reply-To: <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>

Hi Xi,

On Fri, Jul 05, 2024 at 11:55:05PM GMT, Xi Ruoyao wrote:
> On Fri, 2024-07-05 at 17:23 +0200, Alejandro Colomar wrote:
> > > strtol does have=C2=A0 a "char * restrict * restrict" though, so the
> > > situation is different.=C2=A0=C2=A0 A "char **" and a "const char *"
> > > shouldn't alias anyway.=20
> >=20
> > Pedantically, it is actually declared as 'char **restrict' (the inner
> > one is not declared as restrict, even though it will be restricted,
> > since there are no other unrestricted pointers).
>=20
> So how's the following implementation of strtol (10-based, no negative
> number handling, no overflow handling, ASCII-only) wrong?
>=20
> long int my_strtol(const char *restrict nptr, char **restrict endptr)
> {
>   long ret =3D 0;
>=20
>   while (isdigit(*nptr))
>     ret =3D ret * 10 + (*nptr++ - '0');
>=20
>   *endptr =3D (char *)nptr;
>   return ret;
> }
>=20
> There's no dumb thing, there's no restrict violation (unless it's called
> in a stupid way, see below), and there **shouldn't** be a -Wrestrict
> warning.
>=20
> If you do
>=20
> char *x =3D NULL;
> strtol((char *)&x, &x, 10);

The restrict in `char **restrict endptr` already protects you from this.
You don't need to make the first parameter also restricted.  See:

	$ cat r.c=20
	long alx_strtol(const char *nptr, char **restrict endp);

	int main(void)
	{
		char x =3D 3;
		char *xp =3D &x;

		alx_strtol(xp, &xp);  // Fine.
		alx_strtol(xp, (char **) xp);  // Bug.
		alx_strtol((char *) &xp, &xp);  // Bug.
	}
	$ cc -Wall -Wextra -S r.c=20
	r.c: In function =E2=80=98main=E2=80=99:
	r.c:9:24: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qualif=
ied parameter aliases with argument 1 [-Wrestrict]
	    9 |         alx_strtol(xp, (char **) xp);  // Bug.
	      |                        ^~~~~~~~~~~~
	r.c:10:34: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-quali=
fied parameter aliases with argument 1 [-Wrestrict]
	   10 |         alx_strtol((char *) &xp, &xp);  // Bug.
	      |                    ~~~~~~~~~~~~  ^~~

Using my proposed prototype wouldn't case any warnings with a powerful
-fanalyzer that would be able to emit diagnostics with the current
prototype.

In strtol(3), there are 3 pointers:

-  nptr
-  *endptr
-  endptr

The first two should be allowed to alias each other (and at the end of
the call, they definitely alias each other).  It is only the third one
which must not alias any of the other, which is why my patch (v2) keeps
that restrict, but removes the other one.

Does that make sense?

Cheers,
Alex

>=20
> it'll violate restrict.  Nobody sane should write this, and it's warned
> anyway:
>=20
> t.c: In function 'main':
> t.c:6:28: warning: passing argument 2 to 'restrict'-qualified parameter
> aliases with argument 1 [-Wrestrict]
>     6 |         strtol((char *)&x, &x, 10);
>       |                ~~~~~~~~~~  ^~
>=20
> --=20
> Xi Ruoyao <xry111@xry111.site>
> School of Aerospace Science and Technology, Xidian University

--=20
<https://www.alejandro-colomar.es/>

--nlxbg3aieyof6lfz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIIBQACgkQnowa+77/
2zJHyBAAgdM/U934Jli8c5iuKIkGChwqjCKw/+OpuueMD8rroQHudBubLFqjCOPZ
Z1Fm8anOGpN7VVrM8lGCJmUXvwpoY3q7WsNKD2Ryr67Ka0uJeQx5oEgkDy+n/jId
denXW3eNVq5cQhxgPC1iaQ1Vq0OMbeQZ+K81nSH6/fBZqKWk8V8DDSRQdhXMVTLZ
v6SL2GSimTsXRtnCw7L7ON/xW4OfjnDs1JvxlETDzvZFZMN+aZ4y4uYTMEhQlfem
LulzWzi4IMDuOv4ntajYnLA49ik7IaKYPFi3TpACDKtnZJqn5T+R67ZnQaKXjtam
85wsSdDngY6CmmhTkpWsOjWv0BPyQ0HoY525LhVexXR8cDNXqnppmIt+JAcvKOZv
dgByD4kBLS+D7Ynynihh5AGwodj/bYVorwdTZ7+ttE6LB7Xh75eWf7Ib6yTj04rs
Ise/hoIlmCs52SBvyunfv23mSvwmsM8/rhNLxQ8IjFh7yaistg2jaNOSso1jLU6I
wN/OWXPijzlDpRx1CD7B9cn+y4TWwcHXCIAgC7tOqxTKqw0xejkmLK3Hb2zh4MW9
lGvz649aB49yPLUA1HFFMZmq+z8Qpmohl3d3ga00XMukIp9ZTzE5TrU2l1j9s48x
1iD9AcvjqjSg0vDwhcZ+kTZhazBZ/+D04IpfeScM2j4elWcgY3U=
=CPZT
-----END PGP SIGNATURE-----

--nlxbg3aieyof6lfz--

