Return-Path: <linux-man+bounces-5056-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KctYLX/KiGmrwAQAu9opvQ
	(envelope-from <linux-man+bounces-5056-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 18:40:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D610995B
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 18:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 282F73005642
	for <lists+linux-man@lfdr.de>; Sun,  8 Feb 2026 17:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADDB2DA76C;
	Sun,  8 Feb 2026 17:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sVxqCl6e"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF4B2D7394
	for <linux-man@vger.kernel.org>; Sun,  8 Feb 2026 17:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770572411; cv=none; b=VzJSdqr9BmftfDLfDNGRTF0yucdmPFVy+gPSCv7taTYVVIKbFAuJ3m/oPS0/JJ0QoOPkNgzeZ4qQZELT39ulBZMov6TBd/5ySEMO2mO6iUyT4918TBi+Wz29sv98V4mXF/4i1pNOhItuJtGEX4XTW48ujOmK3+6jkjgEGIvpiEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770572411; c=relaxed/simple;
	bh=R258R2JZSuSu5ChsYsPiJjEKXfFDzuMwzM8BNAu1L+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ORw5L5BwYQ5tSJegEqFi1KMz3h0VKIyelV/zF8cVTs72UVjmy5cTxQNJRETJbdWkeewstY+tRgqUM94CGukK1AZHD4o/1qLm8m44HKqQ496L3pLBNv8Ct8NGw0PkrQwvyNK2iNSKkCifnOqoRayRg4nv7wJg/+5EshBY0rmFptM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sVxqCl6e; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1770572094;
	bh=yXwWq4lnIJr57uXt4MlN+nYX45qUAdnruLK6NoojXl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=sVxqCl6eNkJmIglc/qxQTjNziyU4zvqyAuYOa4cJKHDB4cQanJiwlSb2RTo4w1W+D
	 3O8IfsP8CYu8Gf99YQT2jljkDYkwgPfBB7z33uSih4gk+tUbyrS6/76/A/uwRobmqY
	 3QiXHaTXPb7HverzlOsARHzQGHzSmMrVwKAt/Ei6PI3IPFBn01DaUO/vEblH2ww5g8
	 4zoH8azNLB6TfYeNWXJx2MzlMasYBNz3vRDao06ZfLYoCn4seMIuZkEZ7+SubjzHa4
	 9C084UtH1nR8MzZUmUSj1/9nzYPc2g9ZK2W/oPiCFnpyTRiusZwTgq8B5M5X5HQnpB
	 8YinvlWZLcPcw==
Original-Subject: Re: Issue in man page  sigaction.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  libc-alpha@sourceware.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002004C.000000006988C93E.0030A112; Sun, 08 Feb 2026 17:34:54 +0000
Date: Sun, 8 Feb 2026 17:34:54 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  libc-alpha@sourceware.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
 <aU09001I8wO6AySD@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3186962-1770572094-0001-2"
Content-Disposition: inline
In-Reply-To: <aU09001I8wO6AySD@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[helgefjell.de:s=selector.helgefjell];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[helgefjell.de];
	TAGGED_FROM(0.00)[bounces-5056-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[helgefjell.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debian@helgefjell.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,sourceware.org];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 242D610995B
X-Rspamd-Action: no action

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3186962-1770572094-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Thu, Dec 25, 2025 at 02:38:07PM +0100 schrieb Alejandro Colomar:
> > Subject: Re: Issue in man page  sigaction.2
>=20
> I believe the report is about sprof.2.

No, probably sprof.1.

I rerun the example programm in sprof(1), and it works in the sense,
that no error is reported. However, there is also no sensible output
either, just the headers.

But I don't know (I'm not a programmer) if this is a problem or just a
normal output.

> On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:     Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: A=
ssertion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' faile=
d!
>=20
> This has been reported in
> <https://lore.kernel.org/linux-man/20251020093148.vve2nui3xtym4z6m@jwilk.=
net/>
> and previously in
> <https://lore.kernel.org/linux-man/ZznJf0DLo7CVHddl@meinfjell.helgefjellt=
est.de/>
>=20
> Please go to the thread in
> <https://lore.kernel.org/linux-man/87mshxxyol.fsf@oldenburg.str.redhat.co=
m/>
> where glibc maintainers are expecting feedback from you (or whoever
> reported to you).

I was not aware that there was an open question directed to me, sorry.
I'm not sure how to properly answer that from this e-mail, I hope it
is sufficient that I simply CC libc-alpha@sourceware.org?

> > "$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\n"
> > "Flat profile:\n"
> > "\\&\n"
> > "Each sample counts as 0.01 seconds.\n"
> > "  %   cumulative   self              self     total\n"
> > " time   seconds   seconds    calls  us/call  us/call  name\n"
> > " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> > " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> > "  0.00      0.10     0.00        1     0.00           x1\n"
> > "  0.00      0.10     0.00        1     0.00           x2\n"

This looks like the following with me (Debian stable):

helge@twentytwo:/tmp$ sprof -p libdemo.so.1
$LD_PROFILE_OUTPUT/libdemo.so.1.profile
Flat profile:

Each sample counts as 0,01 seconds.
  %   cumulative   self              self     total
   time   seconds   seconds    calls  us/call  us/call  name

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3186962-1770572094-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmmIyTcACgkQQbqlJmgq
5nDtshAAgYFsc/goA+9PbRywLLAE32C8K45iETTuI3Ih8wVPcw2pZvd7+QV6R2Ee
up12pCWpfwlsTyx1lK80dZwhXURDqaIoyEGSDrLvbBA4aITp3UV8M5Wo4wv2vbIP
uvtjIp4g25M2BoaDsrv81CHKeCsDOZES/yBGs4DEVesgRvP/gzktu97FRtXdJUV3
8Y5WdMGLBzzzK4MtUSOFu9xu8YnI3W+BWOReuLu1fpF5RThgqmH5eUMUYCybv1uZ
eVp5lyCE5fBNamftDWY3SJCY/gSaLZU/+MUTwG823sqwJmiaMArUFlfHcQ8h/Omb
Fi1WbnVL4AUptV1D2h5khXv2gywuq9YHbmvlZPqZ83Ma7HOMeSjMqxBVMJmnM/mG
k43LH23fDtBicnDIXkvx1In1q4Zrd4R9ENPRZ+kg1+ZLo1XQQX2RsgwOpfvxHvpQ
ytmFRfbWGasSIxUFQqiQjugepkZ+ejqzPmPJ1hc0ye/sL4brxSLcA6puu+Xpu0Af
ythCCyckoEOcCvvS8TY0aXH2799w1xfY/xKCe7wHhSUs9PVi85x1EOYxhtiGMZYX
9a7EeoipscRwrxkb0xpGcLQWK1pPB2c2X/GtyHcNtS8OiaibZ58/Oy+4AJ37D3xw
asHWfMR/gaYZ7XfoILOAS/8KcVV9NaqzoWIPC0l6/QfgVy5rQUY=
=rrb+
-----END PGP SIGNATURE-----

--=_meinfjell-3186962-1770572094-0001-2--

