Return-Path: <linux-man+bounces-3722-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1978DB34ABF
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 21:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A779D5E39E6
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028611C5496;
	Mon, 25 Aug 2025 19:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFRn1lIk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74D829CE1
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 19:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756148599; cv=none; b=dZOXC9RTkOaua8nWsj5vJSnBwKed/hPSCaYil2jWPyxpcnPg4cF2+tYcPfdGAbDrcKcCriw7m+br9kehGcYu/zFydgeRGdA2jr/GXrvBe9Pvpj8E/9pdTzn3c5RiNmONtMxQ8iUTA/oIYlT/WyXtkv600/+SBTsTHNldOhI/4Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756148599; c=relaxed/simple;
	bh=BBFwYxB5+40y7uzcudASqB4vwUC+K2sq6Lg6/dlBQ/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NOJx9YQSDoUkySeQeyLBL7QkKzord6lrY6dca5R9mLJgNgOmfXh1U413Bpp2UzrcLs7kfPqxFStRczElQkLw6MExP/fSKn/utNu0eo8UArl/JVn87XF1WOpY7B1VdhlSi/i31ezCPbkgicWVS9waRTFtrlGYwKLKnJWzb3QLBLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFRn1lIk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CB20C4CEED;
	Mon, 25 Aug 2025 19:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756148599;
	bh=BBFwYxB5+40y7uzcudASqB4vwUC+K2sq6Lg6/dlBQ/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mFRn1lIkgLGDWBp/8H7nZc/egS04hQt2KCxWI9HiuViZPwDomslU08AqT8A6pUrV5
	 zoNPJAHC6ACjUZjHxoNRjv60WaNtuHVTOxUq/t7xbHzSjPzLJQCja6R0XBaNVvqkTO
	 WW09DWA3KkDC9q7w01ghWYYqrBvRehUe+lrAJdtwYiXVlhNpjT0Pp2BTlasK+aCAqP
	 O0KjjNqKGrHjpjHQy6m3a7SpsBa6oyqQ1VCNdsADlJB0RtVNbkiYM2yUCiC7f338u3
	 iFPl5BK72Y/gkmggxHHwFdL4t0mdLuMNwfBZAE90b7u98TNz9cbUku44v7BlvkpOOM
	 mHXXLK7L/62gw==
Date: Mon, 25 Aug 2025 21:03:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page puts.3
Message-ID: <s37goaeyvvbhwmfe72pcwqywqmrbwlufzyrqmjw6cwcrokvtcm@vntmtv2vahed>
References: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
 <x3lv64ggfak356bkfnnar365tfid73c4zi2ccyv62trmknw5sh@fcdakf7cz2bu>
 <aKyJ42-Rdy3XoA_b@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wsfur32uvmve5xee"
Content-Disposition: inline
In-Reply-To: <aKyJ42-Rdy3XoA_b@meinfjell.helgefjelltest.de>


--wsfur32uvmve5xee
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page puts.3
References: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
 <x3lv64ggfak356bkfnnar365tfid73c4zi2ccyv62trmknw5sh@fcdakf7cz2bu>
 <aKyJ42-Rdy3XoA_b@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKyJ42-Rdy3XoA_b@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Aug 25, 2025 at 04:05:55PM +0000, Helge Kreutzmann wrote:
> Am Sun, Aug 24, 2025 at 09:17:17PM +0200 schrieb Alejandro Colomar:
> > Hi Helge,
> >=20
> > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue 1:  I<putchar(c)> =E2=86=92 B<putchar(>I<c>B<)>
> > > Issue 2:  I<putc(c,\\ stdout)> =E2=86=92 B<putc(>I<c>B<, >I<stdout>B<=
)>
> > >=20
> > > "I<putchar(c)> is equivalent to I<putc(c,\\ stdout)>."
> >=20
> > These are correct.  See man-pages(7):
> >=20
> >        Expressions, if not written on a separate indented line,
> >        should be specified in italics.
>=20
> Thanks for the pointer. I now see that sentence, but it doesn't make
> sense. I believed the whole idea of this formatting was to give
> meaning to the content, e.g. put variables in italices and "fixed"
> strings in bold.

In general, I try to avoid these inlined expressions, and replace them
by indented ones, which don't go in italics (they have no formatting;
just monospaced).  I agree with the problem you mentioned, and think
that the solution is to try to avoid inlined expressions as much as is
sensible to do.

> Rules like these also make translations harder, because translators
> are not programmers, and guides like layed out in the previous
> paragraphs really helped a lot doing good translations.
>=20
> I guess at least for Linux man pages I stop reporting formatting
> issues, as the rules are much more complex than I would like them to
> be / than I tought.

No problem; this reports help realize when something is confusing for
readers.  Please continue reporting issues if you don't understand
something.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--wsfur32uvmve5xee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiss3EACgkQ64mZXMKQ
wqmmHw//QU50C0BnXiSIea4z+Eu0wj1HvByGAWJ0Rw1pmfu9CmTfFrTc0bDfhJFK
AZf3Q9yj5yl1aiDJUEs7qeqHvBlKVX46rNDFOSpUEzQmPuWpvGSa28K8Ah0eV9Ex
h8JJj3PBajTvj5ibQe+r+DKPGrocyGCWtFzEnsGvhqW0fIbwg9oOEqiNnriJSKNe
vyQY6qHE7f/EVRMGoymeYVubTIPOywN4dB+T/4jQiF4DFhbbGF2tJ8hr+fDw2wV7
ahiVTYMg1EhmLhGRt3HJZj3MJURZ8CByzUhWxyHGiWBNyGl/B2Y1pco0xj8dX++9
3PECfUSdjSMfZmdpzCOYQMCfQwODLPBEZusIFH2fbY41idZZIS3/XoNzsxDTsExJ
2T/UlcrdAO9PRBC70cLV9ud/YoBZxH4U8d14DPkbeAOlLefJUAz6PBdEr5qg5IVI
I2zqzMd+DAv67uJUnnMIGLmD11CvcXCqk9JMFcyyz+BUy5QFNHYzAwq8lpTNH8dc
a9R+oS4127dbBSakas9eD0zQukVWsv+w/tStuxqk7cLRUJ3Z26gXT1FZ9Aq+T5AS
7wTJaOnfJKD+UxhqaetdMdl92lmGjmX21jGuEiQkUiamIwpImQECKImbpnr0rlIL
pbdBW4fCzZ//B/0WjELiC4BXkZk2WgLyA2/pw1ZK5PfyAQ0RbG4=
=tkQT
-----END PGP SIGNATURE-----

--wsfur32uvmve5xee--

