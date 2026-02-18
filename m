Return-Path: <linux-man+bounces-5157-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCHrLIkglmn9agIAu9opvQ
	(envelope-from <linux-man+bounces-5157-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:26:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8F1596BE
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F3063006838
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 20:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C372033373D;
	Wed, 18 Feb 2026 20:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCPmNUYe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851A131281D
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 20:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771446401; cv=none; b=XRhr8W2symmBjL4/EzIuaC+lJ89a7QL09eBh7jXa0nxuS5DHM8fqBLpnCMz678mJqBfQnajLdzZOdclPOW1j+EZASgOzR2PKpCxF41Ku9UdLDSXFxRNZLK/QEOwnAYjEKNuQd04TvaZ58gbN8p5GmHuVtJPAGdlbeFryAw5sSos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771446401; c=relaxed/simple;
	bh=k8BRi/QSez9c8JF+EsuGex4nNjB95oDl8iTJ8h67Hms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k/n6Jj34cZnXKVARMLvRW5LgbFwZWZzkz5qkufImLO7A2znhA/BzNcvNhAm9SGOOeGZ9UOn998GaMdqiDi7QBeWVIkpRg9t7cuHZQdUMhK+HvgCFSfytwH4hMBNwIXkeuy06aa9pRPs+R7ProQXQvDEbb7rpTpUQpruF2jPZDhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCPmNUYe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92635C116D0;
	Wed, 18 Feb 2026 20:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771446401;
	bh=k8BRi/QSez9c8JF+EsuGex4nNjB95oDl8iTJ8h67Hms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fCPmNUYeSQLoGGFRMYbMxJgNXAKdeQ9HwWLCTI0GyhcroHXwpnGwWZmDsUV0a5XTi
	 quZtXWaFjzy9p49PVW1/pHBY0+K8XBmdC9UtAd1NXqjsrG5/rg/LS9reJp8OZUHSXX
	 gSfzw14TnfGkDLypTP9EbopuRU53ZCCV8af3TM0elAeW1s7vEdpfUGHZtq4fS1Ssoe
	 p7Roli2D6DBXXEuYvOxY3lIeUPXnLZWgXAIdTdVCmlaaDT3vZJr/GO0MhmbUVW1DRo
	 LvwSDvpYpvBpZD/Ez6N/Ipd2hK7A0zA/gfhZDcdDsibnBQoFWYZnnpq4hxXJf35MSn
	 8UgzsgFRGpXSA==
Date: Wed, 18 Feb 2026 21:26:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZYgLav9DxDExlQL@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qbqnoiuzztsrbntd"
Content-Disposition: inline
In-Reply-To: <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5157-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 38C8F1596BE
X-Rspamd-Action: no action


--qbqnoiuzztsrbntd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZYgLav9DxDExlQL@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-18T21:16:06+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Feb 18, 2026 at 01:41:38AM +0100, Alejandro Colomar wrote:
> > Please let me know what you think of this patch?
> > Here's how the patch changes the page:
> >=20
[...]
> > What do you think?  I think the formatted page is more readable.
> I really hate it.

Okay.  Do you like any part, or is it all hateful?  :-)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--qbqnoiuzztsrbntd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmWIH0ACgkQ64mZXMKQ
wqm1XA/+J6SfUQBUMAHfjTzr7Fc0q2XRkLL1/sFmeHZ0mD3CUX9BwKb/doP5a8Ng
j4IWcN8YjFkM0GvoSQmSyOTr+BF+rQ9KhsFQ2SiaYiXEXdNimMe5ib6AusjN9sPU
fDl6EOlPjeyC79OXJU3J8hm04IWlowLXhVihu9jqTwW5JDrbYc2lhbhOT1RJpqnB
oGJwaJv6+SOiBaODNk3UQocqi1MbgMMesrAgoCmG1lO6TinlBarFSDvh+i/bOuSo
y4M8ySCkg4I6MuRsxbkGNgumIu1gTSWFv5B9bZl3Ftvh3wEErNdGFsHqbQffyi8T
ZCusKavjN9UqnJNbwFAlpTr9MWYlftRl3KCPw2M+BU5flI6/8pAf/zDZ9QAFLlpR
jt//B0qs+6PCCQpSrzbS2aXE1U+5S3O1pBu1BbSWDUlsrkPjyufl71iimsAG1arn
jR+8HMJeEAHQHxvKApDp201d73jHqFUfeTpKFVgTA1zGCvFPRg/h1vZQ8nY3LpDE
3ihMHkfsgpYwLXR6p4fsxE2Djt+WC4FiuxhSLHcImEg/spng3G0RqSp2m8rUlnRU
jSiQHg6CDeH9quB7FbmubhnTGNReTXnKzhNx9N+hRLzPGGmjHsRLJQadnzTgA6Ik
tIXB8WVkh9KBIF2iqtf6xEoEehjSZ+tcc2TVFShSwJJL71OFSbI=
=PgJ2
-----END PGP SIGNATURE-----

--qbqnoiuzztsrbntd--

