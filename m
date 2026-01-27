Return-Path: <linux-man+bounces-4969-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3z7qKi02eWnwvwEAu9opvQ
	(envelope-from <linux-man+bounces-4969-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 23:03:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B179AE30
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 23:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8589F300D46C
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 22:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197C0275AE8;
	Tue, 27 Jan 2026 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siGCTSuu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A7021B185
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 22:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769551402; cv=none; b=OLoXuPu699CKMlwu9J0YjrbeDhQBE6a4Nmevq8kg1YFV0KjuOZofaVGzmvTGH9qHELNqMUe8Xgjx5q/MBHfy18n/m9Tj9QiOwhgSnQoHCzfsXlXL7BRNO4sXvSkRBmC7R3ZBs/YMJIHJ8sDn5wiliUJH2RYpak8uBYcF2CJaVf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769551402; c=relaxed/simple;
	bh=qZTb4DqseaQKLwyxwFZ+IQ58u+3gDyhb6ahBrm//UHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZlHVsSrbo3ILtG7A+TglZeFrHuSaCqmY7pG/4/jlkt6pSsJK/X62OehgwEv6E7w36r5xP3vO0I7/IU3dzrjLNqoucFF9kjd8apLFjoBIFhtEdBW9ghJ2G4Eq3QKrmGwdU19i0EOdXB8MDWc/sNGNkjd1U7mf1UfK8+tUrR9daLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siGCTSuu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB9F9C116C6;
	Tue, 27 Jan 2026 22:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769551402;
	bh=qZTb4DqseaQKLwyxwFZ+IQ58u+3gDyhb6ahBrm//UHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=siGCTSuuGphSD9h+FAo42ahaBhdNKh6jHOAWgDIz6c1Op+B0f1Hs12l6NBBGdUEng
	 WmkL4CBEjVL43DXIQy0ZnuLFLukkNH8MYYRVw5dIjP8REn37wF7dc2vLSFAuNJVpVF
	 l2dttkBJGutkYcqmoN2cy97TpU+eF8JYDql/6a8sFmqE2vbidYfQ/P7CU4OuhWobTs
	 FfLD9HlplMKUib8mA82W+AEpbi9ogkGqM7pKu7Q2BvyRbTQsL2wUw42oGBfpHqwAGm
	 FPykiWxPM0Ax1E+IPuIsN+kpt7s6lQm7D6sta5ELwPHevj7awHGqKoLncRFBowrImP
	 n66QwAf9XY1SA==
Date: Tue, 27 Jan 2026 23:03:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document MAP_GROWSDOWN return val
Message-ID: <aXk13qiCiMyzqWu1@devuan>
References: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ihx2675ksamx2aj2"
Content-Disposition: inline
In-Reply-To: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-4969-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dartmouth.edu:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 01B179AE30
X-Rspamd-Action: no action


--ihx2675ksamx2aj2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document MAP_GROWSDOWN return val
Message-ID: <aXk13qiCiMyzqWu1@devuan>
References: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

On 2026-01-27T09:25:45-0500, Ben Kallus wrote:
> Previously, the man page stated that the MAP_GROWSDOWN flag causes the
> kernel to return an address one page lower than the mapping created.
> This is not true; the kernel returns the base address of the mapping
> created. This can be confirmed by inspecting /proc/self/maps after
> making a gd mapping, and comparing it to the returned value from mmap.
>=20
> Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
> ---
>  man/man2/mmap.2 | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index 093b0caf1..9bfa88a65 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -274,8 +274,6 @@ should check the returned address against the request=
ed address.
>  This flag is used for stacks.
>  It indicates to the kernel virtual memory system that the mapping
>  should extend downward in memory.
> -The return address is one page lower than the memory area that is
> -actually created in the process's virtual address space.
>  Touching an address in the "guard" page below the mapping will cause

The patch only removes code.  Is this accidental or intended?  I think
this does not match the commit subject (which BTW has a cut word?)


Have a lovely day!
Alex

>  the mapping to grow by a page.
>  This growth can be repeated until the mapping grows to within a
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--ihx2675ksamx2aj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml5NiEACgkQ64mZXMKQ
wqnpxg/8DgvXx2fE/Ul6unZt/1regFzlFagb/nDS4ShiXMkb3A5OiApsk6xQJxuu
8IgP9qGxM57YgLkWeRq7ieXJyN8dm0uiLEtllDCciRTzRqMS02Bt5AVPGhhUQ2l3
3DNufCPfQNYYJDwQZ7oh4bXGzy/JLVXgmkOx7gZCZsLNotDqi4zf+kuR3hvvt9lr
LR1NjsKm3F4VPmH2Q9Ho265vNRmmbL1StxLDN3WK09p2PCNjzELCafBst9p2tFvY
Yv96eikVK+cabG9XcrYiBeWqfYTCidXrkTOb3Lp0+7HevGCwVeGHd0m5FRMdXyAC
K4hcJuzHqRvBZkEcHGtkgoghdQzzMkqDLDxZDPR2R4239S5YzlIpjcxi5OxLmawI
vo3wHOJ9vUNnQZGRwUF3OgUD2kEuxwZnP4Djc6S8MgyPI8CvXe0BzHorWrWB+trz
Ea378+xslIEw/UeZVxYT8XxHGo5hUa647pGXkphptIf17wRpjWsdcjmQNQoBAw5B
vS/FWNbVg8b+EurwKwi3bFYvBqHRmQ29xdiXei0kzEctya7OJP0dSIR4igJcaNRU
sUgms0dayp6EticjWN8gy13BnbXZy6zz/7Yz+nmtbCmkgutkQBvuONvgS1B8Ao7o
NrJwtaVEmVnDVKt4soQZ9Xrn2mkgWbf3U/pgy0mQxcDOoY6Xl90=
=gtyT
-----END PGP SIGNATURE-----

--ihx2675ksamx2aj2--

