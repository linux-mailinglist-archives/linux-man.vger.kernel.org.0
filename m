Return-Path: <linux-man+bounces-5020-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIO3AYGvgGn6AQMAu9opvQ
	(envelope-from <linux-man+bounces-5020-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 15:06:57 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF95CD204
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 15:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF21F3055B3A
	for <lists+linux-man@lfdr.de>; Mon,  2 Feb 2026 14:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91D136607B;
	Mon,  2 Feb 2026 14:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIIk203s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAF31DA628
	for <linux-man@vger.kernel.org>; Mon,  2 Feb 2026 14:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770040865; cv=none; b=ozcw4H7NUTE0NX5iTmjG/tDCx0AaoV2m0Oif6YfBySAaK+TXH2OEY9D0uNGckRA/des5Mc5ylZ+532j+bOjKZKj80rvK3KMCvDxqE51fwW4zd1IoievNFwfJgogjFqFhEgyUfugpoMt4xuUHp1hwXgrDrM4aDl1/EMP7wFr9xyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770040865; c=relaxed/simple;
	bh=syk2EXvWOEkYvkoXSSCK7UujKOYtoEEPKPJuO6BhEm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BMt9WN3kAamCHF6e/nMLx1b8AVALkjRmq9bc7sfAzV1W/75XtQTlUsxLEObQIaM287GquSfPfDHk/6uLCw8N5DL/Xipl5a8Oe38aUWINfvJjE5ake7hnG+YXeqR9k9mJiXUpf6dENH1pxO9vNLO/N3L/q+qGbo3BgLMaz3iNX/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIIk203s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6832AC116C6;
	Mon,  2 Feb 2026 14:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770040865;
	bh=syk2EXvWOEkYvkoXSSCK7UujKOYtoEEPKPJuO6BhEm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VIIk203svO9NBbLaoKmP6w4BydsjqiXGT8dlmdPFGxVT152+G+EC7hB+TQ8KeQu2f
	 25eOcZNMVE2AZ2WBeaJY0c4/3ZoJZZYwyLO+KpBXIPiVWsohJTxKw5XryXUej+sTf0
	 yr1doDFJbMglt7kxyH+ovZivnlFLXjLMa/Svb13Dw4ZutIZkhz2Rz8QZV5RUuThVGr
	 AOg1/K2yAMTe3+V2wLCcfLhNxYUW8ltStz6blmSZITXOONzJq3pdV4DUHqM4BMFxD3
	 qaj7b7cckZgTB6yPoSNfcsLKzpt49A3uTIk4Iv5tRLvlECjT7QHXwNyBN+VuTj3hY2
	 Ps5eNfoCp1k4w==
Date: Mon, 2 Feb 2026 15:01:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thorsten Glaser <tglaser@b1-systems.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: fix numbering for notes
Message-ID: <aYCt_RKZ9w9k3ZtK@devuan>
References: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
 <aYCnGFboK-95B8AY@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pjgskfw4dattgyaz"
Content-Disposition: inline
In-Reply-To: <aYCnGFboK-95B8AY@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5020-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 3FF95CD204
X-Rspamd-Action: no action


--pjgskfw4dattgyaz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Thorsten Glaser <tglaser@b1-systems.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: fix numbering for notes
Message-ID: <aYCt_RKZ9w9k3ZtK@devuan>
References: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
 <aYCnGFboK-95B8AY@devuan>
MIME-Version: 1.0
In-Reply-To: <aYCnGFboK-95B8AY@devuan>

On 2026-02-02T14:43:19+0100, Alejandro Colomar wrote:
> Hi Thorsten,
>=20
> On 2026-02-02T12:39:00+0100, Thorsten Glaser wrote:
> > Hi,
> >=20
> > the table refers to numbered notes, but the notes just have
> > bullets. The attached patch fixes that.
>=20
> Thanks!  I've applied the patch, and amended the commit to change the
> format.  It's pushed already.

BTW, sorry that I forgot to amend one line.  I pushed a fix-up.

Cheers,
Alex

>=20
> See man-pages(7):
>=20
> 	   Lists
> 	     There are different kinds of lists:
>=20
> 	     Tagged paragraphs
> 		...
> 	     Ordered lists
> 		...
> 	     Positional lists
> 		    Elements are preceded by a number (index) in square
> 		    brackets [4], [5].  These  represent  fields  in  a
> 		    set.  The first index will be:
>=20
> 		    0      When it represents fields of a C data struc=E2=80=90
> 			   ture, to be consistent with arrays.
> 		    1      When  it  represents fields of a file, to be
> 			   consistent with tools like cut(1).
>=20
> 	     Alternatives list
> 		...
> 	     Bullet lists
> 		...
> 	     Numbered notes
> 		    Not  really  a list, but the syntax is identical to
> 		    "positional lists".
>=20
> 	     There should always be exactly 2 spaces between  the  list
> 	     symbol  and  the  elements.  This doesn=E2=80=99t apply to "tagged
> 	     paragraphs", which use the default indentation rules.
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > bye,
> > //Thorsten (with $dayjob hat)
>=20
> :-)
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--pjgskfw4dattgyaz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmArh0ACgkQ64mZXMKQ
wqn88Q//QEtt+ez5QWZ2+hkIt1p2KGXG+SP5wYFDVGtbGbZSTiLkcaRY2R6BAVX8
atHC42z4WUf+nde5uRiPg6PFL81HvqeqN0GbHCQKIl9e7dmcF+5iIHEVC76oVqAI
u895Cn81XPh078yvvV9Wu2QPqFq16zvcCEH8zzzoLU27Upy8f86x3Ht5lzRgoLCZ
IPCeZ0XpWlmfYI5ZewFumGWuipR3rmFJVTfOFO882jNBFPPy0wbFzu8o7kEAjWvN
y28/tdIG88ffq3RvAM8GpvEqlMV0J3YCJOA1ZE6WW5anjKl69xwjXscr3uqXy5BL
8FV27PHRmZ7eQssFwYj6ECyY7i8wmtDUUr+l6JVxrHHkcdrEEwvFOqv+OfquBxjr
1fE8LR5t9MRf3ktEt9Y6+pquMaPfMW3pKb753QyLRChhkOMDFY6KmG02vmbprEA/
AhEkq8cJs26qHI5pJQn/kLiOiGqHQKW6WtU3nr/WKV82iUa+NUZMZoDd19CNs+ZZ
I/cgg3vvtAW7wqrqTk0hYzYmEHkwwVTwJSS5BqyiUrZcJzObADUITrfu6Vkhtgi5
UvRZHPBKm4+Wtv/ffrYhb0V/2MblM9jeMmZXjCWuIjX+0Z4VKxzcwNdHbi/Y6T5o
mwXEKCn0lkC05NtqOMQjyQcvTxyOCZWfGvD/IA5MDhisicQJAfs=
=aBY4
-----END PGP SIGNATURE-----

--pjgskfw4dattgyaz--

