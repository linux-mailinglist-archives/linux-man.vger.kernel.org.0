Return-Path: <linux-man+bounces-5647-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R6CTHTy9IGpv7QAAu9opvQ
	(envelope-from <linux-man+bounces-5647-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 04 Jun 2026 01:48:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD87863BE7E
	for <lists+linux-man@lfdr.de>; Thu, 04 Jun 2026 01:48:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Aq4aQsmr;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5647-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5647-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 632A4301CC61
	for <lists+linux-man@lfdr.de>; Wed,  3 Jun 2026 23:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B0B44CAE0;
	Wed,  3 Jun 2026 23:47:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D252DC334
	for <linux-man@vger.kernel.org>; Wed,  3 Jun 2026 23:47:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780530467; cv=none; b=B+Ud8zss3Dx20pp1dKCi0rkd+f5jtt9BmxhydNdp27P/LDuaZ1EYOcjgNt0TvmC9RyDEjswVPgh6bahcHKzYy9BiDjZuzfPYLih4Q5AhTaRCRbuK73iVxY4Muzf7UoF+EsDCRDInEf7jDGfYo76UWMkekLViEQIpVNSGub7N/dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780530467; c=relaxed/simple;
	bh=52MImYFJ4tcBpR+0tO2L2JNKwCCJMK2ZzM3wrPX0sZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rq79NJLPSK4jP7BP7Svd/iP7PSYcHKYCMmDdcVtSX/BhItrUYESbKmcn23OTVolVQDNRakXdX+paV1w/vI86NfBRTrkhXnRWkJ1MT2M5in2b1Qnsump++o5W3SpziQlDlBzC5sdRpBZiBINK6gresqzr/b+XJgq1LH1VjFr4024=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq4aQsmr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 909B11F00893;
	Wed,  3 Jun 2026 23:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780530466;
	bh=Al31tQmHYfz89s73gvBkOqI4OUWFQr3OxgdCFp9OgVY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Aq4aQsmr+K+w73eDfeM7wShWS/mWTFdXpk6OD1iL7CP8L2bqoB80O8YcrG2eYLxJJ
	 N4G92lfyRPE/DM+oDYwHY+QUiC3dRKh88ESpMMdSwM8f0HZSBP50ddM936nkJqAafg
	 fs7V+MJszBuXGYYF79PF7Jp9ICmryfBivgSRAdWVA6EHyENizRrbL99e1fctePOsNI
	 7tlkIZ+SaDzP+QsGPuPK/2Dpetd200n9dBy14+OEDly/228k8OmSyeQlD6t2mNiejF
	 xhfK7N2lzPvpwv6Z3Fb91nkXfGMWhSas9IuQh3CdiOfUc4B1DMMph9C8xpRs8tHNKg
	 tZ7iKFf2SZR5w==
Date: Thu, 4 Jun 2026 01:47:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 6/6] ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT
 and UFFDIO_SET_MODE
Message-ID: <aiC9Be5oxT8u1Z6E@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-7-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uqu5y4nffyhbxest"
Content-Disposition: inline
In-Reply-To: <20260526134149.2831720-7-kirill@shutemov.name>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5647-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:kirill@shutemov.name,m:linux-man@vger.kernel.org,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:rppt@kernel.org,m:peterx@redhat.com,m:david@kernel.org,m:kernel-team@meta.com,m:kas@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url,vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD87863BE7E


--uqu5y4nffyhbxest
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 6/6] ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT
 and UFFDIO_SET_MODE
Message-ID: <aiC9Be5oxT8u1Z6E@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-7-kirill@shutemov.name>
MIME-Version: 1.0
In-Reply-To: <20260526134149.2831720-7-kirill@shutemov.name>

Hi Kiryl,

On 2026-05-26T14:41:49+0100, Kiryl Shutsemau wrote:
> Add the two new ioctls introduced in Linux 7.2 to the list of
> operations supported on a userfaultfd file descriptor.
>=20
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Patch applied; thanks!  With this one, the full set is applied.


Cheers,
Alex

> ---
>  man/man2/ioctl_userfaultfd.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
> index 37553cd7a88f..fb57fe222979 100644
> --- a/man/man2/ioctl_userfaultfd.2
> +++ b/man/man2/ioctl_userfaultfd.2
> @@ -76,9 +76,13 @@ .SH DESCRIPTION
>  .TQ
>  .BR UFFDIO_WRITEPROTECT (2const)
>  .TQ
> +.BR UFFDIO_RWPROTECT (2const)
> +.TQ
>  .BR UFFDIO_CONTINUE (2const)
>  .TQ
>  .BR UFFDIO_POISON (2const)
> +.TQ
> +.BR UFFDIO_SET_MODE (2const)
>  .SH RETURN VALUE
>  On success,
>  0 is returned.
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--uqu5y4nffyhbxest
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmogvR4ACgkQ64mZXMKQ
wqltoA/9HRJXOZMX/HzwQlJs1dxt2rhggVSUfrPAJ65C9/n1lLb0klEtRnRVBxi3
ksrQxS+638kREO5SXq3UvMUskPiG3X3oTwHcbcjKWP5sPsbG4FEPNroxumqRhRbV
DbAS9X32GyXD3h8jGUDRbqpfBzekdkEZDXCU/rVCw8TdSeNbcRiPPT1HNgAMzbY4
Bi9+cpxGStzs4ll183G1zPEhVgHvaRJnc+lPCv4/ZD5PHx7B1MgCOlcurtx+8Ejs
KgONuyRR8YF/1o/U5FAiO3pOQ6cHE9VNkypgblxuNFA6MyrCp5FQPXiaRon9hKtm
i4FYJtJzQ+ugWC/zUPp+pdwbkFzApEKWBxGlK59Wq2R3qDL74RRxNAwIVoE+Wsxz
oP501St//vEGL+7OjniNjpcCBW80vIlelrZXvLSGuLc/ieJUNBAEEH9/DhqXeShe
B8zM9vQ0bpkxjzhd/FntEkAufizfMTiH83BsovRwhwlQopuIyQgrxxnw8uB3AJIB
OKtPXLdiuD2Jy9lSrcDPNrZmt+Mp10STVa5JFDKZpj1M7lrW8Wvol87KiFBiCDJb
8K3QMenwJK/mWCJwhixzUNQrJSa9AaXJFM+/ae9syHhQ6sGyfw/kYcu29gkkN/gb
sUeUaOpEs39QzN5syNq/qcC9tMKkleFQTlaof0t9+OUBQJnBCEk=
=3X8V
-----END PGP SIGNATURE-----

--uqu5y4nffyhbxest--

