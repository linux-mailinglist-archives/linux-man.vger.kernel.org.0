Return-Path: <linux-man+bounces-3232-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F6AAECAE9
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 04:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33CC2172B3B
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 02:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D84BE6C;
	Sun, 29 Jun 2025 02:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwvH2SG7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B5F184F
	for <linux-man@vger.kernel.org>; Sun, 29 Jun 2025 02:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751163404; cv=none; b=M0N5RyBfVKmwdxbyfcs4Td1knwCSuW9YS63+0aiXiPkfQ9FRK20U8h28r3iaRD66XR8jqIQa1URIixlkDA4eV9lPU1FQmd4xOC9sYgmGiyiCCxF/8Ql+fEYO6WyN5ah3GO/Lc520zWHsiCDAHeLWCplV5+39ejHFUxgS+ogXNJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751163404; c=relaxed/simple;
	bh=Q63WoUVfzZd9xt8r/e8tJNPRrR4H1b/SBi4OSQ0G6/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LejB7vPV8Mw/M3ml0cSWhk4Jsh1RCtmfi/VymIt/Omk+Y0+YqfBBWXJRMtMSwB9AVgzuTYOGjQL2XG0UBeCVEN96ARWjuCx0qpd96kZSkG9nW6vD6yTpa7Vua/xI+jUL7nqBzPYA1umUzHs5GXUmQvKBgeEBfqbxONSiMYu+1NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwvH2SG7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C424EC4CEEA;
	Sun, 29 Jun 2025 02:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751163404;
	bh=Q63WoUVfzZd9xt8r/e8tJNPRrR4H1b/SBi4OSQ0G6/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QwvH2SG7jNorslHLvVQb7/XXc4yiwBIkqR8BpJ85qSfYblAOyO7YUTQRxrDMBkatT
	 Ix+Q0TSRzax45HIC0exsC220qFowantyfTrn41r1NBKIwymta9A1YeOIEWof8Zca8i
	 kbmC5dgSjks3LElfFcuWQkmsi4YwyLqeHxV7fU3o52/VtTtmYK7MIBzzoSqLuYVnwE
	 wQ5CEzKhRjXaycw3lqYcqaYwcTFnAqb1qlwtVkrSvvMGs7el88ct+gKV6To8t+/blh
	 PC+q3T75AeJZWsQmODcVZD/FRrtHcfGe6ruP+0KApRvBaCmRupdPyY/qaQLI6cJDiU
	 Anw7RUk/BmQnA==
Date: Sun, 29 Jun 2025 04:16:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Brian Beuning <bbeuning@gmail.com>, linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
Message-ID: <pvraomgpkcimq2aem3xhhn2ycnzbrdrsajdxwyyian2kmeacng@cf5yjxr2ose5>
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
 <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
 <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
 <gujq6ijk5kmci3n6rykbzpamb3k3ckn7ac4xzy7i5svcsxfkyl@crbjc5zamglu>
 <871pr3s5me.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="er5coi76yxdcuiv7"
Content-Disposition: inline
In-Reply-To: <871pr3s5me.fsf@gmail.com>


--er5coi76yxdcuiv7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Brian Beuning <bbeuning@gmail.com>, linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
 <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
 <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
 <gujq6ijk5kmci3n6rykbzpamb3k3ckn7ac4xzy7i5svcsxfkyl@crbjc5zamglu>
 <871pr3s5me.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <871pr3s5me.fsf@gmail.com>

Hi Collin,

On Sat, Jun 28, 2025 at 06:23:21PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> >> void
> >> main()
> >
> > main() must return int.  See the standard:
> > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#paragraph.5=
=2E1.2.3.2>
> >
> > Also, the () syntax is rather problematic, and I'd recommend to always
> > use (void).
>=20
> The '()' is not problematic when it means '(void)' as intended here. The
> problematic usage is when trying to use 'int foo ()' to declare 'foo'
> with no parameter type information. That is valid for all standards
> before C23, which changed it to mean only '(void)'.
>=20
> But like you, I prefer just using '(void)' anyways since I find it more
> clear.

Yeah, () in definitions has always meant (void).  However, most
programmers don't know this, which has caused confusion over time, which
I'd consider "problematic" in itself.  Yeah, () in declarators is more
problematic, as it has had varying semantics, but I'd consider both
problematic to some degree, and just avoid them, as we can.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--er5coi76yxdcuiv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhgogkACgkQ64mZXMKQ
wqlKVxAAqYZAAVDF7WAnmu2O7gPaeCOrHyzjfintS83aP9/Bx7Q0bSHY7982utPy
zT8tO5PF6F6qSyZ+9E4fTrpBW724g38ybK0M0hoFSLy0xAAIgvI5i99hjBHJjS1T
dMNL4GUbVobAF5NvZG6jmLeKiR2ElxYmVROsErDSvKrO2XqecDAwIapj1/5OX57Z
xg2N2aPLKbeP/UbOS+0iZu7m/54d0t7m1heVFe59rMiHSjcKGUmtdz1p+M6Bo/w4
w6b+ZlWuwbqlG+8gn6pGzwr2rA7zmkvVlevtmmjy3Ie4NXakyloR60DeZG4WkEa5
xOLKL4Ja7HctZWwa0VtepNbP7QEy1PaBVgIujQFjvnfhqSk/RhiW0dhC0dLFmm38
+FuW0miA18H0sWv7/qbxL4rwW/LoZ83tZ18ZrMgVoRS+r9jcZrzNEq8B9686sTZ1
ys93w74xowq7NSik1bsDgPznHcjsFR9s4Qin5l3dS7mN1QBrMgL6Yhry+ht3CzCk
Vk+a3QIzJd6/sGjXrGRssXMcKHGm48reGmUwVfCXLmGL74m+qqNPmmFEhwvvBLz2
S+QbQ/c9I76E+7/PyadyK0oGzdIPGSzPFAlJN1jlJTY0yJPdG51naVs/GAO5FPgS
dxz7I9nbmbqOyK71YB1UxFg93Vn+uOrZUFNq6G2BJZG+EkSrlQA=
=IEHd
-----END PGP SIGNATURE-----

--er5coi76yxdcuiv7--

