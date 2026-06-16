Return-Path: <linux-man+bounces-5657-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zLaRNqrJMWqJqAUAu9opvQ
	(envelope-from <linux-man+bounces-5657-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2026 00:09:46 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B75695890
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2026 00:09:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V97N9cjc;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5657-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5657-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE7CA3016663
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 22:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5989A3AB460;
	Tue, 16 Jun 2026 22:09:43 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F75E3A7186
	for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 22:09:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781647783; cv=none; b=NtumDoviJpHeSBtSikqMNEZnn8S4/e0oyF2maFApCvYemt61E1yBHit2paIK6MjKlNX0qTRKqTlTGBfIoZO2ziMXCK9Lrg2FEXhDo8A6L+NLlrdVTJkX0IFOKeEFNSHNdRgqDGLpmPQ8XlVF4mvDHMbySq+7u8cHSUpkKSdKFEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781647783; c=relaxed/simple;
	bh=HD93vC5GUSjBPvwkbLAfkCcpqogXKTDVtXeHijoQENw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pwGsPJhUnIC9wGKHA04OiLvpE0bHDAzkCU3vRLZDTWUxrFvDrYA3rha/pV3/l5DM1g0xkWj/NTCohO41b//62PVibtv/sbWokWn6/6tO63KKwXwj9Mt5UeMAFAfGq5sTfD2IEjaT8iAajD8NVvswywAvZefg7ydoatoD+BRGHVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V97N9cjc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D159B1F000E9;
	Tue, 16 Jun 2026 22:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781647781;
	bh=Ft2gXqosUq+mjpoBM632V0zqSraNHqN3W2FI0zraMas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V97N9cjcR9sQyA50CB3MEuHv1iWLC0k9vxTOnKuFcdDRVG9PEB795anDg1oJzAL+g
	 UoV3DCOxr29fgrdS6YXjD7zO6jlShSAUySKsMKI5Alrw/C8VVRDenxOsUVKWqhVegb
	 xDVZNv6Y/vN8gbRikccKV29LDGbIOCIL4u6FB85KRT2zC5qu//fkoiw0M1LOvtyt0l
	 ufYP14majmM8nac+3AMhADR6tudiCG9BD5RgFINSjQrmylbC07n0wOInEnTSDY39rv
	 VCcpYC8L0z+y4vB1nWVuw+PCEUjQ3DDL4vwdrl0XIKSx+v34sswOV4z58KXjTQP0bb
	 I+I7DxDz2t18g==
Date: Wed, 17 Jun 2026 00:09:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
Message-ID: <ajHIbvWy9iCilUCX@devuan>
References: <ai1DVieT3gTr4J5S@devuan>
 <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com>
 <ajBpIbEH_7KkJrld@devuan>
 <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
 <ajG7DCFNQPXb11nr@devuan>
 <a514153e-7842-0cfa-92c9-a4137c58b153@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="op66v3eztbmgsmcn"
Content-Disposition: inline
In-Reply-To: <a514153e-7842-0cfa-92c9-a4137c58b153@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5657-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:josmyers@redhat.com,m:libc-alpha@sourceware.org,m:gcc@gcc.gnu.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,devuan:mid,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 80B75695890


--op66v3eztbmgsmcn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
Message-ID: <ajHIbvWy9iCilUCX@devuan>
References: <ai1DVieT3gTr4J5S@devuan>
 <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com>
 <ajBpIbEH_7KkJrld@devuan>
 <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
 <ajG7DCFNQPXb11nr@devuan>
 <a514153e-7842-0cfa-92c9-a4137c58b153@redhat.com>
MIME-Version: 1.0
In-Reply-To: <a514153e-7842-0cfa-92c9-a4137c58b153@redhat.com>

Hi Joseph,

On 2026-06-16T21:52:57+0000, Joseph Myers wrote:
> On Tue, 16 Jun 2026, Alejandro Colomar via Gcc wrote:
>=20
> > If one uses a modern GCC with an old glibc (which doesn't know C23),
> > then, using -std=3Dc23 will be problematic: the compiler will enable C23
> > language mode, but the library will entirely and silently ignore
> > _ISOC23_SOURCE, because it doesn't know about it, thus falling back to
> > C89 mode (I guess), and thus will for example enable things like
> > gets(3).
>=20
> Since the relevant checks in features.h are based on __STDC_VERSION__ >=
=20
> something or __STDC_VERSION__ >=3D something,

Ahh, yup, it has || for either _ISOCxx_SOURCE or __STDC_VERSION__.  That
makes sense.

> it will fall back to the most=20
> recent C standard version known by that glibc version, which is probably=
=20
> what you want.

Hmmm, it is.  Then it's all fine.  Thanks!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--op66v3eztbmgsmcn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoxyaAACgkQ64mZXMKQ
wqkHrg/9Ep2vkbS1z27rXKvEIncJS8qAiLhYb1XZZjud6N5MR/hCfb7+9B+AOQxN
vzw7vSzPDvHYJjb9K69OB8X6/bn+3dn97MopJYFnMx8vvkpo44S24gkqk2F93a+r
CgHs5+8zExFPvxWsXKxKVevLdcui6pLj/JrbY1T9uxE84Z6U2EerfpiXgjoj5dRd
6EW4bIMBps4Rc+XnTJZYgq4qVNDZUOrFhiLj1GEFIe/fO8zG+XayWbbdvrUsCNiV
bg4UQITNYud4LT7F3WldAm9cfktWhID4cllT2mUzBW8xTQVP3gkTTTlwVfCBoGS1
cJH7Hf7T2QUxuNownqtvx7HjL5VZXrW2r7PkQo4eHRgp2KlszIx1FAtaEDSImi2W
CtXYEoKi3ynlKQXGpn0yMqoIP2GOFlnZFjgPzI9cQMwCfvdt2eisoXeKRgkwgEXJ
y7vMTkqgiCHm55Ase2BKBvFyve7XZJ38zQadWfLVze0PGDv6nKkwRWofRTgToHmM
KNe+YF3Juz8fG6RqKZV98R9zlT6p5Z8pmPxuYndJVUa4Xt3UUaSDPnowA+NlqrRW
DfratKzfkapffcqSTHB1tFK9LkQELjLRzt4ElTFc4M/ZfRf0c5YM1NFmH3s0c1K3
PEeOoB1PL7bjTXJ8dKNJqNzTJLd5uaBJ4EEUQTw2ViFa3lWUAQg=
=WQp5
-----END PGP SIGNATURE-----

--op66v3eztbmgsmcn--

