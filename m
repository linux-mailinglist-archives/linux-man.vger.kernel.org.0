Return-Path: <linux-man+bounces-1352-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B814F929139
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 08:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BC2B283865
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 06:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C983D17C68;
	Sat,  6 Jul 2024 06:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLQ/Y+Kr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAC21BC43
	for <linux-man@vger.kernel.org>; Sat,  6 Jul 2024 06:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720246228; cv=none; b=npEfWxP1mCfJGnNTKhY50iFNYMMOLVPr/lNHhlaAJoQOOrfWYdybr3x9GHCDL5+TPb200rEFIKOfQZ5bKn8957GPYDGrHGeoJE9QK0nadUueakkNLmjXGseP3dh8WnXGVLQjRDlsTmcsYdo6v13mWh+q+e+aG/AhiFz1p9fJAog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720246228; c=relaxed/simple;
	bh=CVexFMXcxiXKtYYQYsdkxXVjGUZyXd1FjWudYE6P5Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pt3go/qEAtRkbAH3q58zfmpn8Bqm4aXGpgoURKYtuevFq71NBXxKoLlwEfBWZREc94qWmaFIn4HhrhNxeTCPq89z40x3iNivQiP1AVLUQOw9CVhRQtqOO8COUVQsL3YzAMgVLoo8wJYyo1tUHvOhLiRUpjZaLoHWRScBBFpGBFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLQ/Y+Kr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3052C2BD10;
	Sat,  6 Jul 2024 06:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720246228;
	bh=CVexFMXcxiXKtYYQYsdkxXVjGUZyXd1FjWudYE6P5Xs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dLQ/Y+KrRsI/OlERMyR0CIgoj+3NBctmtLIcRYek3htRwdJsF0wLrDJDyUJk3DHcw
	 YQzyirg9JMmaM06M/LfFWUOQJgeQQZnMmUmci0uWYj9G8fD7nG33E69y7v7zD8vPSk
	 UGwGuoI8HSxIcIDZrJDI/j1QI40V9pVNV95oKg9bYHt6GSui26RPE8YkizLdH0qX6R
	 V6IiePvD3Dz1B4L++ddFPiYw8L7MwbaRCcXsaniz4S4NXzSiXQUqfMp7Q/5kisQavb
	 QAWKES2LkARKXUmt/B19yHjP5NputSl6wafoOfL+bd3E3rJSl74aysfPm6YPxp25zp
	 V11i8b2Zir6Eg==
Date: Sat, 6 Jul 2024 08:10:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>, Ben Boeckel <ben.boeckel@kitware.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <cigir4ogdtcwzop5vdj66ijal63c4iz6btydjx2htgvttca7xk@4rfpbvvdefdl>
References: <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wygusk4ytdlxcbym"
Content-Disposition: inline
In-Reply-To: <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>


--wygusk4ytdlxcbym
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>, Ben Boeckel <ben.boeckel@kitware.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
MIME-Version: 1.0
In-Reply-To: <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>

Hi Xi,

On Sat, Jul 06, 2024 at 10:24:16AM GMT, Xi Ruoyao wrote:
> On Sat, 2024-07-06 at 00:02 +0200, Alejandro Colomar wrote:
> > That's precisely the case with strtol(3): it doesn't access any objects
> > through *endptr, and so that pointer need not be restrict.
> >=20
> > Then, nptr is a read-only pointer, so is doesn't matter either if it's
> > accessed or not.
>=20
> Restrict allows to reorder any writes to other objects with an read from
> nptr then. In strtol at least errno can be written, and depending on the
> implementation of locale things there may be more.

This does not apply here, I think.  Let's include errno in the list of
objects that strtol(3) takes, and list their access modes:

-  nptr		access(read_only)
-  *endptr	access(none)
-  endptr	access(read_write) [it checks for NULL; I had forgotten]
-  errno	access(read_write)

In the callee:
~~~~~~~~~~~~~~

The access modes are known by the callee, because of course it knows
what it does, so even without the attributes, it knows that.

strtol(3) cannot write to errno until it has parsed the string.  And
once it knows it has failed (so wants to set errno), it has no reasons
to read nptr again.  Thus, even without knowing if 'errno' and 'nptr'
are the same thing, there's nothing that could be optimized.

*endptr is access(none), so it is implicitly restricted even without
specifying restrict on it; the callee couldn't care less about it.

endptr is 'restrict', so it can be treated separately from the rest.

In the caller:
~~~~~~~~~~~~~~

We can't specify the access mode of *endptr nor errno, so the caller
must assume they are read_write.

endptr is 'restrict', but this is only useful for having warnings
against dumb things such as strtol(x, x, 0).  Other than that, the
caller knows what it has passed in endptr, so it knows it's a different
thing.

The caller also knows that it hasn't passed errno as nptr.

Then we must make a distinction in what the caller passes in *endptr:

*endptr is uninitialized:
~~~~~~~~~~~~~~~~~~~~~~~~~

The caller knows that nptr is restricted even without the qualifier,
since all other objects are either restricted, or known to be different.

*endptr points to the same thing as nptr:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Regardless of the 'restrict' qualifier being specified or not, the
caller has no way to determine if the callee accesses the object via
nptr or via *endptr, so it must assume the worst case: *endptr; and so
it must assume it could have written to it (since *endptr is non-const
--and even if it were const, as you said, it means nothing--).


So, even considering errno in the game, I don't see any difference if we
specify nptr to be restrict or not.

Thanks for the feedback!  I'll incorporate the discussion about errno in
the paper for WG14.

Have a lovely day!
Alex

>=20
> TBAA does not help here because char aliases with anything.

--=20
<https://www.alejandro-colomar.es/>

--wygusk4ytdlxcbym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaI388ACgkQnowa+77/
2zLEQA/2N45A9UY7Ppsi1Jcpe/REWA+yY3qwwlRto0/HjUmp7d4KOLbi6k3X3B9h
dndz8QG6MUQCCPhxqolv7/WCwaiqPdvZzF1hM8Vc20rmBvKLtLcdPm+qYL60o3+3
e55J2+v6qpplIm28l7lqMlt2JH5/w8Gey6wZQbJxJcSE/x3kcVWCT8L/9XUYRJYF
vKhOuj73fVRdKTmMxQB4kKs30CVu1ODd0m9DaW67ame/ycNtM382ILM4hgcmx+BZ
EoIYyjDRXD2sNQTCo6j9WWaYxSdMGiTL+8xiMNELvZNF9nrspfpiZKfg1ms75XMn
7LSVCaufATv+zwjcXoRjVQU5DhnLiBPpVIeIQpGyJDrW7XuQ0uAGTNYHON1EyXWI
uBqx9NJGf18XxBzbL5MpHtoINXF+z+tOi1CKM1J9/61biP6QLXXUKo/DcQqN2S7M
Ci7x4MAZlboOf17qbxOsmxeoEO/Y4ZXMCzfkGueoMUqv1yPSYjj9JGzB7CVip6J7
PL82jrEaDQ8qw/uBwW2vA77IGuHU1Yo/OuPkaQSe9jGJSLGLM3EpF3BotCN2IC8T
FpyTuVAIRH3+0BamaTVc0cM/othXhjQMipQQD16m+oUXMoRVa4yvpBOqLsWD37jH
iqWLB369kXcHtT1U1Xb6dyrYMn58PrT3dL6OyxOO8YPL4/sWFA==
=bSWZ
-----END PGP SIGNATURE-----

--wygusk4ytdlxcbym--

