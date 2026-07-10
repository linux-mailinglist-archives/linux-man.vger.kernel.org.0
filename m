Return-Path: <linux-man+bounces-5743-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kskDGHRyUWo3FAMAu9opvQ
	(envelope-from <linux-man+bounces-5743-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:30:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAAB73F898
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:30:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RatKr3aj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5743-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5743-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB68F302A2DF
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E5942EEB6;
	Fri, 10 Jul 2026 22:28:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260F7423A67
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 22:28:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783722498; cv=none; b=rgXzq6SVYtA2enwSnzpmusJ43rYBG9HMnKSUsBeQeEGgKYh7kkwpFN9a+9YPEkHNXqGSIjHxQ6naKqA5owW19tiHXtXWeW2jGYevGHIDgHSZd7nwTBIKYmsV5iIkKZSV+iEzyxXGXzx64wdv8MFrV4YgImQ/zQyk3UOX7UStOcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783722498; c=relaxed/simple;
	bh=+d0om3DyjcJPnDpQmpOAweaUJhxiO5yVBnxbRMTxFxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ken04coqPMn2w5/c4eTAatyONtBLYuptJQiwqpcCCjzfKFB23nv3mGogd25wJ6xXPcjT1XP7qty6LKpOgfZnCqTJAf3XfxZ3JmYjMGca208sezhYb6KRVLlAgjFGJNL/2zr0ac/RKAjYG8MBM9WL9hqCeEpq7Yo9ZJCfx35ttY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RatKr3aj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0501F000E9;
	Fri, 10 Jul 2026 22:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783722496;
	bh=PgygUeX3qW2lzoXHWoNV+o9JN6DyPXRRwzF38Yh4h9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RatKr3ajBLaalpSRZ/eNXiPgFxIh2mAARiEgcLIruD17qRMeOLS1ZfOl6vaIUSnDo
	 0HAW7aOyGmOvFNZREJSPevUrO49MV+nPXGRDAB42XAthm/NSQSgv6NcTlhFEmuPDQ4
	 EN4/6Gd2pojWsv9q5M4TBukQrNunojtXDsg238dw7EkfZ5t3Jc0wLvwb/AzLjqu4Zy
	 AX1Nl+uLsCDACqi8gQte3yOKNAG5x9m2UM4VmbTLTMXGughmAIrtWhKg9IwgzB0AXM
	 ug09xXTgdiozd9WuD0/gwa6iUk2VsA6CbfAcyN1kSOZKlvGrgtwyqra8VVNofB78L4
	 fkfyDFoFHcMFw==
Date: Sat, 11 Jul 2026 00:28:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: Why we're stuck with man(7) (was: man/man8/ldconfig.8: document
 system-wide tunables)
Message-ID: <alFxzklChZJDNic8@devuan>
References: <20260710195854.ud4riftmhrfzu54d@illithid>
 <xnpl0u8phe.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uusvqwj25ixnatjg"
Content-Disposition: inline
In-Reply-To: <xnpl0u8phe.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5743-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:g.branden.robinson@gmail.com,m:linux-man@vger.kernel.org,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACAAB73F898


--uusvqwj25ixnatjg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: Why we're stuck with man(7) (was: man/man8/ldconfig.8: document
 system-wide tunables)
Message-ID: <alFxzklChZJDNic8@devuan>
References: <20260710195854.ud4riftmhrfzu54d@illithid>
 <xnpl0u8phe.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xnpl0u8phe.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-10T18:11:09-0400, DJ Delorie wrote:
>=20
> "G. Branden Robinson" <g.branden.robinson@gmail.com> writes:
> > * Markdown can't do semantics.
>=20
> And roff has .IR ;-)
>=20
> These days, most of the docs I write are in texinfo or HTML (raw html,
> not markup).  I think I've experienced most of the formats on your list.
> I think I've written converters between many things on your list.
>=20
> Is there a canonical reference to the flavor of roff that we write to,
> for modern systems' man page formatters?

groff_man(7) and groff_man_style(7) are what you're looking for,
I believe.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--uusvqwj25ixnatjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRcfYACgkQ64mZXMKQ
wqm8KQ//UPziMvsqGbp9gPlerXw/uFq6V4JPCkJxzu6A0g16/QNQVKPPT5obOOkn
LoT9sDuVb72dX1T7J1Xc3xo0zbBQF4zeid7A34pF+kU8UNa28jr0Qd+9SG+ee2/0
mHEhe3KqLGz/hMjo6mJQ1qwfBfDYMtp0ZBLyPsfJuhTPN9M75X09PrPcLxHyNsN3
PDjjli0A3Fv84MjQMv/TbtpPsVgvEa9rWPPI8kgm4PAh/kpOOoq5Yviz0voJ24BO
xFXAV9g9ef0/nPC0qApfWMlGb0g3q/auacIAy534Wtz1H8K+Im+OV8oO9zNIXJ4V
iaCnuq2+3erPAASicOsGihm101OQ77HK12bIWp5N0HSKjqJt6z9WWFVksvwUBd3o
qx3SW/XFeqpxC6S/1muq+DvPZOcVNTalR4B5EVYht6xMKMFdOZxFcuEeMEsMr+4I
FLBtB9HeTm2oU5EOAFgPD9k03FMa+4slGbGdDBZfT8BYMhiwdt3uKHXbH++Y/fGI
rcLto7Va4uezowg4GTKsvjyAgTOfXID1WrGh18BfbiggKW/PffFhT18YC4UCR0Ho
WC3YKJeX/dtp/IxquDLygixWPkGtpGVqNrJ+m55KsR4imnzUDHn5H+vne9o7ZDMi
+Tt8fSyQlogsAfD7PfDXIDpp9MhB1GblhF+71Vjruv1Hr33yUz4=
=dPNK
-----END PGP SIGNATURE-----

--uusvqwj25ixnatjg--

