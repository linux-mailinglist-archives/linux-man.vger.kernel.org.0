Return-Path: <linux-man+bounces-4933-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODMiNqItdmnEMwEAu9opvQ
	(envelope-from <linux-man+bounces-4933-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 15:50:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D7C81105
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 15:50:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE7293004C56
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 14:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB56815ECCC;
	Sun, 25 Jan 2026 14:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDKwICg2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE6F14BF92
	for <linux-man@vger.kernel.org>; Sun, 25 Jan 2026 14:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769352605; cv=none; b=EC8rcaOtERT7jfjX3iY91s+2seKRrCC8wTXFf/LYQ9IvonN7QqJymrnrbUHeIlMXFAbQtYOJZDCuIr/ktzcXQWkFC5L3/yoECMO3V0Jfn1fim18yRjeDRQmddlvEREwdKZjoLrv2ANGZG665GrtNDZwCqCttz5L6WzDVWV6dS9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769352605; c=relaxed/simple;
	bh=k3hs6dWwk3AjWbixTZf67twOHHw1b/OlhpF0jXY4ITY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sGqHWOw7r8tnK06PtWFefQdNziZp6AscLxYkHYS33CG9xLHONi/dXAsFVuQ3EvwJLvw3BGuKoWhHcm5iWw8p7fwoNvMGaLgSGcb6PQ6RPeMrBQA5XT7S0bT8ThWRxTg9U+WVKgPnH6Dx5tLR67w+WbegXaMj+XP32B6ZDdOJs8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDKwICg2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34A4EC4CEF1;
	Sun, 25 Jan 2026 14:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769352605;
	bh=k3hs6dWwk3AjWbixTZf67twOHHw1b/OlhpF0jXY4ITY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rDKwICg2qAGjrTxyRzHeCsJJz/nqxIYieDtIs2+eVyCqvPLvz3SBJuMI8khLNBpfG
	 JRQJSOrNyLcVgZ3Wb5B+LdZn4NgsX2aecHSmXiuUOI8NSJPPDQhn2DFeaxvdcs/jAK
	 dhmIIueM7rVBRf+3FJIbju/VGHN8hijomaoje34fASR/+WYIjN6S7g9Ui0p4ejdVSq
	 et2dGZAF54QAkSLJ/tmKZIT3waLNz3f2J253bfsVnHHxTSjzeFQbP0iUgEAe6x0RNb
	 IV+CtbemtKyOlqct/8gCFnLCVGYm1L16GJ9LJnZRL1v/JxOkjw7+meXssxyt6o5aJm
	 zCe7rJEzxSL/w==
Date: Sun, 25 Jan 2026 15:50:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michael Aramini <M.Aramini@verizon.net>
Cc: linux-man@vger.kernel.org, bug-coreutils@gnu.org
Subject: Re: man-pages bug report for "date(1) =?utf-8?B?4oCUIExpbnU=?=
 =?utf-8?Q?x?= manual page"
Message-ID: <aXYtHcyH4OdkuW6x@devuan>
References: <45b09795-42ce-41fe-92b7-fbf08b121639.ref@Verizon.net>
 <45b09795-42ce-41fe-92b7-fbf08b121639@Verizon.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sqxhvmbir3ecot4f"
Content-Disposition: inline
In-Reply-To: <45b09795-42ce-41fe-92b7-fbf08b121639@Verizon.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4933-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[verizon.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,man7.org:url]
X-Rspamd-Queue-Id: 37D7C81105
X-Rspamd-Action: no action


--sqxhvmbir3ecot4f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Michael Aramini <M.Aramini@verizon.net>
Cc: linux-man@vger.kernel.org, bug-coreutils@gnu.org
Subject: Re: man-pages bug report for "date(1) =?utf-8?B?4oCUIExpbnU=?=
 =?utf-8?Q?x?= manual page"
Message-ID: <aXYtHcyH4OdkuW6x@devuan>
References: <45b09795-42ce-41fe-92b7-fbf08b121639.ref@Verizon.net>
 <45b09795-42ce-41fe-92b7-fbf08b121639@Verizon.net>
MIME-Version: 1.0
In-Reply-To: <45b09795-42ce-41fe-92b7-fbf08b121639@Verizon.net>

Hi Michael,

On Sun, Jan 25, 2026 at 09:02:05AM -0500, Michael Aramini wrote:
> Alejandro, et al.,
>=20
> This is a /man-pages/ bug report for "date(1) =E2=80=94 Linux manual page=
" (
> https://man7.org/linux/man-pages/man1/date.1.html ) pertaining to formatt=
ing
> of the man page.

The date(1) manual page is maintained by GNU coreutils; it's not part of
the Linux man-pages project.  I've CCed them.

>=20
> The line
>=20
>        *date *[/-u|--utc|--universal/] [/MMDDhhmm/[[/CC/]/YY/][/.ss/]]
>=20
> represented in HTML as
>=20
> <b>date </b>[<i>-u|--utc|--universal</i>]
> [<i>MMDDhhmm</i>[[<i>CC</i>]<i>YY</i>][<i>.ss</i>]]
>=20
> should, following man page formatting style, be formatted
>=20
>        *date *[*-u*|*--utc*|*--universal*] [/MMDDhhmm/[[/CC/]/YY/][*.*/ss=
/]]
>=20
> represented in HTML as
>=20
> <b>date </b>[<b-u</b>|<b>--utc</b>|<b>--universal</b>]
> [<i>MMDDhhmm</i>[[<i>CC</i>]<i>YY</i>][<b>.</b><i>ss</i>]]
>=20
> I.e. the "*-u*", "*--utc*", "*--universal*", and decimal point should be
> (*non*-italic) *bold*=C2=A0as they are are not variables, but are potenti=
ally
> verbatim text on the command line.=C2=A0 Also, the vertical bars are synt=
ax
> symbols, which are neither variables nor verbatim text, thus should be in
> regular/roman typeface, *not*=C2=A0italic (nor bold).

I agree with the bug report.


> -Michael

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--sqxhvmbir3ecot4f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml2LZMACgkQ64mZXMKQ
wqlGiRAAtBsQCzIsCnDiWXhuXldNC/eLB2lxOfp4Ydos48VPRqpX2LCnBvKIzEpZ
g5EUwCLnvwG/Y1XFyhQwfaEA1S2/qbxfiuPqiV+A5rXlVI0HPw7vV0sxLfEpHUQL
orWgLtNQiXwcER8niEQHCx2GC7FUAADBgrcAUNCl4uI84zXJvOJIpU6GOW4gu1jl
d10I1HPUHywWE1uxYrqIzrHzigPdH7J4GxOpn13RYOQtebrdNHe/PlE4mokomhmT
lWGhGhjgN9+aGDUlqbnc7yZLc2J3xGLcWKPZXhCSH72bjeq1vB6chpWORbiJ3OqP
7FOtIbuBpVYPa6iGfUjxBnsPw+HRs2QMsoACdFr4wLi0MFPdtsHNu88s0SjB6CMV
omCrUXQcB9aBlxBQvzsYjR+3p2gzn3p1uxbmW2wI4hA2jBgJXcEpPNJ++twNBpgm
BeIaaY2dzFvKYQyAC6ImNIYl4ZETk9jxlyS++CqMBHOjrIammRB+e7wQ1nk1mead
nEUQUvTH+UU9eszA88I9e5xQ2h4IzRiJftPPcmV0xXK20qhlHJRqTv11e9yIB7iX
Qc+1kqwZWuUSZk6WMjkctHs+T5E989EgS02LsJKPHq4T6SqDT6dpAYZByCXxFtGx
0DIhzRdn51j+PdRJNb6f03k9bS1yU5Huh6uGUryG3ZDpiMDnDQY=
=OP3/
-----END PGP SIGNATURE-----

--sqxhvmbir3ecot4f--

