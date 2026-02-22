Return-Path: <linux-man+bounces-5187-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLfgM3oQm2lArgMAu9opvQ
	(envelope-from <linux-man+bounces-5187-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:19:38 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 336FE16F504
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5DAD300F5E7
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD4434F481;
	Sun, 22 Feb 2026 14:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfNz/yym"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F14025DB0D
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771769975; cv=none; b=BtGMUVV8gWarFL2KUrcX9AynkVdus6EwXKZHRSBi/N636s/li61YMVeAeB4fRH2+7QU/u1nIBqMbAsk2lw6U1AYR7lrMcMV3W3fYORWLsADqul5tBy1+QLN+gEPjVWLyj4Pkc0gfukgh6EW4F4p1haRuuH1dkjZ4JLFrPgQYY7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771769975; c=relaxed/simple;
	bh=fgEKtAyjbUK+4KvUAHNiWU9me14VpfSBnDqpuJJRdmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dILuQJyTvGe2HDkJ+wn/AMR6rzxiGG0jRO4qaX6vvQPStDQJjOFGgymMDjO3PiIqptHNzJkTd+ab4dGj8ldnvKTBIdECsxaNUpJYXgftI/UyVmuv4mR6tAxV6kRt73MK/tlMGtE6/sFsTK8QJvzhy/R+GffR2xVry00DLkLON+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfNz/yym; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2941AC116D0;
	Sun, 22 Feb 2026 14:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771769975;
	bh=fgEKtAyjbUK+4KvUAHNiWU9me14VpfSBnDqpuJJRdmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sfNz/yymoUhn/rXwH8d+0kGWWgTdM4S3oqgkyt8/9vCyKIZfGU+vDHRhkowfDUbin
	 uFlb8NlbupguIlu5i0Q0pUp/Ic7K+ns4oBzqWLcoYUHR38hb814YVlH3CNXHr4wRUv
	 lXFVmAqDW4We/0msqmEurHfGhT59X/SexadZtnxyiwEsIsR81j5EHzeuLmrpKOUNN6
	 b1edrVQiueXG8nv6oqHPyjvSzMfwqnn0tGMP3Pc7J0TSn0/QJ0tx+2zqmRa0z5GH1q
	 C+RFEnmYNHFEY+dboLL3Go1L9YPBiHibTZVGWQIXbNrrlMBkGgNIZfQ7HG/kLe4Mu0
	 CtlRcuRfaAlgQ==
Date: Sun, 22 Feb 2026 15:19:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, bug-gnulib@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsPpWJ7yZ1nG2RJ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZrmh5XLcUcKJz4b@devuan>
 <aZsIJhUxHa1L1cme@devuan>
 <2947259.IIHS8v3jeM@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bqqslsvldozl4xqs"
Content-Disposition: inline
In-Reply-To: <2947259.IIHS8v3jeM@nimes>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5187-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 336FE16F504
X-Rspamd-Action: no action


--bqqslsvldozl4xqs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, bug-gnulib@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsPpWJ7yZ1nG2RJ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZrmh5XLcUcKJz4b@devuan>
 <aZsIJhUxHa1L1cme@devuan>
 <2947259.IIHS8v3jeM@nimes>
MIME-Version: 1.0
In-Reply-To: <2947259.IIHS8v3jeM@nimes>

Hi Bruno,

On 2026-02-22T15:10:03+0100, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > 	 .B #include <string.h>
> > 	 .P
> > 	-.BI char\~*strnul(const\~char\~* s );
> > 	+.BI QChar\~*strnul(QChar\~* s );
> > 	 .fi
>=20
> Ouch. This is not understandable. Why should a user learn about what 'QCh=
ar'
> is??
>=20
> It's basically like a C++ template with 2 instantiations. Just list them
> explicitly; this will be much clearer.
>=20
> It's common that the SYNOPSIS section has several lines. For example,
> man1/locale.1 has 4 separate lines.

Hmmm; sounds reasonable.  I'll do that.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--bqqslsvldozl4xqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbEHMACgkQ64mZXMKQ
wqmx5w/9GSkPv7nf0i2t/jupHYPBt0LleXWAfBVX6gnkoallNN1B861lDCFDlF+N
FLjc95FZi/w3z+5PeKSapCD+NMSsCvDm2kiJJd5kHZTQa5hyDeyx5uN8v4oblHN1
RrxKEXVOWfByWcwb8z0ULOrf77tN0w0+33u7KBiNYUChA/m0J8kEFCYL68KsQxUw
FVhnUx4zeq0YkeQjmi0OdeTJqSxaiTatK5OOBWl/V+I3DR/WbQaWqVMN11uIaTLy
oToiFpYhFFCIsAZxCeuku1sfv08OWU8Fx1738nNXdNK8jzZa96/UXf5ZOowXp9hH
eHuaShDMoW22xbERjKX662fOSNB8Kye/TTfIvIQPdxXjBf2G7xcB98xnrSEJq3vx
3THLvwlY+IgX8uhmx3L+vQsyYmhXG5cevmPQHQHpl6BOwEsHngURfGNMBfuSHFZI
HgwiLxR6kLzyiXKb401nqNd1b3pb1r+AmXfCFD4mV/HwmvQT2pr56VMOiD0duYgO
Qx9V1sb914ufl3UG/hTQv9ocb1jkCW1rYujU5SKaw0IoYGKvZRdox/kOlHiYQUTo
GoFZ5UATEjoiO2uBsdR+5hmYOp6v5UzeGFlpuSZgiursqJn11fSVAm3wI7VlmFzO
TE750TuOCeoLaOupdJH6NOqm4wFW0vn7AEN4Kcus0Obr/Wa4CrI=
=cFia
-----END PGP SIGNATURE-----

--bqqslsvldozl4xqs--

