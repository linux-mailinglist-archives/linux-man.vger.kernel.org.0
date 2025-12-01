Return-Path: <linux-man+bounces-4349-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A73CBC97BC7
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 14:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E593A2179
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 13:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3EF730C36C;
	Mon,  1 Dec 2025 13:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTybISaV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04E42F6587
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 13:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597319; cv=none; b=A2OzDPyEGt6mvJHYH+sZDORNB6zEDIUP6jayKV5EqHVva2CFVsx6y3bdG3vQvkKJfiuxLGoucRuLXFgfEyuBKu5Xsb9yPCjqdVxsRuCeqp8AO0Y3Vn27813B4kKomUbH9byLLMXdG0ZBhhseM7c/JwutYgduZIK4lVhZacgufws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597319; c=relaxed/simple;
	bh=Q1DK3Ab0M92aZPGRvGZUla4mn/LODtbYVbGS96gj0D0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uHXrsEYejP5cACfIFWUSHhdSXAEMhe64d7/OY3+Pyix6J17S1JEse8z2U5hoGU04clxjo98fB6yzrM+c3Ggbu+NZLbnR1aZfJxjAq6SwYA2X8W6znlHF2h7rMXistP8zdQlZDbh8wuKVijySFgz4xQYfQ1QIf/IMr7DRJ51vrs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTybISaV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50B63C116D0;
	Mon,  1 Dec 2025 13:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764597317;
	bh=Q1DK3Ab0M92aZPGRvGZUla4mn/LODtbYVbGS96gj0D0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NTybISaVzYH+x1Vs+gF05r60zwvD2FgkmV+ajkaDwq3kB0h0aqdKO9otiBg8RzqWh
	 IJuufF38qkbMFMOc8mOCRBbO02Ppto3NPRV1H5Zr4j1VSUDktnQmjb37CWpROVtK8Z
	 AAqR2wVg9JLlSNLqZfIMzvg9n4QAGMSyiS7nFCr6nUMABuaYbJ+7i/7XzufzWIsbwS
	 MEG80Ec8tu22kBbs414w88EBqm8OSvbKGd53NMPIKvrFw3JoRTsGMvfZQ7p/1L9TiC
	 PLyDELKk0o+h/f/1JbYq1q4NneD0RA7BDr0BDL/Q+CZF5DzdT+kO2cUY83Ge8Sj8Sq
	 SiippadKXbStg==
Date: Mon, 1 Dec 2025 14:55:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] sscanf.3: Document exact matching for %c
Message-ID: <fjngev3kbf7d7gi7jj33lam3xq55j2hf7yjzq5pfjj3u7oncc6@6cpxcxdtnfys>
References: <lhu1pli6tsj.fsf@oldenburg.str.redhat.com>
 <1189e99e-897c-4245-9ece-f9f6ec4360b4@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p23uvw2lo3ditou4"
Content-Disposition: inline
In-Reply-To: <1189e99e-897c-4245-9ece-f9f6ec4360b4@redhat.com>


--p23uvw2lo3ditou4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] sscanf.3: Document exact matching for %c
Message-ID: <fjngev3kbf7d7gi7jj33lam3xq55j2hf7yjzq5pfjj3u7oncc6@6cpxcxdtnfys>
References: <lhu1pli6tsj.fsf@oldenburg.str.redhat.com>
 <1189e99e-897c-4245-9ece-f9f6ec4360b4@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1189e99e-897c-4245-9ece-f9f6ec4360b4@redhat.com>

Hi Florian, Carlos,

On Mon, Dec 01, 2025 at 08:32:18AM -0500, Carlos O'Donell wrote:
> On 11/28/25 10:50 AM, Florian Weimer wrote:
> > The glibc manual has always documented this behavior, but the
> > implementation differed, treating the field width as an upper limit.
> >=20
> > Signed-off-by: Florian Weimer <fweimer@redhat.com>
>=20
> LGTM and is better than before.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks!  I've applied the patch, and appended the tag.

Have a lovely day!
Alex

>=20
> > ---
> >   man/man3/sscanf.3 | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >=20
> > diff --git a/man/man3/sscanf.3 b/man/man3/sscanf.3
> > index f0b248518..fa4cd0db7 100644
> > --- a/man/man3/sscanf.3
> > +++ b/man/man3/sscanf.3
> > @@ -172,6 +172,9 @@ and these discarded characters don't count toward t=
he maximum field width.
> >   String input conversions store a terminating null byte (\[aq]\[rs]0\[=
aq])
> >   to mark the end of the input;
> >   the maximum field width does not include this terminator.
> > +Some conversions require exactly
> > +the number of characters specified in the maximum field width,
> > +or they fail.
>=20
> OK. Correct, in particular "%c" operates this way.
>=20
> >   .TP
> >   \[bu]
> >   An optional
> > @@ -480,6 +483,10 @@ and there must be enough room for all the characte=
rs
> >   (no terminating null byte is added).
> >   The usual skip of leading white space is suppressed.
> >   To skip white space first, use an explicit space in the format.
> > +.\" glibc commit 2b16c76609350ec887d49afd4447743da38f7fab
> > +This conversion only succeeds
> > +if the number of characters specified by the maximum field
> > +can be matched.
>=20
> OK. Adds clarifying text to the "c" specificer text later in the page.
>=20
> >   .TP
> >   .B \&[
> >   Matches a nonempty sequence of characters from the specified set of
> >=20
> > base-commit: 081d4f6779ac39da0265cac6e67d1c9a281e6990
> >=20
> >=20
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--p23uvw2lo3ditou4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmktnkAACgkQ64mZXMKQ
wqnrgBAAmj8OB/nFtXHIvDYWJwwsFE7mWqGqzNt0lTbYC3b8YoUzUw9DqcxwkrsW
+u/hu0YsCkIw1fTmras0rQMUMJCWhlPlyM3h0OBCGC2tWaceL9lHXM8ONkTCmBFg
k0dekh0XImIBEeZeSehqCwJEUKWXqAqT16nDbcnUS4H2exntFRZaPlavReUclLqp
zQT9IGb2SczZUSsnTXB28cGEgOKR2cSlHTEm5cLnY3+a3a2PByWpXXVbK9Li9xrN
z3lkM6ZWPgR5DAJnjgDWKDX+1FOcvMdEv95Q5ikXTbw0xbXC0Qq074/vK+JrrCok
w99hb1MUn0zd+0mqhCL+kYPsX/1LY6TqKHpfNRO/yo70xLoPtxCwb8dOLu2i2v5t
wyN71MZvbxjddl1yb5EKBVNWDGQdP984fAN147Mp04Oy1ER8hogLE6F6yMo7JZub
YJqU6h/fSk5jrH5WvGyxC1OR3LP+NtUDWAApjfwl5EVuDYp7Qn9Xh2bOOuB/dgzt
wAHptv1GjhAA/vUtRR8XjYKWeozZnwhvkhYj5+xzMkl6jR7qXOyqkxUjMRC45VSg
rKCsb0bIb3E31glFxWC8kabWBS1m6YfFyVXn5ev6bANK9ocfuf2nC92oFvKHTDve
xBUGDaenRHiuK/iZrysarL9ccf9s6hAm5CcTxGdnQenbm9Zi+0Y=
=HO7i
-----END PGP SIGNATURE-----

--p23uvw2lo3ditou4--

