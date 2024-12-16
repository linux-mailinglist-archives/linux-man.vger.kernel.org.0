Return-Path: <linux-man+bounces-2161-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5660F9F3213
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:57:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70AF118857C0
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 13:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46869205E0F;
	Mon, 16 Dec 2024 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvPNica2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E40205E04
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734357454; cv=none; b=Z5nTRepUYgjGv8o6w6B1PobnAp9GR+6JAnxhEFUX1oGopKTRFllI8GAid/lcjrMfw58ji49v5lsGpSuanWnlR8JcKYxATmLWpF3Igx/ww+BCPXNBCYyf625pUZAgNSfyOV3IFePDQ0wpVfZjBdoWbZTgEbIaTeKR+I8LOnIQLBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734357454; c=relaxed/simple;
	bh=4N5oh+T/tdLylt8fPr+wWNCjACMRQ0phtMFl9SY9k0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LLhmsD/NfaJcEpq0ULPVA88218JU94QfVXtbYozwQ8wrh7fD+C90p7qhgNN4kMwrKSmVy+hIBtZ3FsUHgzgd0w7zp6q6WdegNdE/V0HivbRvhks5HsI8PBAr0mFKZGHRMPuznCjqodqsYl5ZysH1l1Rldsz+wLDGhOYPE18S9Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvPNica2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEBCBC4CED0;
	Mon, 16 Dec 2024 13:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734357453;
	bh=4N5oh+T/tdLylt8fPr+wWNCjACMRQ0phtMFl9SY9k0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gvPNica21lPFX7gsYetYtavwk1mytP6CT8i/1urSZzhV6cF8kT3wMCNVGD1w/z1tl
	 A6PyrNf8A6M9H3IJlUIf9VfA/P4EsqlvKzfZoHS370FXrUFOCZqRO80Amv4DqtioXu
	 src1N8mtSHtfnss8aAf1ZSHEbQVOlCcfVFB0e4ZcRbMQHiUh0DXk/iXLP85wojsswJ
	 UZDVPSmnDEpLuC9aibGEDxeibHfi8unMPHmIXuuR8iHuUxAHaBdoSPUYdC31a5LmpD
	 VTrhszm4tgZQTFBALlHaLHcK+z4mpOtqQWkqf4Xn0FtOf5JJlrLS1dzE28eKcodJEt
	 WEqDlGSz4vF+A==
Date: Mon, 16 Dec 2024 14:57:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6uc6im2xvcjrksff"
Content-Disposition: inline
In-Reply-To: <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>


--6uc6im2xvcjrksff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>

Hi Elliott,

On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:
> On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> > > @@ -285,6 +293,7 @@ is a file descriptor referring to a file other
> >
> > Would you mind checking this?:
> >
> >         $ head -n11 <CONTRIBUTING.d/git
> >         Name
> >                Git - instructions for configuring git(1)
> >
> >         Description
> >            git-diff(1), gitattributes(5)
> >                To produce useful hunk contexts in manual pages, we need=
 to
> > hack
> >                git(1)'s idea of a function name, and also to tell git w=
hat
> > is a
> >                manual page.
> >
> >                    $ git config --global diff.man.xfuncname '^\.S[SHsh]
> > .*$';
> >                    $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attribu=
tes;
> >
> > It helps reviewing diffs for manual pages.  :)
> >
>=20
> ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.git/attributes;

You mistyped.  It should be

	>>~/.config/git/attributes;

not

	>>~/.git/attributes;

> -bash: /usr/local/google/home/enh/.git/attributes: No such file or direct=
ory

Hmmm, I should mkdir(1) first.

> i assume this is meant to be
>=20
> ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.gitattributes;
>=20
> instead?

Nope; I think that won't work (per your patch, it seems it didn't).

Would you mind creating the directories as appropriate, re-running that
command, and resending the patch?  (That will also help check that you
ran it correctly.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6uc6im2xvcjrksff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdgMcoACgkQnowa+77/
2zLQng//Q2Ob7BavPq8v3wHT+slh1Zf3qdEs/9S75GVKNxwfAd+3azjYYfoOiUbc
vXkZYPU5T4FO2OcGDoqZq5fCEwPxB76jBbqEcU2CgPfHeaDZPCNteT5wm0lueIFN
BRzeEBrANZuKerfe+pfoBy0Jk9lPmFtAvSqBcExW28AUOVti6kIGm/kV8oqLASRw
VgdeAt++Wv33VYMbyKVywmj8s4sWZ+gSVLaSboJwMj+7UYWIugebm3589fsS9KDW
VFuZAVrr/9V1mtSEPk0/9pMyCf8f273N8NuDDCeOrjCb9xjzGVy0lasSUmy0pA4+
hxqUMwVOnEgxBmCSZUGp2esAzOSgQDsUqD74jPMcYABIX5jR7mEagdeDwl3gqcpD
WkTuJ90tCVl9qjdUVUqhT9eQfEOBQDM3j8dnBRV3IwaxvtO2lBAsXrjhXVSq5OYL
ZTtVnQcTp+ckhdlQsy4MauwSQ83NLknoEDhLC36MaeP7KgWwuJ3CVgyRMSdkn/mx
erTFqvXDTcA12xDfXS70F7u9C1vRB1yhteLQ1EeuCl9L1/W2kQQlBWpubmbJOxTw
DgkRNIOnNqZnnOHPqikgDzt+uZ+xptoJzgblmL6nv2FWzroekjzFVG8+A9uDXWmO
U5JvAm3Q8+ah9jrJh4avPL0IGi8Wwm+hgifzJ02QI37WIQYt9Y4=
=gL7r
-----END PGP SIGNATURE-----

--6uc6im2xvcjrksff--

