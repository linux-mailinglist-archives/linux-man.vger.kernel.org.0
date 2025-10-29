Return-Path: <linux-man+bounces-4219-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5D3C19AA3
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C0CD46566B
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA057321F31;
	Wed, 29 Oct 2025 10:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l72js7C1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BAB2FE067
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 10:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761733292; cv=none; b=mTtGE/ME+yu12+QMA8Vp99i8WLKIVUB8zu7AwTLAlPdhmKhFQpZRFIafP199nDpYwqv4ihyLYwveMlfQAhKBvGB4xFSrwzCuNvCoefnr7OwZIPtpOO2MpItlAuGm/yPRO0RVFmsp85UDK9bEBidGsUs2VWi99VQXie6pfuaAJ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761733292; c=relaxed/simple;
	bh=7DV8Jr84JfpXNzqLLs2Nr8bImWJKWT5S4AdpuHFNTX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O0hXPDqOU7kT1XsNRosGnnanSpu939Z7yUZtwzoLl5znxEPEGPAW84c/YiQdsxVB7Vmgu8yAuGU3Pc4H6+M95ovI0NCwxKZ28bvwT5Jj6ZDc22v6xA98UU2rXCv5TKUGLZu1cNT5tvDGXcU3cUIHNniym3g4IMqBg0ug9UCH6Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l72js7C1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B824C4CEFF;
	Wed, 29 Oct 2025 10:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761733291;
	bh=7DV8Jr84JfpXNzqLLs2Nr8bImWJKWT5S4AdpuHFNTX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l72js7C1Sy3CRcxXt6ijH4AwBlyatkOMmmXOHjDaNBV5B3KfXlIvmo20C9kLvBOLK
	 qYCjniMmyMXYAw43Y8e7oCltUeiZgfArqIpHuqDvBbH6TmDcJrE95LYAWC18T1uzUz
	 Fc7qYVYuhNOTITGGIzilRIRle3eLeW/Av88Tnq58Vuyir2t3qhtFsoPxjJsRM1PDx9
	 oKiipp3hEu03etjNyQEbM0qvKvvgjwjoi521MC4ivYsBbF97tC4m4e6QBGVRxpix9F
	 Ooim+AcZLWG3qyIaaYgCU7kVRQr0FLFAvv8hpkU+dlOJQSgS4CUjOfEgW2fZFm9/3S
	 j8rmJL8Drb2bw==
Date: Wed, 29 Oct 2025 11:21:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20251029090718.6xpq6zf6iawjta2j@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t2jyg3b5kcnpnf3g"
Content-Disposition: inline
In-Reply-To: <20251029090718.6xpq6zf6iawjta2j@illithid>


--t2jyg3b5kcnpnf3g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20251029090718.6xpq6zf6iawjta2j@illithid>
MIME-Version: 1.0
In-Reply-To: <20251029090718.6xpq6zf6iawjta2j@illithid>

Hi Branden,

On Wed, Oct 29, 2025 at 04:07:18AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2022-07-19T14:17:15+0200, Alejandro Colomar wrote:
> > > +.PP
> > > +.I tm_gmtoff
> > > +is the difference, in seconds, of the timezone represented by this b=
roken-down time and UTC
> > > +(this is the reverse of
> >=20
> > Could you come up with a more mathematically precise term for
> > "reverse"?  What is reverse?  The additive inverse?  Maybe use
> > "additive inverse"?  I think "opposite" also has the meaning of
> > additive inverse in maths, and it's maybe a simpler term (although
> > additive inverse is more precise, IMHO).  But reverse is definitely
> > confusing to me.
>=20
> I think the idiomatic term is "inverse".

Inverse is too generic.  Inverse functions do something else.  The
specific terms are "opposite (of a) number" and "additive inverse",
AFAIK, and maybe also "inverse (of a) number".

