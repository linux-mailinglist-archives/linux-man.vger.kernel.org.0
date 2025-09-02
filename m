Return-Path: <linux-man+bounces-3827-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D36FB3F825
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 10:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AB383A7102
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 08:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79F42DE709;
	Tue,  2 Sep 2025 08:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M15idCzi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B79A219E8;
	Tue,  2 Sep 2025 08:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756801174; cv=none; b=QRQWVkT7nltLopZozHPMxHtWY43h9+y3bF6JdkV/MMl1Xn2Iv0EfKkArSmme3foMKpbjuXDyhvPkh9tfx/283aYZzckV2xZ7UZ2eIyNK0P9YJY4xuU6+az9HgPDgdXaTCryz8LEgyXCFSjyJFk63g5NEsAY14/iVS+jTxqxXB2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756801174; c=relaxed/simple;
	bh=YQhS5YX7+TunJeGo0nhCVLU37f9deS4w/2nmDwjdTCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N7jRYxNleU2nLmOqFjDxNzOfRpivi97ch0gtAmPQBWAiM6jHzQGkhuWq9XO1rUy7FcR6hbiJJZ6Vx32WviXGEVE0NhLsqQ8UdJ0IWbhkaiyvPW04VsCfYi9PAyrkSKKgQNuo20OJCpd5JtUzMcEzqDIACBeyqFRkF/aO4oMSI9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M15idCzi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E1EDC4CEED;
	Tue,  2 Sep 2025 08:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756801174;
	bh=YQhS5YX7+TunJeGo0nhCVLU37f9deS4w/2nmDwjdTCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M15idCziekmclmlzSsQ+SdXNHthgCtngb+81FtWkG1HT/e6GbwkFH1pU8ATr0cXpQ
	 bkTNKcztaM/KLifilufOst7bZ6dJG8RY/aJaou3BGvxJoG21BQdQ1OhC5+I06WLFNP
	 kIofKtnc9R4/NnKagWA4Nxs2rU3enWY9Tjb4UmX13YSRqHuf8yMRpvAOFMjhFc+QMD
	 HQq0j6ngFhiPbSxIaAL+dA6rbKRO21FMOieNM+OFYdLxjMAAbGSHkqAc3gf3ywZZZO
	 CDmCDYiyXM4wYAgHo4IMPnE5lsj+3ZxuwfWr2vspjBdKOavcfUAt0RW6nLaFt5d2Ph
	 DV1w7+mjLxkpA==
Date: Tue, 2 Sep 2025 10:19:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Message-ID: <rwnvktudfyagql35wimoeshpghoccv2stbk72uukdlnmr6iagm@xwknjlczowox>
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <ejz6kpdn6kxuspktab3m7sjwg3l7eevacoabgroxgsltognb7y@3edyqhpae4vn>
 <97c19219-6055-46ae-865a-2833d8367db0@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jc7k4dxmgdocrr7y"
Content-Disposition: inline
In-Reply-To: <97c19219-6055-46ae-865a-2833d8367db0@gmail.com>


--jc7k4dxmgdocrr7y
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <ejz6kpdn6kxuspktab3m7sjwg3l7eevacoabgroxgsltognb7y@3edyqhpae4vn>
 <97c19219-6055-46ae-865a-2833d8367db0@gmail.com>
MIME-Version: 1.0
In-Reply-To: <97c19219-6055-46ae-865a-2833d8367db0@gmail.com>

Hi Usama,

On Mon, Sep 01, 2025 at 05:58:39PM +0100, Usama Arif wrote:
> Thanks for the quick review! Its my first time writing a man page so was =
apologies
> if there were some basic mistakes in formatting.

No problem.  Formatting issues are usual, and expected.  :)

