Return-Path: <linux-man+bounces-5507-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CspMmBCBmqWhQIAu9opvQ
	(envelope-from <linux-man+bounces-5507-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:45:04 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C396547216
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E16C4300D14F
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 21:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77FB13CBE79;
	Thu, 14 May 2026 21:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ8o5/kv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDD93CD8B5
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 21:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778795102; cv=none; b=iIznPq+PNuRmT9WF+oWRPaYNfsmV5v200WAwG8HFqm0sSc0hz3PUn9yXsYzBkYiHsHQPhJktpMYJ+zsxL4KJtaA0iLz1odZzjTBsfQ/lIIXmHoIENC5K7NPohFv5KyO7dqGlPWCCU9Rj+Vm691FXZStGKp7+hwUAB62Uk7jblY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778795102; c=relaxed/simple;
	bh=7y/eCUoKhmlH32wuIyfhHjAlPNCmMOvLYts9U74vFOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jyGbcnsvef8v1ygrDiQz8Liix5GO55UdVypdJ6ahcx61YxYlJgro0e7QI08cBV5bCa3tuSdiNkBLyFif3HfjF7NhZzd1HGxSPGGTnrOFWb6FhVqmFG7HwiyBKCo2YGiT7qY+t7btICt6/1sj63oQ5ZPXfIowagdm7JORn+ZbX28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ8o5/kv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 557ACC2BCB3;
	Thu, 14 May 2026 21:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778795102;
	bh=7y/eCUoKhmlH32wuIyfhHjAlPNCmMOvLYts9U74vFOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DZ8o5/kv51iFotlCyDcp2YxxVXHNyCJQUpz/JcC8fBydOrWLVcXSg/60+SXY14c5i
	 0789hsdSeUQxW/DE7AoaD0Hhj37iKI3P/PLlloYL4AzCE1SfVGPJXlQAmTwmfTVpLR
	 tntl+/rfBtBUlB9LFr3dUGqrtQIUGM4L2xZET1j4NOzNEiRGABwX1/6n5NsAuux7sK
	 P4GqdPBQAKr4hQflH464p9ezX7fA/1xs1cmUoCy/Uul4rlyEAlqSrd0XfWuC0qmR//
	 UM5pijjSuxMCYT1+Nv8zfocDa4TypP9nBuDsYrwzLrTWrQuZxRkNCRS0PFWM4m7MRa
	 WptM6RVMv4AXA==
Date: Thu, 14 May 2026 23:44:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kalevi Kolttonen <kalevi@kolttonen.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: reallocarray() is now part of POSIX
Message-ID: <agZCDN26GeEF7aXP@devuan>
References: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
 <agY88e74EJ72Vli7@devuan>
 <agZAyPqsPJ4khpp0@14-5A-FC-31-E8-67>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jehkr5b2yiyfrfpm"
Content-Disposition: inline
In-Reply-To: <agZAyPqsPJ4khpp0@14-5A-FC-31-E8-67>
X-Rspamd-Queue-Id: 2C396547216
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
	TAGGED_FROM(0.00)[bounces-5507-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--jehkr5b2yiyfrfpm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kalevi Kolttonen <kalevi@kolttonen.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: reallocarray() is now part of POSIX
Message-ID: <agZCDN26GeEF7aXP@devuan>
References: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
 <agY88e74EJ72Vli7@devuan>
 <agZAyPqsPJ4khpp0@14-5A-FC-31-E8-67>
MIME-Version: 1.0
In-Reply-To: <agZAyPqsPJ4khpp0@14-5A-FC-31-E8-67>

Hi Kalevi,

On 2026-05-15T00:38:16+0300, Kalevi Kolttonen wrote:
> On Thu, May 14, 2026 at 11:29:40PM +0200, Alejandro Colomar wrote:
> > You probably have an old version of the manual page.  The current manual
> > page documents POSIX.1-2024:
>=20
> You are quite right! Fedora 44 has man-pages 6.13-3. I am very
> surprised that they do not ship the latest man pages because
> usually the latest Fedora is well up-to-date.
>=20
> Thanks for the info! I guess I should contact Fedora about this.

I contacted Carlos recently.  They seem to be finishing the packaging of
the lastest release.  I expect they'll finish in few weeks.


Cheers,
Alex

>=20
> br,
> KK
>=20

--=20
<https://www.alejandro-colomar.es>

--jehkr5b2yiyfrfpm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoGQlQACgkQ64mZXMKQ
wqkCzQ//aB6KvGKlZsVZ4+KdLr1KOmrbl9wZCILfz24ty4lyA9gni33L00HgQj5j
zQRraiP2uvp4X0VFs4c+E+nXiUD6jy88uN/h21yLrIoKQ9uj4hTV45wwfgKKv7s+
2LozOVF/0ruhXHzLp+QNf8HgQd6If+A5FNf07cF/ZejRZr9Fbn/zgJ1L2oLMFEbv
LtkeeJNlm2AJTOrLdU66/lWxSmg8NZpNGNn2zbvX9FEmUYX+ZRmV7tpnubIPUWPi
ED219BrKHZlABY8ZdaN0mLTYwuizU4BiZVz7qAnYyBA4YWgu1jHUAWDoNCpBazOj
LWqQN7QuC5BAaM3GoFJI0Cw1MECoeuDa/1DrY88hxnJAi4ajI61en9GVDaCgi5F2
QqHTC31jW27rrhZVgZ/UVi3C5s952e9gyzlQXFK/DaFWlIQSk5aDSxfwiofxudRQ
3OZHqDpEu1EdAotuAZpy1eGSU4hcRenBt9hUEq1p+3IsFg7d0zE3qTn0biOFb3Q1
rFbD5SrDHSQn2e1OD8H0BjUTzCvEL6H2nTC3VdcxWVKv0ZypsWiPa0eSAY6D3A1i
jh+u7IXwdXwoT2ZQLp6uxE89XPrux958r47GOx2zC4ks25VDIxa0KSzCVwWc6G2J
bWINz3+No9Uq7qxae80qBQQX2xxW7zfMzY7rwuMm7AMtA0H8FRQ=
=8FNa
-----END PGP SIGNATURE-----

--jehkr5b2yiyfrfpm--

