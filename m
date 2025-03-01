Return-Path: <linux-man+bounces-2554-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D01C1A4ADD7
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 21:37:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D958A1702F4
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 20:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A3E1E9901;
	Sat,  1 Mar 2025 20:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsyxw1oZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952CA1E98FB
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 20:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740861437; cv=none; b=TkWD2iIdoA1pJ6Vzry0QbZWMe/iE3E3oKwsWDyGeaFgSacKg/h5+4Rwp3mSj8vARhgv+St+aFD0JhZ+2hu+3zF5ivfK94S1PHMW+gOFi22cf41vzHF83j8o48kv6gNDyv0MuqeUKrfMIW3tqCQu/LM7D9ss7vojwDuljbLb66FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740861437; c=relaxed/simple;
	bh=aUm0DKxd5wj1XrYcY65sqNi+XkDLjWcDDGOXY8SGIgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qag69D4IS8tXXDTF++3Hh7n0yF8jOT1dzg9ilB/kuM6qQLPZ7jX2FbUhvv68JYaBJmBLjPblHCQj1gVaU8/d8J+knFggrMYgY0PlG8/XE5ND5SUqYBojUcptQ4CI4Qh+kptt08gyVbcrsnBpNADA/DoxkPVK0S19AWsoa+Seqno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsyxw1oZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A109C4CEDD;
	Sat,  1 Mar 2025 20:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740861435;
	bh=aUm0DKxd5wj1XrYcY65sqNi+XkDLjWcDDGOXY8SGIgQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hsyxw1oZ5bHsKTVFKr5SmH52kD0pyVWXMTt/Y/XBdf10faDX0bTvloyn9ys/bfViz
	 i4X5EVmgF1yOhg9nza5m/7XXfb+A1dmS6hnPcz0JuoME5OLjXRYzA47QqZeEUj9zsU
	 4B2OyLrTrEndQQ3AkXzVmO9tQmxjuPcWyh7tWk1B4NG/hbiyTzrLkRu6dDuiRHAQHp
	 M4v4bvttszEgdYzlJbwpgWwbxP52YgVCETloPda7by/SQ+K58+Mq/pTPKtOM9nNNgU
	 l7EPDh3Tbe1xYb70lxWIdKOcY2uaUW7wKNhKYMga1z9CZ20ap2e+VrvpX2OOnwFlH+
	 7mIVTXKSdtMRA==
Date: Sat, 1 Mar 2025 21:37:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rahl <rahl@everwhe.re>
Cc: linux-man@vger.kernel.org
Subject: Re: Incorrect const in futex(2) example code
Message-ID: <w62lr6l4avjqs7pnhbm5kekghnnvaxh4sh3k3xcoploovtgif3@vefoqqj5jlj2>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>
 <ehgu6ozyc6mhmsp2vcheluwqwoho5e4ar3gpba6aoywuqn6xuq@3au5clsivokn>
 <4305CB4C-EB96-4848-A418-FC045D4DFE89@everwhe.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ocimmpav5ihwbso3"
Content-Disposition: inline
In-Reply-To: <4305CB4C-EB96-4848-A418-FC045D4DFE89@everwhe.re>


--ocimmpav5ihwbso3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: rahl <rahl@everwhe.re>
Cc: linux-man@vger.kernel.org
Subject: Re: Incorrect const in futex(2) example code
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>
 <ehgu6ozyc6mhmsp2vcheluwqwoho5e4ar3gpba6aoywuqn6xuq@3au5clsivokn>
 <4305CB4C-EB96-4848-A418-FC045D4DFE89@everwhe.re>
MIME-Version: 1.0
In-Reply-To: <4305CB4C-EB96-4848-A418-FC045D4DFE89@everwhe.re>

Hi rahl,

On Sat, Mar 01, 2025 at 06:41:13PM +0000, rahl wrote:
> Initially I had not read enough of the CONTRIBUTING.d docs, so my first p=
atch was just the output from 'git diff'.

