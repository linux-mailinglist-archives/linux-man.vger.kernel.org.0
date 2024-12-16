Return-Path: <linux-man+bounces-2165-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 583C59F33EC
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 16:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96F1E1676E8
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 15:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F41812AAC6;
	Mon, 16 Dec 2024 15:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttcfI4wQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19E80C0C
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734361355; cv=none; b=N4zbCxezkAgrvlCjg7LLdJTNEj0PgEj8esmRcGjSfLz05Dg4rRmLtlI26GmH7UaodK7YcxMLdkYyw4EEtXhGO3aKBMPwmmGX2D4RzPSdD6XtdmNd8g1IvA5IpvIP09j4VapYWua8GqQbmYGYhD9E3AaO+r82krVc1FlRoUQAG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734361355; c=relaxed/simple;
	bh=aFNbE9l1v4DXiUvPuBAXX/HK/LHM0gqc7eFI7ZFgHNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E/GuFBhfRrpFFkWpY8XzUwl0SJ4hQunDCC/BkBiD5N/LaIU15ERAK7UuEVawU1YmD19tcT9+IbbRLLISm0vkzMQMG0k6g7S22P9FgPRS+Gr6BWETGJlvOBmiB9PbiR+bNK/ysgVSaQGme1qL/g1jzXK7ol14OY150KTY2lnlnH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttcfI4wQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5DC5C4CED7;
	Mon, 16 Dec 2024 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734361354;
	bh=aFNbE9l1v4DXiUvPuBAXX/HK/LHM0gqc7eFI7ZFgHNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ttcfI4wQawEBPMt0igUzFwCUZOrWbzPSmNRExtWT2zxbmuGegjL9OHBYVjfFmNhBN
	 CWB0RJoeJxtWFQfbxX/grt5hvXs41Xe/LEuX3pErZ3PiyJPMdODb08i0r6RdJI9AyO
	 wS5twUXypKhEZfPEcvUMBr82vTNz4ON0ntmHapZWSWBQMA0+6AwZjW3HFcF4YtuZ/1
	 APGQhysaswe9XI/lDmp8Ib1HmhKp0vUKRf/Zjjl3RzfbDl11RaEV4hj/Sr9T9Cox63
	 jGRLXsQx3v449eFBEv6N1Y8FaDyCKpRLZQ+myaILjFoZGk0jIYIfeFu0d+cu3flp5N
	 eJ+/vPckU8vbA==
Date: Mon, 16 Dec 2024 16:02:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <m3r7z47oo4fsx6dexrpiyecgjwjtcj3eqd4lfwc2xvznvjrxjy@sfsiei4y2tph>
References: <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
 <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
 <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>
 <nihkb5t42ntlv277n4xiqzpy7rfz3qkxt7rohfd2no47x4qatt@mpiqy5ykxmyc>
 <CAJgzZorp+Ah+gAqj_O_9-AaCL1UMP_JM8X_Ct5nA-23MRDO+vA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wkpr5uhzq3jenwu5"
Content-Disposition: inline
In-Reply-To: <CAJgzZorp+Ah+gAqj_O_9-AaCL1UMP_JM8X_Ct5nA-23MRDO+vA@mail.gmail.com>


--wkpr5uhzq3jenwu5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
 <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
 <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>
 <nihkb5t42ntlv277n4xiqzpy7rfz3qkxt7rohfd2no47x4qatt@mpiqy5ykxmyc>
 <CAJgzZorp+Ah+gAqj_O_9-AaCL1UMP_JM8X_Ct5nA-23MRDO+vA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZorp+Ah+gAqj_O_9-AaCL1UMP_JM8X_Ct5nA-23MRDO+vA@mail.gmail.com>

On Mon, Dec 16, 2024 at 09:58:36AM GMT, enh wrote:
> > >  .TP
> > >  .B EPERM
> > >  The effective UID does not match the owner of the file,
> > > @@ -310,12 +325,22 @@ .SS C library/kernel differences
> > >  have a
> > >  .I flags
> > >  argument.
> > > +.P
> > > +Linux 6.6 added the
> > > +.BR fchmodat2 ()
> > > +system call with the POSIX flags argument.
> >
> > This might be better in the HISTORY section.  What do you think?
> >
>=20
> i dunno ... this seems more like a linux/libc difference to me. a caller
> shouldn't need to know what actual system calls are happening? (that
> assumes glibc's workarounds aren't leaky, but given the existence of
> lchmod(2) there shouldn't be any reason for them to be? and even if they
> are, that _definitely_ feels like it belongs in "libc differences"!)

Makes sense.

> > >  .I pathname
> > >  is a relative pathname,
> > >  glibc constructs a pathname based on the symbolic link in
> > > @@ -324,7 +349,16 @@ .SS glibc notes
> > >  .I dirfd
> > >  argument.
> > >  .SH STANDARDS
> > > +.TP
> > > +.BR chmod ()
> > > +.TQ
> > > +.BR fchmod ()
> > > +.TQ
> > > +.BR fchmodat ()
> > >  POSIX.1-2008.
> > > +.TP
> > > +.BR lchmod ()
> > > +Linux.
> >
> > Ok.  Too bad that OpenBSD lacks it.  The other BSDs have it.  :/
> >
>=20
> yeah, and importantly macOS has it too ... but portable code should
> probably prefer fchmodat() anyway.

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--wkpr5uhzq3jenwu5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdgQQcACgkQnowa+77/
2zLhWw//d8Pm7y0mistJEfgu6v1i6pzN5ZKsEc2j+JakqWOQVnpDqpqmTgGXGb+f
80L1REQlrOw4qx05+YiCGoEv5OYIUEMZHL+iMiVY0lkF0JKE38lMoqmLEpdmkBGB
jBgdZy/o+3t0lxz1ADKGZELv0s1tLPH+uNs2RfDYuUe4I3+G269sg++600J+QusY
o5EpKak8sBVkgVJfn2/AKMHrYiwQCsvc1CqRUc1S1uqXvohAWEGqZXf2CYf24CmD
fwikgeNnEzOjmOReE/Uf29NmF1s9wQytgZSUzLSRDhCUf5MZ/LtXhAJJBEiHu7Hz
hMb5vIRCKeY3vFDzYl5FtmlvemPWAMMNC2cCMvMIY/LPsFdFJaVomnv1e+mkAzsM
ebIqecCUZ6QhwpZDNUhycmIQwQyIJWgIBdLkRscsS4BrVoXuQUm74OQ1z2dcGvFT
lOF7pfrEcH2zFMY247gnuIhk4lXC7d1UuH8j3IaUmgPddXM4sMS86ujwoKee5b0g
WuXJR6is7brQYaAcMmmHxfrDmW43p9AzPQk1rU1P9CsMHamvsFOeUvZyPexkMzeA
AUfnXsk7hbiauAAh5JFWnN41aQBk54hiToVmO1njNA5MAAr4fEk27+WNudMmtoYj
zUlCGhqnnLXswDl8CwBXW3L3rdybN0s+DqLCXWX5wD4KIYLMbdc=
=UbgX
-----END PGP SIGNATURE-----

--wkpr5uhzq3jenwu5--

