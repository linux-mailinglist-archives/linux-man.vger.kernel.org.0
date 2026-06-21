Return-Path: <linux-man+bounces-5661-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ufr1CKkcOGqNYAcAu9opvQ
	(envelope-from <linux-man+bounces-5661-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 19:17:29 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD916AB534
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 19:17:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hoSJVQes;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5661-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5661-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C9FB3004C6B
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 17:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BC0B640;
	Sun, 21 Jun 2026 17:17:25 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797421AA1D5
	for <linux-man@vger.kernel.org>; Sun, 21 Jun 2026 17:17:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782062245; cv=none; b=lwYE9Z3wo/npekeJae6QMbFOh1wesi77LC1lBhqMHc9QXqrOYJpzEcf3PVWlQJEc5SayQyAxRz17V2oGRk93/uOPJlffNfwaiBumrHImu+q5/LVx6WAjlZ7jOeKhNhvAJyyLDB0uk8IeOZmbMOU0NoiZWZmdxz6Ln/fWDx6RHoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782062245; c=relaxed/simple;
	bh=qe1uzqGcMsB9zIe9+k/Ps0IDI5D5BQ8MwhgW7t7xPKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjR7JUhFRfoaOMkYRisGJ5b/o/3Dr5v5LG0/4r2UMRfyt5OrXDCxEcc9n5HXqdNEQf8wsOpj32bzSIN9nWp/g1WVIIZ/MWqhuvftSwLBjBc/3pKHNJ6oRuXx40iE7AjUTD6A6Ku2IUKQq+/k0wOTv1DqtWHxmUH8ob0mSUERqs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoSJVQes; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B56C1F00A3A;
	Sun, 21 Jun 2026 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782062243;
	bh=S9FuQh7DKRZNCL9CsZnaQ2Ka9CtINBUFMNTTymVb0+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hoSJVQes/weLaduhNfmdT7iFGPZ31SOm8TGKBCjyaLfY349GsWC+cJ42z80mGylPD
	 pm/Zn9rRZj9RcD2XUeOW3PGPUVap8emcwwN9PycVwUmMUWOvgoC8dFYkiJCbLz9r4N
	 3ViB9L2CBW/QaUZDDb763VlCWtVSMGwoEp3dkZbvFf9d0SbILljMODscfkqYqOB3A1
	 abPCuqHRyEmB+bLfHYiYd8aUJnJ+/I85nGQIloHuV7mh37ZfDI/ieenPQxT4FK1DHR
	 WrQgvtbWdq29aypCN5pmPn2i4N6IpMowiiW+TNGugfmrceasuwXXAfwMnC7Q6g2ZPi
	 MQaBdyVnJv1KA==
Date: Sun, 21 Jun 2026 19:17:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Phosit <phosit@autistici.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Wrong protocol in IPV6_V6ONLY.2const
Message-ID: <ajgcZCDV116tauEn@devuan>
References: <b096c7e29014c6aaf416ce672684aab569aac341.camel@autistici.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azjrzl7f5wvokpxt"
Content-Disposition: inline
In-Reply-To: <b096c7e29014c6aaf416ce672684aab569aac341.camel@autistici.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phosit@autistici.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5661-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,autistici.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FD916AB534


--azjrzl7f5wvokpxt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Phosit <phosit@autistici.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Wrong protocol in IPV6_V6ONLY.2const
Message-ID: <ajgcZCDV116tauEn@devuan>
References: <b096c7e29014c6aaf416ce672684aab569aac341.camel@autistici.org>
MIME-Version: 1.0
In-Reply-To: <b096c7e29014c6aaf416ce672684aab569aac341.camel@autistici.org>

Hi!

On 2026-06-21T18:00:20+0200, Phosit wrote:
> In the synopsis of "IPV6_V6ONLY.2const" the function signature uses
> `IPPROTO_IP`.  When using that the function seems to have no effect.  I
> think it should state `IPPROTO_IPV6`.

Thanks!  It seems a mistake introduced recently.  I've fixed it with
this commit:

	commit 3b2ac90b3518635966754ff83d703c5f6029ae74
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   2026-06-21 19:15:20 +0200

	    man/man2const/IPV6_V6ONLY.2const: $2 is IPPROTO_IPV6, not IPPROTO_IP
	   =20
	    Fixes: 07d5d5b62a8f (2025-12-02; "man/man2const/{IPPROTO_IPV6,IPV6_V6O=
NLY}.2const: Split IPV6_V6ONLY from IPPROTO_IPV6(2const)")
	    Reported-by: Phosit <phosit@autistici.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2const/IPV6_V6ONLY.2const b/man/man2const/IPV6_V6ONLY.=
2const
	index bf8c9aeed560..4ade0db33371 100644
	--- a/man/man2const/IPV6_V6ONLY.2const
	+++ b/man/man2const/IPV6_V6ONLY.2const
	@@ -15,7 +15,7 @@ .SH SYNOPSIS
	 .BR "#include <netinet/in.h>" "  /* Definition of " IP* " constants */"
	 .B #include <sys/socket.h>
	 .P
	-.BI int\~setsockopt(int\~ sockfd ,\~IPPROTO_IP,\~IPV6_V6ONLY,
	+.BI int\~setsockopt(int\~ sockfd ,\~IPPROTO_IPV6,\~IPV6_V6ONLY,
	 .BI "               const\~int\~*" enable ,\~sizeof(int));
	 .fi
	 .SH DESCRIPTION


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--azjrzl7f5wvokpxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmo4HJ8ACgkQ64mZXMKQ
wqlZ4g/+IQ6ctkBTojjBS74ZSNsxqjiHCPEJwckU09bbyjrPwvAjV7MU1GhqH9AG
ycY64CVGAmKa2s/wPBGKFdc/O//XwBlUtOXp8uwi06psswBUcxRfW/Gq4g4Wp/U+
CuORfvyA3UFUFuimoCmvK/zG6Y3J3Vx46ecjyMC8QqFNj05FsJcMbYQLHPf3LASd
essltIFik0s637Vyetq4+9yXTIWa6Sz5cwDa20BMmK+57lEAKpumNyAd4o59tSee
hNQRgSZaeeF+4jHmYxfeHpZVrJRhKZi/uaJbc0XMMV2qUs1IpnWxyJjc4AfyRMin
Da1b9FtEH634PNG0pC2CCoXv40ZSuTrplLtO34VfIgx5BR/rQv9U5Ht1tdY7LSct
fWls2T3MEOkUxBRPiDadSmJSYxrSTlw/uaHfuX/IRlSHAv9Uz25OYL7ZoyRyyqsU
YPkBtm6W7cz8c3hkDHZJYMtDNFxKE/Ng1AWVqOnAy5mregT8wpE+iwqOkTpRC+gv
FRrtdoFzNyWO+/GdiI1LdonHtbQ4Z39K7zQiWAqhqun73i1Iw/fovwtBgJX5/PVE
wRxIU+3X/loj+qSatRT7E0gIslYSpNhP6KD60DkBA9KrleusUswPAyt3t8SNi19o
4yg5cFIDTSaNw9ydVRzODOO4E6/aLqoMtcgFfVnZoztjsHAK7dk=
=dD6x
-----END PGP SIGNATURE-----

--azjrzl7f5wvokpxt--

