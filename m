Return-Path: <linux-man+bounces-2027-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0269D0480
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E9D728253E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902B2219FF;
	Sun, 17 Nov 2024 15:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="mmrooKE0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3831DA61D
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731857570; cv=none; b=uQQn4IFg7i7o+b808RRko3GeFrk2hslkLaRybChrwVOxoIqTMFr62WuHQJ4ezZABT4IqZ5B4aeS2XT7SyyVu8uI+4ZlkGO7nEMXVVyvXLVZ5eu1Sze9XlxTUhnLl6uO37S2IPIZkyNgwZ/p9ym4OW2rBrtOx8VshkSmuVrMkY6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731857570; c=relaxed/simple;
	bh=FuyQmYg3JZheRXKj9p9jFYn0haLOz7XLF/eeFa+u3Ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=khsMGmMLhJ4NacqCOIqPLUvtItnGF2BVVnkGqlN7hPd1SAmQDZsGR0trDd6ijTDMC9Wa4w4CNpeJ4GhyPOXg6KlCgGvtN8oR0jC6F3UDkBz+9aPOgUl+Vd4/Gx4DFUU9TME5iThFd17LDq4iwD623L7zIybOEcV5lciZFYKGFBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=mmrooKE0; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731857567;
	bh=7CUG87a1rIxAfhMRasLgeSuNWLRJ1h/20UG+z06uELA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mmrooKE0FbeMLi8nPlKhNpkcPpk8a1d5v+ifEVbcVP6B7bsy5oJFdaa7m5aiYFQo/
	 CN2AyY6PNag8kYCZ08e0nV870s6aU+5wO8OJfEVf3+Kb4pExb73njVzJ/BaHQI7JmK
	 dhkMbt05voUSBl6FSHb4S09Inwegn/y50H+ol6p4mAAlZ4cq4WffxxMTroFLHE0036
	 oSNGb2YklQ7PzBp4SeghIo1Ah0tNiOBBQh7lEDf+S9pnbnFFBS4ETSCdM+6OHyqeW5
	 h7noMiI+SzBDnWidUzat37mj50OH+YRi/J0TPCkC4XkMyAG+fAdxtJCBiC2T8ASQHQ
	 VwO398hiTijKQ==
Original-Subject: Re: Issue in man page remquo.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020051.00000000673A0C9E.003FF510; Sun, 17 Nov 2024 15:32:46 +0000
Date: Sun, 17 Nov 2024 15:32:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <ZzoMnn2K72Kz0omQ@meinfjell.helgefjelltest.de>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
 <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
 <qi3zvrpfp3kjva7x7t2nx3pib4mihjdgmm3oxc3o5jnpke6vwg@as3wwgq34myp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4191504-1731857566-0001-2"
Content-Disposition: inline
In-Reply-To: <qi3zvrpfp3kjva7x7t2nx3pib4mihjdgmm3oxc3o5jnpke6vwg@as3wwgq34myp>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4191504-1731857566-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 04:10:11PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 03:04:03PM GMT, Helge Kreutzmann wrote:
> > Am Sun, Nov 17, 2024 at 03:37:34PM +0100 schrieb Alejandro Colomar:
> > > On Sun, Nov 17, 2024 at 12:34:32PM GMT, Helge Kreutzmann wrote:
> > > > Am Sun, Nov 17, 2024 at 12:38:24PM +0100 schrieb Alejandro Colomar:
> > > > > On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > > > > > Without further ado, the following was found:
> > > > > >=20
> > > > > > Issue:    Why is this no-wrap?
> > > > >=20
> > > > > Are you asking about the behavior of the function?
> > > > > >=20
> > > > > > "Domain error: I<x> is an infinity or I<y> is 0, and the other =
argument is not a NaN"
> > > >=20
> > > > No, it is about the formatting. Normally, all paragraphs are wrapped
> > > > as needd, but this paragraph has word wrapping hard coded explicitl=
y,
> > > > which you usually do in code blocks or when long lines should not be
> > > > automatically wrapped due to some visual layout.
> > >=20
> > > In the upstream (English, man(7)) page, I don't see any hard breaks.
> > > Maybe it's an issue with the intermediate format that you use for
> > > translation?
> >=20
> > Strange, both in the original file as well as in the translated
> > output, so something in the toolchain, indeed.
>=20
> Please show me the hard breaks in those files.  Maybe I can find out
> why it happens.

Well, I don't know what I should show you.

In the original file:
=2ETP
Domain error: \fIx\fP is an infinity or \fIy\fP is 0, \
and the other argument is not a NaN

In the po format:
#. type: TP
#: archlinux debian-bookworm debian-unstable fedora-41 fedora-rawhide
#: mageia-cauldron opensuse-leap-16-0 opensuse-tumbleweed
#, no-wrap
msgid "Domain error: I<x> is an infinity or I<y> is 0, and the other argume=
nt is not a NaN"
msgstr "Dom=C3=A4nenfehler: I<x> ist eine Unendlichkeit oder I<y> ist 0 und=
 das andere Argument ist keine NaN."

-- Notice the ", no-wrap"

When I build e.g. the German version, this becomes:
=2ETP
Dom=C3=A4nenfehler: \fIx\fP ist eine Unendlichkeit oder \fIy\fP ist 0 und d=
as andere Argument ist keine NaN.

If you notice anything, great. But otherwise I suggest to simply
ignore this for now (I don't have the ressources to dig into po4a for
this, there are for more serious bugs there).

Greetings & thanks for your fast responses and help.

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4191504-1731857566-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6DJgACgkQQbqlJmgq
5nD5hQ//WFGhBGYl1cugWP/Qa8oHAf+Px5uyGbBubf7xPy/OIjNLMq7HpRdIO+JW
GFdDJg9dbSqW7SJqks7wTA7B3wFPTd20/zH97EmrNCWR68Mhkk1/F/HZbpguOACT
jQdt9k9lIQYMk5r0Cgw4cElaVDsnXcLwcVpir9uMzvmZZWOH6Sy6af2qt4Pgp6Sd
C0tovQ2iK8u6JC30gb3G0jIbRYG/cMOB+iPjX57nCHlEFoYT/In/ghT3Eu7O8uvt
AUSYPGJzVQoqClMkdEUp4XSPAsQDOkLbWPH8U3z6BXm2tpQcyLdNo8pH9HVYRi3A
7/1dWp9ViAMPV8VppS5BfMU1+1Xp3kK0uHqW5xE80M0uWFC1V4JBIUESHKFa43nF
PZcllhHUenJhEgc3d4P6+XGPVi59Ex3JPUWh/VuO9Ib9TCIM1iaJRz13EWl6bA8t
KK+T8jw5WxDRjqd6sJqV6IESuioPUv+5EQHCdgHmNf5+6xpE2A9yj2pSaXE6PUPr
sqKpBEUuR5yO7No8f+OcQp6qMpsTanOQbC7+j4ka0IFVe56ytJYatEjn22QufgBj
Gb0nQpPIrAEgtvmfBxiEuFQxRpreuZ+Y9CyotVYJ7a8wQK27UmEFN0r9qympWLKW
f44XVx44sB0li5bWVQuwZO6JmyWahkXWq4bCEK2XCgYujOdrPa4=
=bS2Q
-----END PGP SIGNATURE-----

--=_meinfjell-4191504-1731857566-0001-2--

