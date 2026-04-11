Return-Path: <linux-man+bounces-5321-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEsfJddV2mmk0QgAu9opvQ
	(envelope-from <linux-man+bounces-5321-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 11 Apr 2026 16:08:23 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3673E3E040A
	for <lists+linux-man@lfdr.de>; Sat, 11 Apr 2026 16:08:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 555E53003366
	for <lists+linux-man@lfdr.de>; Sat, 11 Apr 2026 14:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327BE32E743;
	Sat, 11 Apr 2026 14:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPN+kmc4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E951932D0DC
	for <linux-man@vger.kernel.org>; Sat, 11 Apr 2026 14:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775916501; cv=none; b=YqUykWSAkhSBkUhTEP3J8h5MSP4Jnic1eFAlOouMj62zVanmP7EtMevjMo11Sypv42rPJZ2xSzULh0SxMAXJo0rtBKRoM6LULTklXsKYhIrBUpi4vD5G/HdACyaElay/dCZIGGAnyIxAMczFgELXSto7vSV5Ms5lBDBa8qGZmA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775916501; c=relaxed/simple;
	bh=+MMUqKE8747vLK5GXaE8aFSn1Fw4UDv162/Q+DSLYRY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=chOYjMcQGJ7El0bmupvM39nIvoKdo+kFyLk8mu4U+4rYQPNpU270aZG66Od1DPT3h92w/sBruXEpysTabKkfKwTHQjllLRl5+W78OT1aujXlUTKZH7l4L7/5oMp4UurqTx0DPtmXgmahrlLGZHA7G9z1Ix26EJTQQEgkCuR9YyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPN+kmc4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 752A0C4CEF7;
	Sat, 11 Apr 2026 14:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775916500;
	bh=+MMUqKE8747vLK5GXaE8aFSn1Fw4UDv162/Q+DSLYRY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dPN+kmc46s3vraLR+o3NZ6nAGSsB3hH/x5kAfvwNoB3PomOqDOyQADyhpML9dwniv
	 WyPe4LvIwbhP2BeKtoDOa5wwCLrN3WM6qrHtDxEEHtyXCnchNWS9Q7Mx0yD00JhuOf
	 8GMcbmRb6KjRA39fJKYVQagFxC4NtKYz6Pwt8tyYDbfsxYrH1EZHTpzHazrS18Csi9
	 abbQVjus1RrNTTd4fUW7T4SHWgKXzCuBWxZwJE9bdAVWxnMktPTC2fICXZdcmM/BE4
	 gGTnS3b6rqi/cvfF7gU11V+mW9PVx1dKDfH0i0wTyrizQnp2flL8zr369REZMmwsqy
	 1c0ZFFUvaYPZA==
Date: Sat, 11 Apr 2026 16:08:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing error values in ftruncate and fallocate man pages?
Message-ID: <adpUrD39ERZowDeD@debian>
References: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
 <adk2_jjPuyuQVbKI@debian>
 <56356afa-99c5-4845-830e-dcf441eb376e@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gke67q3mznxyv4jm"
Content-Disposition: inline
In-Reply-To: <56356afa-99c5-4845-830e-dcf441eb376e@mailbox.org>
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5321-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 3673E3E040A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--gke67q3mznxyv4jm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing error values in ftruncate and fallocate man pages?
Message-ID: <adpUrD39ERZowDeD@debian>
References: <e53daaf2-3658-4645-ba29-fa488bec5ed8@mailbox.org>
 <adk2_jjPuyuQVbKI@debian>
 <56356afa-99c5-4845-830e-dcf441eb376e@mailbox.org>
MIME-Version: 1.0
In-Reply-To: <56356afa-99c5-4845-830e-dcf441eb376e@mailbox.org>

Hi Zeno,

On 2026-04-10T21:12:02+0200, Zeno Endemann wrote:
> Alejandro Colomar wrote on 10.04.26 19:47:
> > Hi Zeno,
> >=20
> > On 2026-04-10T18:52:29+0200, Zeno Endemann wrote:
> > > Hello,
> > >=20
> > > I noticed that the man page for truncate(2) does not list the error c=
odes
> > > ENOSPC and EDQUOT, but I would think those should be potentially poss=
ible
> > > when actually expanding a file (may depend on file system?).
> > >=20
> > > Similarly, fallocate(2) also does not list EDQUOT (ENOSPC is there ho=
wever).
> > > Finally, posix_fallocate(3) has no EDQUOT as well, and EIO also seems=
 to be
> > > missing for this one.
> > >=20
> > > Or am I overlooking something?
> >=20
> > Sounds plausible.  If you could either perform some experiments or show
> > the relevant kernel sources that make it possible, we could know for
> > sure.  If you find out it's possible, would you mind sending a patch?
>=20
> I ran a quick test, on a FAT32 partition ftruncate can indeed return ENOS=
PC.

Thanks!  Would you send a patch?

> On most other file systems I suspect it will not, as most fs support files
> with unallocated space. Not sure there is a file system supporting quotas
> but not sparse files, I have never worked with quotas. Maybe someone else
> can pitch in there?
>=20
> As a side note, I think it would be preferable if the allowed error codes
> would be agreed upon / specified regardless of whether there is an in-ker=
nel
> file system which can currently actually return those,

What I'd like is to say "This system call may fail for the same reasons
as <this other>" (plus then a list of syscall-specific errors).  This
would simplify documentation of possible errors, while being much more
accurate.


Have a lovely day!
Alex

> since how things are
> implemented can change over time, and there is also FUSE - technically wi=
th
> my own FUSE file system I can make these functions return any arbitrary e=
rrno
> value, but a well-behaving FUSE implementation of course would restrict i=
tself
> to such a specified "contract". Though I suppose this is likely not the r=
ight
> place to discuss this further ;)
>=20
> Cheers,
>=20
>=20
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > >=20
> > > Thanks,
> > > Zeno Endemann
> > >=20
> > >=20
> >=20
>=20

