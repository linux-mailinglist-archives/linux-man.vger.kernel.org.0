Return-Path: <linux-man+bounces-2642-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CD3A6D023
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 17:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A59093B09FF
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 16:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7323A1419A9;
	Sun, 23 Mar 2025 16:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYuGaeAw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5577FBA2
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 16:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742748951; cv=none; b=Y9LzyDhM1hQHqYciEQh3djICrnuzfLtqakJ+DQ0PJfKyLDia2mgKkGtqdgdCMD1a5j7L9zJSfOOj8Abu1a3LnYg2hXs/ONdxkTK32rtDb6xoY4h6ZxfynxAh1reG9onHos++z8wDqH6p8jEyID4VVxCjnSIBW+MrooCVruemAsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742748951; c=relaxed/simple;
	bh=4pdOuynFGQZ5977k3ehu35E82YHAkH2IeJXxEvF6Ha8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YrxyF87Ue1s2r8qn0sIdNHwk9WsJour3jGR5DA86JZlXi5jn8AZNvJdLwudQYFscWdTHc+3RBe9Y34GlxrO5vr2pnF6YujFdwlwr7bPc/Qqx61Vp0YVdBU7TTZRVeKvrE81BGYAjQldK5oQ8Plwsi8qDq6B6MOnMuEFunk0jTls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYuGaeAw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBD84C4CEE2;
	Sun, 23 Mar 2025 16:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742748950;
	bh=4pdOuynFGQZ5977k3ehu35E82YHAkH2IeJXxEvF6Ha8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uYuGaeAw7nShQlBZS+tRcpGAEKmW3UH+G5PVCjJaDj2tVzL1Y/pyakJMiko6e8/LI
	 qoCSCNA9Xk4A7fyGS39cnCiw/koCwNfqNLT15dLhGj+4nv8LImes7c2L8kjbWTHCW7
	 DG1z5OeBgjg9Ss/ZMmgpMSBt34rJiPDwA5Jp7ZgbIhFBFV7i3rKLoj7c3Sgpgz12Gn
	 SRbFuvdhrzgS5B19FMA3YYDD1daOw2ITAAgGm/OD80IUgCEeYinMC0/HFnxXbRwgEa
	 WVL7qiSKnI3gtBE18BvZoD0NX8I0rmkP6++E/peo1ytTOkndvcg9wcwevEE+O9O4Iv
	 +v1VNHWskajOA==
Date: Sun, 23 Mar 2025 17:55:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ftkyxgva5nubh6x2"
Content-Disposition: inline
In-Reply-To: <2092070.kUgFBCI4xA@nimes>


--ftkyxgva5nubh6x2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
MIME-Version: 1.0
In-Reply-To: <2092070.kUgFBCI4xA@nimes>

Hi Bruno,

On Sun, Mar 23, 2025 at 04:52:15PM +0100, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > Is patch 2/2 also good to you?
>=20
> I couldn't tell without looking at the entire page
> ("groff -Tutf8 -mandoc strtol.3 | less -R"). But now...
>=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Dcbcf76d19f864da8c54e41b600ff5661b195b58e>
>=20
> you gave me the information where to look at your work-in-progress tree.

Yup.  :)

> Here are my findings on these two pages:
>=20
> * In strtol.3, the example has three mistakes:
>   - Missing semicolon at the end of the second line.

Thanks!

>   - If LONG_MIN < min < LONG_MAX, the condition (errno =3D=3D ERANGE && n=
 =3D=3D min)
>     will never be true.
>     If LONG_MIN < max < LONG_MAX, the condition (errno =3D=3D ERANGE && n=
 =3D=3D max)
>     will never be true.

D'oh!  I'm too used to strtoi(3bsd) that I make these mistakes when
switching to strtol(3).

>   - It does not distinguish success with value 0 from failure due to
>     no digits. (This matters when min <=3D 0 <=3D max.) Since errno is not
>     guaranteed to be set in this case, the caller needs to look at *endpt=
r.
>     The example thus becomes:

Yeah, I wanted to isolate the range checking from the rest.  Maybe I
should just put this in that sample code?:

         if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n < min)
              goto too_low;
         if ((errno =3D=3D ERANGE && n =3D=3D LONG_MAX) || n > max)
              goto too_high;

Without having the strtol(3) call at all?

>=20
>            char *end;
>            errno =3D 0;
>            n =3D strtol(s, &end, base);
>            if (end =3D=3D s)
>                 goto no_number;
>            if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n < min)
>                 goto too_low;
>            if ((errno =3D=3D ERANGE && n =3D=3D LONG_MAX) || n > max)
>                 goto too_high;

On the other hand, I should put this in the EXAMPLES section, to have
a full example.

>=20
> * strtol.3 and strtoul.3 mention
>   "If base is zero or 16, the string may then include a "0x" or "0X" pref=
ix,
>    and the number will be read in base 16"
>   They should also mention:
>   "If base is zero or 2, the string may then include a "0b" or "0B" prefi=
x,
>    and the number will be read in base 2"

Yep, I need to update many pages for C23.  I'll do this update for this
page now.

Thanks!


Cheers,
Alex

>   References:
>   - ISO C 23 =C2=A7 7.24.1.7.(3)
>   - https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D64924422=
a99690d147a166b4de3103f3bf3eaf6c
>=20
> Bruno
>=20
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--ftkyxgva5nubh6x2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgPQ0ACgkQ64mZXMKQ
wqnMrg/6A+7N2jw5hL9Tu/l3ZkQ2owv2xJpr+dp6uiy6d+4aWrfFoYZQICPxrWbe
UkkkaZWCRWEm3FNh+1RuWxIaiXtVwJXQx5deWcK6eBJOH35zoMzv2uoZPRfwNPvg
bw4DJy1RK2ZkL+IwEe6U2Ikp0r48G2jCW5kkd5P1MrnNPHENj69/4eb3VhfMjmvF
QGggUGwCqy7SBdwi/UyUpyOFaoU84rkviCNagt9h01NSU4oXYhRHK5Q6HVTjzJAU
dV6E3xiYWxUgoCplkMoWxvtM/R24rU0hrdpimzfwpu14p08LSsPv8/Ji+ZORWVGg
SFG6ZbbXRE2TqKGXd1boP8eUj/EU695pkoXAbrMDIMb1ObDO5IWM3i3JwHGU0wNG
HdCGGGHMQfYHvR5SWxzCcOV5KOj49p2pe7k3GqWJFjL0cEr57VFakF8RLW1aiZLW
Fs4uTueULg/eomWGje5CaN8GPdcOGo9wTSxh8biWMawi3mssD9uyBNkipWcQgzlu
te5ZyK6wRrAX5JYFxUnhzMjgNBirvTXV6ymhZraBIfOnL+Q+PlyhYrtSosBtpuMM
1sqCS/0ZATKTyyg9u1WGJP3FSvUR1xzxaIQscAaGIzCI+/7LYcHTQ1Bj3yfAlLjL
pzEp29W7owTqkhLHAs61WlQ0XMYDuGwbA2TSFi5jc2xmD1hV7rc=
=DfR2
-----END PGP SIGNATURE-----

--ftkyxgva5nubh6x2--

