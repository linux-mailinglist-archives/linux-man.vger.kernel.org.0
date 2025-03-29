Return-Path: <linux-man+bounces-2668-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C884A75771
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 19:30:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBEF73AB748
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 18:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B5B243AA8;
	Sat, 29 Mar 2025 18:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh36Lb/n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187781F956
	for <linux-man@vger.kernel.org>; Sat, 29 Mar 2025 18:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743273052; cv=none; b=aHgMp9V+9xeZ4MmV20xOJyUTL1kp9OwmTdw9xIAn7xtQ559gQbbTglMJi5Ah31/fy/m2hKtCkLk7drYuqIxJKGbZsrKIOEkCv1czkQScao3/HZD7O+HtJT/l7nCFjuQDZZqCAhx6lR44dO9fVG3KrXzeZSSVa2j8Mp0FkXQgxD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743273052; c=relaxed/simple;
	bh=gTE0XqY6Yr4bqXtyVzX6Mw7+vfHUgABBqK2wdlb9Pzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cstwyjb75cKI4g9CEwFN1q9wN7HfXHjTN/G7/QNXpykdfBNRwoaKaGMyii9JGeSw4vor27/UAowRqgndBAfrqjE6/a4KIjcO/dRR2igzEwj4lNJ/dMsqt8IZnEzx3OOzizZR5w//mSXSzgmUjU1SsoOqZgBtQHF+nBeEEIhjVQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh36Lb/n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D02C4CEE2;
	Sat, 29 Mar 2025 18:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743273051;
	bh=gTE0XqY6Yr4bqXtyVzX6Mw7+vfHUgABBqK2wdlb9Pzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nh36Lb/n1mYV2V17JX7DDI0BpDhjgUry7rP2+rAkPhSbIjhh4P4YNRhieCurh4YNe
	 2aDJhq7QkknMqOYLqOrFOOiVGky4fJLzH7+/BQoEMwtK5vTC4Zpp8nbYHn0AXBhiy3
	 7Naad0iTuj0heuu8jJjDUwLZMsIzgJa5CuPIaH+5YWBJcES+PiSwAOFq7e+HWWO3h+
	 la1CK5Tjao6tkQu9tWBb2vIe/s6a9WbJHNDeHBZ44fFKyUBYL5AaNws9gsIeNblnLT
	 HfL+CpmuFsuUftYsIiBR4NmvPcbTdSjW7+X4JvzRCL8lCNDl6I4JDXemACfIb+kldT
	 y/3lxEC3x2euw==
Date: Sat, 29 Mar 2025 19:30:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Peter Radisson <radisson97@web.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH] make consistent example in recv.2
Message-ID: <76g2kv7eelfyiovqsz5xnnxr3x3njekxtgjiedqk6at7kzdm27@jtmzp2fhsgxt>
References: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
 <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ve36e6tpfvv6rdjj"
Content-Disposition: inline
In-Reply-To: <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>


--ve36e6tpfvv6rdjj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Peter Radisson <radisson97@web.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH] make consistent example in recv.2
References: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
 <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>
MIME-Version: 1.0
In-Reply-To: <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>

Hi Peter, Carlos,

On Fri, Mar 28, 2025 at 06:53:52PM -0400, Carlos O'Donell wrote:
> On 3/27/25 1:54 PM, Peter Radisson wrote:
> >=20
> > Replace 0 with NULL als in the example a few lines above

Thanks!  I've applied the patch.

Although, I had to do it manually.  It seems you have an old copy of the
repository; you should pull the contents.

	warning: Patch sent with format=3Dflowed; space at the end of lines might =
be lost.
	Applying: make consistent example in recv.2
	error: man2/recv.2: does not exist in index
	Patch failed at 0001 make consistent example in recv.2
	hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
	hint: When you have resolved this problem, run "git am --continue".
	hint: If you prefer to skip this patch, run "git am --skip" instead.
	hint: To restore the original branch and stop patching, run "git am --abor=
t".
	hint: Disable this message with "git config set advice.mergeConflict false"

> > ---
> >  =C2=A0man2/recv.2 | 2 +-
> >  =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man2/recv.2 b/man2/recv.2
> > index ba17d03a3..21f65e86f 100644
> > --- a/man2/recv.2
> > +++ b/man2/recv.2
> > @@ -325,7 +325,7 @@ socket (see
> >  =C2=A0.BR connect (2)).
> >  =C2=A0It is equivalent to the call:
> >  =C2=A0.PP

This context was changed in
1ae6b2c7b818 (2022-03-20; "Many pages: Fix style issues reported by `make l=
int-groff`")

> > -=C2=A0=C2=A0=C2=A0 recvfrom(fd, buf, len, flags, NULL, 0);
> > +=C2=A0=C2=A0=C2=A0 recvfrom(fd, buf, len, flags, NULL, NULL);
> >  =C2=A0.\"
> >  =C2=A0.SS recvmsg()
> >  =C2=A0The
> > --=20
> > 2.35.3
>=20
> Agreed. They are both pointers. It should be "NULL, NULL".
> It should also match the text under DESCRIPTION.
>=20
> LGTM.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks!  I've appended your R-b tag.


Have a lovely day!
Alex

P.S.: Please use <alx@kernel.org>.  I don't use my @gmail account
      anymore.

--=20
<https://www.alejandro-colomar.es/>

--ve36e6tpfvv6rdjj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfoPFgACgkQ64mZXMKQ
wqntnxAAoFAd9AwjrsEBPeBC3DwMfFNm8LjzUNn4rBvt6VJn2TE8e58f/yyHFO+o
pDy94wfZC8EjRvWbAn+WPUHr/CZeoxBXxTMYgAr3Gqsj+Qj+XO8wEAket3DVQ9C0
t69NL6yOebsnQ8/OEmPy7eWM8UIszt7v9sONU0BZnNJrr3+Hbv9/1FAofuhiEYdI
gZMQeVainUgEipeNJPDIzICsa4/OsCfneHQCeCnqm58mrrDlPa/ijDsXRUlYgVmf
9AIn/PoulMseueYyAhx+kBX8hKxL9IZsNiGdsjRkfgZXYVf1AA6B/HxNm8qa5ZmM
Q8WMd27crGuVbBX/O61izTBflph9BV/na2vwbpgNcWHk4Nd22/BmoF7hmrMUVG2w
9N6fxff8jWqi1bq4vQbJ2KsEeHqE0Evwqq+eDr7YFs0PmlOXxfJ39Wib9yl0mO0B
VLOYq5B5jvZ2SCFAUInF1tB87DIUY1/FUPjtwT2W8lesdmC19gsNOCG1XlWgmtcd
+iKai9Isipvi4StaOy8LjYWZ+OCOyaD8uSwlnPlyWqmd7zRkcUg2VJ2eYViEh+eP
7QubQ0r5Fsns51Z1TVuCbo+9ExansuN3eJM8LMs7VGGCp5TVqd3ziagiH2htfVyo
w/Pl8SV04pyQwbU4MrXE2eMX7B4cqa24OStkJmAWyZ1P4kVO68o=
=Xb3M
-----END PGP SIGNATURE-----

--ve36e6tpfvv6rdjj--