--=20
<https://www.alejandro-colomar.es>

--gke67q3mznxyv4jm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnaVckACgkQ64mZXMKQ
wqnjRQ/9FPzonjs8pBaxUvRBlT03X2mc0FZHFDHQdxSqGg0HE5w1jHPoL6DqFi9i
iUzm03220vGlNoXMihW2tbQTRqH2XWaUYnBGyjIdQfQoLSALbepKmnxY5NPHKr6U
minV5vwP72BSM+VJByPT2MtgPtLDKOjLHsfavg69U5fVgA0s26fw0hpsKOcj3eMK
1goXf7aWPsUq4y8eF1YJbHOmc4S6UwZ8QRAXERGBjabm2II1lFyQX3gIUaqKnZ78
fBWJ5hVlbFOABKzcdthY0sWPIeXnxRQEXJVByh/ygw7tP4iJwLaq2JK7fmwFRNfY
YWtIAiOTdm9y39ZlV3eZROSqw8/0JIds+HSn9ArTEXcuDXK3ykbcwQv/ToMIzdW2
B1L/HIDz/EkgPp8/exfhLCHCVxfry0Vj1i400CXE5Lg5Z0dR7nNZp/4dqt32L6Wg
Z6Ook3r1eZ2iKPwy7lkA+YQC8hBGKrUIiJuQVbVXI6MKcvU+mvlO/S6VWbKLxz2X
sYkOJpuecelLMD493AuhVbK6fbfgfC8RzA6r9M5B5b2kwxbdlWPZBs6yPWdl4if+
hKr2AEZX132vmCVm1Ug62FphUpA6LgXzR6AMzlC/Qvl1CnAKj2GoDbREMAwx4Ya4
MucjmFJZ8vncKcD60AujrKsgBD7iqdeXLCF9gd4ttpNH007kRsM=
=sIKB
-----END PGP SIGNATURE-----

--gke67q3mznxyv4jm--