> >> @@ -373,7 +373,9 @@ nor can it be stack memory or backed by a DAX-enab=
led device
> >>  (unless the DAX device is hot-plugged as System RAM).
> >>  The process must also not have
> >>  .B PR_SET_THP_DISABLE
> >> -set (see
> >> +set without the
> >> +.B PR_THP_DISABLE_EXCEPT_ADVISED
> >> +flag (see
> >>  .BR prctl (2)).
> >=20
> > Double negation is confusing.  Please rephrase to something like
> >=20
> > 	The process can have X set
> > 	only if Y is also set.
> >=20
>=20
> Yes, makes sense, will change to belwow in the next revision:
>=20
> The process can have
> .B PR_SET_THP_DISABLE
> set only if
> .B PR_THP_DISABLE_EXCEPT_ADVISED
> flag is set (see
> .BR prctl (2)).

Sounds good.

> >>  .IP
> >>  The
> >> diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/P=
R_GET_THP_DISABLE.2const
> >> index 38ff3b370..df239700f 100644
> >> --- a/man/man2const/PR_GET_THP_DISABLE.2const
> >> +++ b/man/man2const/PR_GET_THP_DISABLE.2const
> >> @@ -6,7 +6,7 @@
> >>  .SH NAME
> >>  PR_GET_THP_DISABLE
> >>  \-
> >> -get the state of the "THP disable" flag for the calling thread
> >> +get the state of the "THP disable" flags for the calling thread
> >>  .SH LIBRARY
> >>  Standard C library
> >>  .RI ( libc ,\~ \-lc )
> >> @@ -18,13 +18,21 @@ Standard C library
> >>  .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
> >>  .fi
> >>  .SH DESCRIPTION
> >> -Return the current setting of
> >> -the "THP disable" flag for the calling thread:
> >> -either 1, if the flag is set, or 0, if it is not.
> >> +Returns a value whose bits indicate how THP-disable is configured
> >=20
> > s/Returns/Return/
> >=20
>=20
> ack

The thing is, if we were writing it from scratch, I wouldn't have a
preference.  However, given it already uses Return, I don't see strong
reasons to change it.

If you still prefer to change it, though, feel free to insist.

> >> +for the calling thread.
> >> +The returned value is interpreted as follows:
> >> +.P
> >> +.nf
> >> +.B "Bits"
> >> +.B " 1 0  Value  Description"
> >> + 0 0    0    No THP-disable behaviour specified.
> >> + 0 1    1    THP is entirely disabled for this process.
> >> + 1 1    3    THP-except-advised mode is set for this process.
> >=20
> > We should probably use a table with .TS/.TE.  See examples of this in
> > other manual pages for how to use that (or read tbl(1) if you want).
> >=20
> > If you don't know how to use that, I can do it myself.  tbl(1) is a bit
> > weird.
>=20
>=20
> I tried below, and it seemed to look ok in the output, but please let me =
know if
> its ok:
>=20
> .TS
> allbox;
> cb cb cb l
> c c c l.
> Bit 1	Bit 0	Value	Description
> 0	0	0	No THP-disable behaviour specified.
> 0	1	1	THP is entirely disabled for this process.
> 1	1	3	THP-except-advised mode is set for this process.
> .TE

At first glance, looks good.

> >> @@ -15,24 +15,62 @@ Standard C library
> >>  .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants=
 */"
> >>  .B #include <sys/prctl.h>
> >>  .P
> >> -.BI "int prctl(PR_SET_THP_DISABLE, long " flag ", 0L, 0L, 0L);"
> >> +.BI "int prctl(PR_SET_THP_DISABLE, long " thp_disable ", unsigned lon=
g " flags ", 0L, 0L);"
> >=20
> > Hmmm, I'm reading this weirdly.
> >=20
> > Old code doing prctl(PR_SET_THP_DIABLE, 1, 0L, 0L, 0L); would be
> > transformed from setting the flag before, to now using 0L as flags?
> >=20
> > Or how is backwards compatibility handled?
> >=20
>=20
>=20
> Its still backwards compatible. The name of the arguments is changed, but=
 the arg values have not.
> Before you could do 2 things:
>=20
> prctl(PR_SET_THP_DISABLE, 0, 0, 0, 0); // to reset THP setting.
> prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); // to disable THPs completely.
>=20
> Now in addition to the 2 calls above, you can do:
> prctl(PR_SET_THP_DISABLE, 1, PR_THP_DISABLE_EXCEPT_ADVISED, 0, 0); // to =
disable THPs except madvise.

Thanks!  This helped me understand it.  I think this would be useful in
the commit message.

> >=20
> > See man-pages(7) ("Lists"):
> >=20
> >        There should always be exactly 2 spaces between the list  symbol
> >        and  the  elements.   This doesn't apply to "tagged paragraphs",
> >        which use the default indentation rules.
> >=20
> > (If you grep(1) around, you'll see that number everywhere.)
> >=20
> >> +Global THP controls are set to "always" or "madvise" and
> >> +.BR madvise (...,
> >> +.BR MADV_HUGEPAGE )
> >=20
> > I'd say
> >=20
> > 	.I madvise(..., MADV_HUGEPAGE)
> >=20
> > as an inlined expression, which goes in full italics; that's simpler.
>=20
> This results in the entire line being underlined, which is probably not w=
hat
> not what we want?

The entire function call is underlined; see man-pages(7):

       Expressions, if not written on a separate indented line,  should
       be  specified  in italics.  Again, the use of nonbreaking spaces
       may be appropriate if the  expression  is  inlined  with  normal
       text.

Which reminds me to prevent the line from breaking at that expression:

	.I \%madvise(...,\~MADV_HUGEPAGE)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--jc7k4dxmgdocrr7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi2qIgACgkQ64mZXMKQ
wqm2Qg//X9msUvlfpgRzzjcBpL5mkPJ/GFvt21iFqbm8OBfUqvFNjJQQrpdO1QCO
TsPKS5ITdM9q5V5ejk2dUlLRVY4RL5/NtmnBceo30q06hdQsAix1MVnu9jAMCQxE
HmKIws89hNBt9iUMYy5fR9vHGT4Mvt6WNt05K/JD6UsqqWgfDvAd1wvrcoVeeru0
Yfq1twq+HTZevCKX1ep3VCbjvXU0y6Jd1DB4jYkq2xjN9xhl07DXK5AZF9R0yW5k
H3wA17exI+yNeGvFj8ihO45qXDXcWvaWRqpTT3rfis3s4h7zsokKtnQFulIdD+dh
gO9speFlXV3bM/IlxF3CR9DBupBMKerwqWRCtqdqmFj/GM/15JuBbb04M0M+vtAP
cVtNyVH6XiuQlhysE8FVY7Y33cWKsLQLJztfesOBv41Plq3e1Uy+VH3EnrNZNUWm
kRLWazf7StajHygayEp8uUE2P8BlN6oN+1XdZJ9HCZ5m4qBIvn+9jH2bPmObK4jr
a+7GPqSdkoIsdJbzGQyCOM+fJfJuBEdSYn2rfaYFaKUZphwh8Yf/mTVPG/sAYdc8
B1iU+AVw3Y4bU8ZhCM+bwjSf1BsaWcI3sDCLn9zLcGRjucTiTwtbCxV2/Vdz+hi6
fSa1Z78ec4BGVprIZefLf9NB/+aOiFgMoJt4NbVvJ6POG2Bu5Gc=
=6vQR
-----END PGP SIGNATURE-----

--jc7k4dxmgdocrr7y--

