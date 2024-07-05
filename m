Return-Path: <linux-man+bounces-1339-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F93D928E11
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1FE328186E
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FFFD8248D;
	Fri,  5 Jul 2024 20:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqah0wiL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E255C2AE6A
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720210293; cv=none; b=n2w7KR6lwRj6/ULrzxsfynzDTeITfroU39AtN3pjfmLEYou5uO8oQOIVY/Pp1//OnkuusVITHrL41B+REyDUNowHQNm9QLlOguAUn4pP5tOMYYU56PYZmVqQ0gQ1YBu+0rB1XepmBbW6BhccvjYMT5g4xU5BOjVL56vWhPas794=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720210293; c=relaxed/simple;
	bh=lOUkg7wdtMedqf7SjvXnHNdgmw4GsPbl2F4W9l6jKCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l7NbMD7WzFRobn+SmCHpKckkrO1eKLFGKug2RvbAg/gXCB+W6E3Y7oeXvvEuN4mZckWsb0xSBHZ/NwiXiYOjdcXz3QJ7xln6/6fR2CM0K9V+ZSCwnlBYvvGRlWN52P2OWzS9rLcO8RB47XS9zazaAW5AmrpKl227XMfXiPAV34M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqah0wiL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FCEDC116B1;
	Fri,  5 Jul 2024 20:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720210291;
	bh=lOUkg7wdtMedqf7SjvXnHNdgmw4GsPbl2F4W9l6jKCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pqah0wiLJGqo2jv84GvjS6+6yWaGTiF32hrE5YCvOpcrHJ+la/usZPFFSz3AxMIIl
	 4km/MZyUWV8Z23PajvlFt8ZwHgzZH3/nmMxXnsBZNqhTXizzDvZ5aOTbMIyaVAW+GD
	 0BsMoA4EP089UpvwnIessosHY0ApuGLIVIziMyjnqNNwHkUPDvBcrY+6ogC39iZ/D4
	 qvCoGdoY+3BeWSIozHAcAv2PmmPIog5SXXsB5CnujC7rHTimckkl6AFhVrYZHKD+Tb
	 GCCu0aPugWwv6OfyatlOdEOMI8i875BE1UbvRTq4YfUza0bdIHpqvVoznzG2ePGEbn
	 BzfEKU5hgYyDQ==
Date: Fri, 5 Jul 2024 22:11:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <47uacdd3phlqfzt4pvcoxhkrvlehiwgtdd7bermad7izqun7fc@ff666iw7kua2>
References: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
 <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
 <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dinxso57hy6cyywo"
Content-Disposition: inline
In-Reply-To: <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>


--dinxso57hy6cyywo
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
References: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
 <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
 <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>

Hi Jonathan,

On Fri, Jul 05, 2024 at 08:52:30PM GMT, Jonathan Wakely wrote:
> > > > > > > It **shouldn't**.  strtol will only violate restrict if it's =
wrongly
> > > > > > > implemented, or something dumb is done like "strtol((const ch=
ar*) &p,
> > > > > > > &p, 0)".
> > > > > > >
> > > > > > > See my previous reply.
> > > >
> > > > That's not right.  See my reply to yours, Xi.  The restrict in
> > > >
> > > >         char **endptr
> > > >
> > > > already prevents calls such as strtol(x, x, 0).
> > >
> > > That seems to contradict footnote 153 in C23.
> >
> > Did you mean a different footnote number?
>=20
> No.
>=20
> >
> > Here's 153 in N3047:
>=20
> That draft is nearly two years old.
>=20
> >
> > 153) An implementation can delay the choice of which integer type until
> >      all enumeration constants have been seen.
> >
> > which seems completely unrelated.
>=20
> Because you're looking at a draft from nearly two years ago. Try N3220.

Ahhh, sorry!  Indeed.

Let's quote it here, for others to not need to find it:

153) In other words, E depends on the value of P itself rather than on
     the value of an object referenced indirectly through P.  For
     example, if identifier p has type (int **restrict), then the
     pointer expressions p and p+1 are based on the restricted pointer
     object designated by p, but the pointer expressions *p and p[1] are
     not.

I don't think footnote 153 is problematic here.

Let's have this prototype:

	long int
	alx_strtol(const char *nptr, char **restrict endptr, int base);

and let's discuss some example of bad usage:

	char str[] =3D "1";

	s =3D str;
	alx_strtol(s, (char **)s, 0);

According to 153, the pointer expression endptr is based on the
restricted pointer object, but *endptr and nptr are not.

The user has passed s as endptr, and also s as nptr.  Thus, the object
s is being accessed via a restricted pointer, endptr, and a
non-restricted one, nptr.  That's UB.

Let's see a different example of bad usage:

	char str[] =3D "1";

	s =3D str;
	alx_strtol((char *)&s, &s, 0);

For similar reasons, it's also UB.

The compiler diagnoses both:

	$ cat r.c
	long alx_strtol(const char *s, char **restrict endp, int base);

	int main(void)
	{
		char x =3D 3;
		char *xp =3D &x;

		alx_strtol(xp, &xp, 0);  // Fine.
		alx_strtol(xp, (char **) xp, 0);  // Bug.
		alx_strtol((char *) &xp, &xp, 0);  // Bug.
	}
	$ cc -Wall -Wextra -S r.c
	r.c: In function =E2=80=98main=E2=80=99:
	r.c:9:24: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qualif=
ied parameter aliases with argument 1 [-Wrestrict]
	    9 |         alx_strtol(xp, (char **) xp, 0);  // Bug.
	      |                        ^~~~~~~~~~~~
	r.c:10:34: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-quali=
fied parameter aliases with argument 1 [-Wrestrict]
	   10 |         alx_strtol((char *) &xp, &xp, 0);  // Bug.
	      |                    ~~~~~~~~~~~~  ^~~

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--dinxso57hy6cyywo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIU2AACgkQnowa+77/
2zKisw//XMtOvGyWPzVh8aJYvfiWVAUjxWpJmmZWADTgrh////+lzbM/5GDhh/Eb
JcLR8Cyxybu9cG0K0rtsm08livUYrdpEYrxBUNmthG9tULi4q8hg1KmMiX6TT3hT
mOxnV2+wBotjsIv4QjCTRAbGAY3dzxQrtYP0KzbDygJgE+l70W9hldKDw5RF4oXz
jazH0WEDkDOIeaD7gkf904b3SKdqXta4QBq3ykJOwbDBCOrh28UtQj53PPQubvOx
OvXTKGhuuMsH2WgsgCC45VxHwkA3NNwiIlCBxyRYOb6jDH9Y/2MCusVH8dcPAIb+
LQW3mW8VURsik2Q6pVf4ieh2k5jEwldIezCqAqTNmD8/gTrzFe1mGCw3ZSUwPfqO
y1/gM5P6yxOzOGbMzNzVkfYgGRKNuQ3EWOd5jAycaZBpTw1dgxOaPTxXUeLEzTaO
USt8wdGi5L7ctqgld5BCrPWOwuCVzvcwkKqtq+r1gqmpMf0w6fX45NxK3LexWCl5
FuR4pWMeFZQB9QWW7DOrpF9+WffHDwORO+v5QaMxFNgRpMrDvOSPmbOQWp4jDgDs
f11E5PvECZZQwiMUNrYV6bgfb53B4Vi0bQsPVelnn3TSbnDmsMUOQjW0Ld0AvTJd
SqKRhvz4ZASnVjNPsBDpSswdgkBGTnc4FUm+df7p+kinuaRlm3U=
=UAtk
-----END PGP SIGNATURE-----

--dinxso57hy6cyywo--

