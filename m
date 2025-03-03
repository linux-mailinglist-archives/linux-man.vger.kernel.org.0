Return-Path: <linux-man+bounces-2574-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C82A4CAFF
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 19:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06679175791
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 18:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A054722E3E9;
	Mon,  3 Mar 2025 18:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+5BdfeI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAB184A3E;
	Mon,  3 Mar 2025 18:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741026654; cv=none; b=lYpe+xjbSapHm3BkTsHWrVt7uWSQbuykel0PlmMCK+8nler2Wt2nBdpl0OzASSqAMhs1MOkoObfuclkPmp8IxRtKOScJ8f8HIbwm1Oxn/+U1dmGG4LBHh3r4Ob2ddR3WJ5I4bJJaCot1G5sSSMlSn18b4TPZEmf1ZH4EM60KBhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741026654; c=relaxed/simple;
	bh=dQwTYoeGO1lSYvmhR1yDYCGh4Zks7khFwuiGPzhgBhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fEKKuNfU/wqzyL2M3D7XUpGEOE45SMOZ6C9daTbgbDwCvnENpJEUXkBNY3UePc9qeXDP9AFVbRUEYGQIcnblkKIUkQHhJntvHbLsXPUo31Oe4wUlTOH6ObKwbScfKFRuY8GGB/awDfvzO1OAoTiBasoRfcp/87VwBm1QmrEtpQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+5BdfeI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78E06C4CED6;
	Mon,  3 Mar 2025 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741026654;
	bh=dQwTYoeGO1lSYvmhR1yDYCGh4Zks7khFwuiGPzhgBhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p+5BdfeIxtpwwyNEgiEXNb99eyOLObBCTOtY6OJVHh6SSbv1Gg8NmqBQOKUKZS7N4
	 46/4EPgLN8ERQOx1HDQGcsSpdxVwWt91Zu1q7/MH/Qk8/MyOF00X1LM4eBVAd4Jz40
	 GfPaxy01Ob1M9l0IsBoxpMB/lA4cHP2Av3CvkqP7kc3er/8Bal5xi6dORwoJ+YFz4g
	 iGDxiE+kJ17m6WHIMMKUox4JFcd5i5JMKPrS6mYFUkUJJmnPAxMs7wJPCx2y+7N3Uc
	 DslR/J+ZKQX22Jo08blX8N69gpVP9RYRLKaBRIahadEUYEBCiPioKr0C1uN3Y09J0n
	 6mAyNK7P4/RAA==
Date: Mon, 3 Mar 2025 19:30:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 2/3] landlock.7: Move over documentation for ABI
 version 6
Message-ID: <b4qyqh7jpdnd2muan746hgpxs6gm3xhhunkdvrx3szbf3fstds@cdiwl7ba6gda>
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-3-gnoack@google.com>
 <sbib2esl6bev7tqww3rgyykpxorpyaix7dujwwm2pg42egg6an@rdyjnecj5vti>
 <Z8XXzUggsHkRLEqG@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ff6f7bcbywvpwbmm"
Content-Disposition: inline
In-Reply-To: <Z8XXzUggsHkRLEqG@google.com>


--ff6f7bcbywvpwbmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 2/3] landlock.7: Move over documentation for ABI
 version 6
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-3-gnoack@google.com>
 <sbib2esl6bev7tqww3rgyykpxorpyaix7dujwwm2pg42egg6an@rdyjnecj5vti>
 <Z8XXzUggsHkRLEqG@google.com>
MIME-Version: 1.0
In-Reply-To: <Z8XXzUggsHkRLEqG@google.com>

On Mon, Mar 03, 2025 at 05:24:45PM +0100, G=C3=BCnther Noack wrote:
> Hello Alejandro!

Hello G=C3=BCnther!

> For context, in this patch set, we have three commits:
>=20
>   * 1/3 and 2/3 copy documentation from the kernel side unmodified.
>   * 3/3 revises a section about Landlock's "scoped" restriction features.
>=20
> I thought it would be easier to discuss with the "copy" and "rewrite" par=
ts
> separate, but actually, as you also noticed, 3/3 does rewrite large chunk=
s of
> the 2/3 commit along the way, and it is probably not worth correcting muc=
h of
> that wording any more.
>=20
> Would you prefer if I squashed commits 2/3 and 3/3 into one?

I think so.  :-)

> > > +Setting a flag for a ruleset will isolate the Landlock domain
> > > +to forbid connections to resources outside the domain.
> > > +.P
> > > +This is supported since Landlock ABI version 6.
> >=20
> > I'm wondering if we should have this as a parenthetical next to the
> > title, like we usually do with "(since Linux X.Y)".  Don't do it for
> > now, but please consider it for when you have some time.  I'm not saying
> > you should do it though, just that you consider it, and tell me if you
> > agree or not.
>=20
> I added it to my notes for further revisions,
> I think this would indeed be more appropriate in the man pages.
>=20
> Is it possible to set the paranthetical without bold as well,
> even in a .SS subsection header?

Yes.  It requires you to use \f, but you can.  We avoid \f as much as
possible, but here it's not possible, and I think I've used it already
in a few places.  Here's an example of how to do it:

	alx@debian:~/tmp$ cat roman.man=20
	.TH a s d f
	.SH foo
	.SS bar \f[R]baz\f[]
	asdf

\f[R] starts a roman (non-bold) text, and \f[] reverts to the previous
thing, which in this case is bold.


> > > +outside of the scope.
>=20
> Thanks for the review,
> =E2=80=94G=C3=BCnther

:-)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ff6f7bcbywvpwbmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfF9VMACgkQ64mZXMKQ
wqlXOw/+IQwj21vEK4duKB4t6N/hxuh+r3aFLhx//rs/O5XAM3SCICKdQA5ekpoN
sbdkU0eO4bcUOY4oXuJTgAw6RsXyO9TsmdA8PxNU72Ws+Ep10pS4myO9tClee2ja
/nv9xZNiRcGdO8UOqkUZSQcY0r8p3AAM1q54fD/OXrsbemvbukIyr97RwXWS4psy
/6rPB8VX+NyBgpSHphWTuRgNstAaWDFGqvlBzqTxHZpvqUmsAsfRv4kq0pzJWR0X
RaKIiGmV1HRjboGKgPYjtHxjEl/OxIbTSbmy7+Rg5NWJTEWDG5TUAlWg996gP9Wr
JRxnqAxmIupOPuGLdnAJipuZFksdtn2K8nd5L6GN5hFytXtNuzGT/FgKoKFMK3po
1urwPHFFlv3bKyZWhrpc51QSOOO5WdgfXfmeIf4Dg9iCMDaHzE/vfvs/xqhvXxjg
QCWtwgInxM7/DAIV2DenNbdvRQjiydDo1ti/nAfgAa/bcnp5i6M+yjiBQ0P1KNGR
n9/70rdGykNAa54u/NYUtkNrR/3cGzWo4H+LHwbXEybeRQqvNq7XDVK+k99kQf5Q
TrA93YrAjkEbWOP8sXQtZ/WM+qQ83BNOgPXqKwFtyTRsM2zuTroMSXwpckZJEsM9
q2t6Kwump+X+sLH4vegWzMgkqBulFabUcBGI0YGaHpgBsuYaB30=
=dlo5
-----END PGP SIGNATURE-----

--ff6f7bcbywvpwbmm--