Okay.

> When first searching for how to submit a patch I found this page:
> <https://kernel.org/doc/man-pages/maintaining.html>
> Where the 'Kernel bugzilla' section led me to:
> <https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING>
> I believe I then only read the 'bugs' doc before sending my first message=
 and patch.
> <https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING.d/bugs>

Interesting path; I'll keep it in mind.  I have in my TODO list to move
that page from the website to the repository, and clean up the website.

BTW, the link to contributing patches is right above bugs.  :)

   CONTRIBUTING.d/patches/
       Instructions for contributing patches

   CONTRIBUTING.d/bugs
       Instructions for reporting bugs

> I suppose I should have been more methodical and read through most or all=
 of the other docs first.
>=20
> However, ideally I might have first come across a single document that ju=
st gave an example of what the whole email and patch should look like - eve=
n perhaps including that the raw output from git-format-patch is most prefe=
rable.
> This would at least make it immediately clear that the email is really ma=
de up of a particularly crafted git commit message + diff.

<https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/patches/patches>

seems to recommend using git-send-email(1).  But then the next paragraph
might be confusing:

	Patches should contain a description alongside the diff.  A diff
	without a description is mostly useless.  See
	<CONTRIBUTING.d/patches/description>.

Maybe I should say that one should send the output of
git-format-patch(1) as is.

> That page could then reference any of the other documents for further det=
ail.
>=20
> I actually didn't realise for a while that the output from format-patch w=
ould include email headers, the subject line being the first commit message=
 line, and the message body being the commit message followed by diff patch.

Good to know.  I should probably explain that point a little bit more.

Thanks!

> >> > If for some reason you feel it should be submitted as a separate
> >> > email I can do so.
> >> > This way seemed more prudent for now as this is my first such patch
> >> > and I'd like to get it right before having multiple threads in the M=
L.
> >
> >You could still send as a separate email in the same thread with
> >git-format-patch(1)'s --in-reply-to flag (or git-send-email(1), which
> >has the same flag), which would have been fine, but this is okay too.
>=20
> Thank you. I shall endeavour to remember this in future.

:)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ocimmpav5ihwbso3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfDb+sACgkQ64mZXMKQ
wqnGDg//SYe1o1mfLHEwuUbEYS8mPOC3PVQWpiwR9zGpSMUsTRXCCsa+gFiMnpME
FMvKoBsJWu9hCCCDDWakm7OzT4vas4mhh5x/lI0EnvvE+9bnsyuh/p/N+bBsK9aX
aBlEZDJGZQzFKqrwkeB4Kgw0AtSWpmUp5a8kvjZGNqg25JCDwaOcV00niQM+zLHN
EUFifqlOPLWPWDeh7ID/BDwng9oohbQaUhTgQ4XpIJgBqCMfFiyxN0FfTabW5wgi
ajQG2p4+hCIhYEFn9pP3vxknh0zfeR83TnYVJchErx+NPzv56Tlb+6y6vzbNDm1S
NYphvZF/ZFN92/5yDHLB+bdws+iveokGdYXzBjuAycTbeTjyYgCzprFgs7IFExdV
RT1p4DTOzWCswd2QsPNNIWx6L4lP/EdkRO4gS0AXeGAeBklP0PBt4hqbl0EaZ37P
trg+7bZEuKbc1Un/YrifZatSY92XeeKorQrsKeS+uCFttbXhDaLk0ujY2wnBinXA
tywFGI45N0PK7covonOv7+s8QygW+5Q3zYIc8rW2AUS4DllNkQE60HMvIYYJFG8k
0QClmGJb/Z1/yReeOCLyFuL6jNEesfXQsRYJsv/rPwmFNtdeCkYDY3a9Mvd2qlcn
Y5GSgiL8pZABdE1r+eKaz5SYCbv5dm8YA/9qB4YgM/XnFp2P3cg=
=+2L4
-----END PGP SIGNATURE-----

--ocimmpav5ihwbso3--

