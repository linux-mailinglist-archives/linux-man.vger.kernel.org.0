Return-Path: <linux-man+bounces-2772-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0393CA88CF4
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 22:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A4A81747C9
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 20:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0071D5CDD;
	Mon, 14 Apr 2025 20:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2kpukO/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BB51C1F12
	for <linux-man@vger.kernel.org>; Mon, 14 Apr 2025 20:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744662022; cv=none; b=YoycAA2t75m5Mx3/KH22j3jzpmHtLNOCU0srwb6EKg1wYhg1yT9bujhvdKQ/JGA30SloxhHYXW6dLDcqC6Rv5/PC3tVdqIk4FpuzrJSIN2/RmchvkYxdktNTza0TdTfMu0kyqWkDKae+nDR0YhNln+5JCdpRvhq+qJ26K9CaLw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744662022; c=relaxed/simple;
	bh=dE3b0pPdVbpF0/SQZC9n3EP+ZJPi/o5Yme3yyZYKH5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JmKWd3IEjrccjOVJDE5dLfDprQBECHjYRzHj9v1fCWthI0XpkaOMTtB2XgQPNJx+65YqtJ/TD/nZMxMKr9cFZjIJBximfiYx/2iJB39o+wIMuikCzHnCx8E7xsnnESVsnQmAj49bn1jsfLE0vIBdHTe3BRtFvvPWurukxxh5HeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2kpukO/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA68CC4CEE5;
	Mon, 14 Apr 2025 20:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744662021;
	bh=dE3b0pPdVbpF0/SQZC9n3EP+ZJPi/o5Yme3yyZYKH5I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K2kpukO/NseLSEU4/y5KoBfq5HJDxGL+uMQCDkDzytijGFbZ8BGONhUI28lP8Ttlc
	 mbdXs5xukZQFcphRdKNzA2TxIn0IJGnrLMcFjwJXtw+82d6DTLhiM+Cy2EVAPX2D9F
	 1bdt2nsOkFw4IWZ2rCx5vgu2NFDFdR5DkpR6wB15zJ/v5Gy71UlfyuncECiY+DGd3x
	 ny6BKZypMIC0O/OrYF+FcqugSTquEzswwGcUtVPhqlv4RYo7HKJVd1VZZs/SaTnO/O
	 cLBI712A9q/VYeibT/JN1x/QqC8ylZDV1rNz0dGtzDXCngWVGQZ2FlTwmoONVdgIRS
	 grVFfWa6pqZaw==
Date: Mon, 14 Apr 2025 22:20:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
Subject: Re: fchown(3posix) changes in Issue 8
Message-ID: <fjedxywjjgxknliruus3yeet4altmoaxsoa3i5wkbxzr22pu6d@5x5gnlzwxigc>
References: <oohdlh2a5ab4z3exlwzdt64p43jr4h3q7envtpu22k76is3zix@rnct3c3mktor>
 <CAMdZqKHh60oVCbZWvftzc7mCc6_candr8e7T7Vnaq9G2z=WrYg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3qehscpfw67v2gkg"
Content-Disposition: inline
In-Reply-To: <CAMdZqKHh60oVCbZWvftzc7mCc6_candr8e7T7Vnaq9G2z=WrYg@mail.gmail.com>


--3qehscpfw67v2gkg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
Subject: Re: fchown(3posix) changes in Issue 8
References: <oohdlh2a5ab4z3exlwzdt64p43jr4h3q7envtpu22k76is3zix@rnct3c3mktor>
 <CAMdZqKHh60oVCbZWvftzc7mCc6_candr8e7T7Vnaq9G2z=WrYg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKHh60oVCbZWvftzc7mCc6_candr8e7T7Vnaq9G2z=WrYg@mail.gmail.com>

Hi Mark,

On Mon, Apr 14, 2025 at 12:50:41PM -0700, Mark Harris wrote:
> Alejandro Colomar <alx@kernel.org> wrote:
> >
> > Hi Eric,
> >
> > I'm updating the manual pages' STANDARDS sections for POSIX.1-2024, and
> > I noticed something weird in POSIX's fchown() specification.
> >
> > <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fchown.html>
> >
> > The CHANGE HISTORY section says Issue 8 has applied Austin Group Defect
> > 1330, but that defect doesn't seem to have anything to do with fchown(),
> > and by visually comparing the specification between Issue 7 and 8 they
> > seem identical.  Am I missing anything, or was that changelog entry a
> > copy-paste mistake from POSIX?
>=20
> The difference is in the description of the EINVAL error.  The text
> "or an fattach()-ed STREAM" was removed, because STREAMS was removed
> from POSIX.

Ahh, thanks!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--3qehscpfw67v2gkg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf9bgAACgkQ64mZXMKQ
wqkAnQ/+O6ke2tX/Ndih/roZ5LMTyZgid61RhK0mrD63Mz/7ymIEy06CsysSPche
LYk+f4cBAOV+HHE92z3Vngrl+tWsaI4KFbCVQrSNqMwxEXQ/wPFoPw6kRvE3MYBi
hBmgd/zgmUkQ35LAsQOK5Vic2aS2+e1ZQ4C8Y1igJRN+5Uu3ieoZgjBGjgh7YKPa
jJMTsNptf1KrNtQGy0ScS4J4x1MJXlBf+OwMPGB0xsGmilXYiZ9SQHTWi2cmpr52
vmBSYsuB9DgvRAB0AA6zjIFtdyvf26DMld9hvLfGfz7d3z0WQxHH7m9ahOe9NOYG
GUDcsW8BBALhF8Lgrpp9velW6/oDXOnSomln/Kw367tddq3ZiFGBIGqnOCmI59Zo
1z01QBLedCnUBPxh2YZ5rLKgWt5Oh8LURHDN9LsEOswW93r6Rb5kYcint+LVNZgO
BP7SLt+mT0TMalX+F5Tr2A5Ag8iBVibPoPcHNwsp5ZUjemZJF/CI1LsGR2tBlm+r
6pvckPp1RrPSWS/pUP6zSBtqHYC0zBD4ck2vj40r4S4fdGJOfLxnBD5tPcMcsauH
8ZGdfdcH8nL6A+MLITto2ZShPGnY6Y+1jXTi38cFqO1kda3i661edqhF4/BjADmO
Wfr+fRhopdeAzd3AOi+QFUSeWGGjborQwWNxn3nsEGpce5eUbz4=
=qICe
-----END PGP SIGNATURE-----

--3qehscpfw67v2gkg--