> The existing language I see in my man-pages checkout looks fine.
>=20
> tm(3type):
>      tm_gmtoff is the difference, in seconds, of the timezone
>      represented by this broken=E2=80=90down time and UTC (this is the ad=
ditive
>      inverse of timezone(3)).
>=20
> > > +as a variable, is an XSI extension \(em some systems provide the V7-=
compatible
> >=20
> > I tend to prefer the em dash to be next to (no whitespace) the
> > enclosed clause.  That makes it easier to mentally associate (as in a
> > set of parentheses) to the clause.  I'm not sure if it's a thing of
> > mine, or if it's standard practise?
>=20
> Practices vary.
>=20
> "Spacing around an em dash varies. Most newspapers insert a space before
> and after the dash, and many popular magazines do the same, but most
> books and journals omit spacing, closing whatever comes before and after
> the em dash right up next to it. This website prefers the latter, its
> style requiring the closely held em dash in running text."
>=20
> https://www.merriam-webster.com/grammar/em-dash-en-dash-how-to-use

Yup, and both of those are different from the Spanish practice of using
spaces as if em dashes were parentheses, as we recently discussed, and
which is my preferred practice.

> > > +.\" FreeBSD
> > > +.BR timezone ()
> > > +function.
> > > +The
> > > +.I tm_gmtoff
> > > +fields provides an alternative (with the opposite sign) for those sy=
stems.
> > > +.PP
> > > +.I tm_zone
> > > +points to potentially-constant static storage and may be overriden o=
n subsequent calls to
> > > +.BR localtime (3)
> > > +&a. (this, however, never happens under glibc).
> >=20
> > What is "&a."?  Is that documented somewhere?  I didn't know that
> > abbreviature.
>=20
> Possibly an abbreviation of "et alli" (Latin: "and others"; modern
> abbreviation "et al."), as "&c." used to abbreviate "et cetera" (Latin:
> "and the rest").
>=20
> In English orthography, "&a." is nonstandard, possibly archaic.  ("&c."
> is _definitely_ archaic.)
>=20
> I'm not a Latin scholar, but it's possible that "etc." is better used in
> reference to other parts of a whole.
>=20
> "Dude broke my arms, my legs, my ribs, etc., and laughed in my face."
>=20
> And "et al." is better used when making collective reference to other
> independent entities.
>=20
> "Art Cohen, et al., brought a class action case against Donald Trump for
> fraud."
>=20
> But if a real classical studies major tells you I'm full of it, listen
> to them.
>=20
> I snipped your advice about avoiding Latin abbreviations altogether,
> which I continue to endorse.
>=20
> > BTW, if the '.' is not a sentence ending, it might be good to mark it
> > with the ineffable \& escape :)
> >=20
> > &a.\& (this ...
>=20
> I'd avoid use of "&a." altogether as it will confuse English readers,
> native and otherwise.
>=20
> The dummy character escape sequence is not ineffable.  I just effed it.
> ;-)
>=20
> groff_man_style(7):
>      \&        Dummy character.  Prefix an input line with it to prevent
>                a dot or apostrophe from being interpreted as beginning a
>                roff control line.  Append \& to an end=E2=80=90of=E2=80=
=90sentence
>                punctuation sequence to keep it from being recognized as
>                such.
>=20
> Regards,
> Branden

Thanks!

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--t2jyg3b5kcnpnf3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB6qcACgkQ64mZXMKQ
wqnw/Q//b0BBQtlEcvKeR91EEd71uWumKyQvP/oFOlGX7in+C9DcDXYdxpgrqy7A
iAbQM3Ur2PuQoujFRkdGBH9tvsPwNlp8dW1Fsa9D3YMKdEXqeQUuuEZq4eum88mU
aHb5WULeqpfjEypeL4NU4uL656xc0f8OsyrkqToAga3K8m3UKPj7fvvBXToEgw5G
ztPsc7LnCZIkg83729TUfQt7TBxKUk6rPpclu18a1ShGEw95ClgJigvVwDlK3LDA
sgUYBD8WOKUqR4eEGfDwpdK2PhSw3B99DoQ9rwLdNBi/FirBKKll/dxjSYlZL2uS
6z3DEbtMkHuKY2rQJgAtzzct0NcmtMQjQYtnYmBQ2tCOyPYtMIEPC5tBuc+8Lc/I
smuFAYHqipPtQT495MdPE3X5OWxbrpZyA4FXYheCXRIhB5XODOylwvq0TO9yalZ5
JmAyEgRy3YCH1GR2gnA0UP4fRRFREXYhrAYBX2iFC+QOYXV1lBxA22vwVaaWgS+R
Pmqt8oZYWsm1Jnkakp8uB8FDDOKKlcVdp2W64Kkbn4D6qcbQBbnOY3dWckSTwRz3
wAuOmnhWOmVNhJvZD+Qp9+KSJLyCA0s8ysoc3cs/P99OLp+3YdNdCCx2n7yNPoc5
5wTeKbEVbVjmhliO2ITUrxKSS2dxPYD90oP3ycLcwlexqlyzGYs=
=7pKE
-----END PGP SIGNATURE-----

--t2jyg3b5kcnpnf3g--

