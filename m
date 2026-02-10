Return-Path: <linux-man+bounces-5080-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /VTXNyY+i2mfRwAAu9opvQ
	(envelope-from <linux-man+bounces-5080-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 15:18:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1999F11BC95
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 15:18:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91DD63018096
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 14:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BAD36EA9E;
	Tue, 10 Feb 2026 14:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="K/zCUJoj"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DF636999F
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 14:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770733089; cv=none; b=gP3Zo+4Dt6XEQtsf+6A6IRDY0jeHw5z8buVJ3wqCkRxW6rdxCyBnpDlsCTVT6uv8/s+7azIyJHqLhUP61tnsJ/Hso+C39pf1a3wpHYMkpBu0oxgdt+CBvZgJvupCpB+0mMqDyw9jIcPgc/8ExFHcNP98Zk2BCZ9EwC1tSZKxgAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770733089; c=relaxed/simple;
	bh=EwHc1iXsH3lv9ZppNErq60NPWTq4IsxPc2AAqPKMPz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VxQanqNCmp6B9WyqVyBjl9QjP0NWbhgKThOIXY7Ni0jPbmpkhlAzIB3rnDxq/gXWdIuHsHFep6eOnzhJW4VKxbVnzyQ12QCDJm9g9X0neDvV1oDGHVVclcnAp4Yt2Qj3FddaymhkwKKPYbS/Y2LSqaGief0/K0Gt0WYvmNTC9/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=K/zCUJoj; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770733075;
	bh=EwHc1iXsH3lv9ZppNErq60NPWTq4IsxPc2AAqPKMPz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K/zCUJojjiQ/zHInXeg//yNnh6gfQWkuvNLRR4zkeBfj+c44RrSujKyk9Dn2shh+y
	 IJ1bnhC8BpLMHpxbFWjiO1i811tbEOG4EZfSFiZCJlHX6iUZSPSUpCoNbrns+N1fLo
	 ONFEj3bdLEKGOK0QTT6xOyPQjK69Kwg0ZQl/94hgXwQ/ItHXJARo1+MYlFwitKYP1c
	 RnnNNz1kIdVbboIyDtSFKfWdPFZSVo+RGlAY/1+IHL4fCqgUJaJUJbveaqdZIt33kh
	 Ks9VgEueDKq0M8rWFB8dcO5gZYX+E6LQwxuxojqBNVuLc6IMXL9d6Z3M6rbEX+BHp8
	 ZLk8OUiOsbyXQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 831812488;
	Tue, 10 Feb 2026 15:17:55 +0100 (CET)
Date: Tue, 10 Feb 2026 15:17:55 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] futex_waitv.2: new page
Message-ID: <rqshygydxwpfs2mi5cwxl3wvztgctj3nvu3y5bpo5s32owucna@tarta.nabijaczleweli.xyz>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
 <aYpg1XelZBzpw4ZL@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5trmz4nkbnnijz6"
Content-Disposition: inline
In-Reply-To: <aYpg1XelZBzpw4ZL@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5080-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tarta.nabijaczleweli.xyz:mid]
X-Rspamd-Queue-Id: 1999F11BC95
X-Rspamd-Action: no action


--v5trmz4nkbnnijz6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Feb 09, 2026 at 11:35:53PM +0100, Alejandro Colomar wrote:
> On 2026-02-07T23:00:49+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
>=20
> For some reason, the patch doesn't want to apply.  I don't see anything
> obviously wrong, so it may be an issue in my side?
>=20
> 	Applying: futex_waitv.2: new page
> 	error: affected file 'man2/futex_waitv.2' is beyond a symbolic link
> 	error: man7/futex.7: does not exist in index
> 	Patch failed at 0001 futex_waitv.2: new page
> 	hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> 	hint: When you have resolved this problem, run "git am --continue".
> 	hint: If you prefer to skip this patch, run "git am --skip" instead.
> 	hint: To restore the original branch and stop patching, run "git am --ab=
ort".
> 	hint: Disable this message with "git config set advice.mergeConflict fal=
se"
> 	Press any key to continue...

Hm, I did recently set
  $ git config diff.noprefix
  true
I didn't expect this to affect format-patch diffs
(since it doesn't affect diffs shown by git add -p),
or, if it did, I expected the designated consumer of format-patch
diffs (am) to understand this. perhaps not;
maybe -p0 to git am?

A quick search yields
  https://lore.kernel.org/git/xmqqy1o5op1i.fsf@gitster.g/t/#eaa0323ec4eed44=
1b37caf96e1b136529b298dbac
where you're in the thread and the maintainer says "queued" for a patch
that would ignore noprefix for format-patch for this reason precisely.
But clearly not, since my patches were with noprefix=3Dtrue and came out -p=
0.

Best,

--v5trmz4nkbnnijz6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmLPg8ACgkQvP0LAY0m
WPHbZRAAkszJlcE94ad5Mb439Xl21vIn3GG6ki+7SaHCpHgy6NNua98QATBkmMlV
ldvRC7QcZSHVtRlQJNZp5mZ7d+W49axlJbzmbenhVdv9VOwOf76WcAIMVXvNAgsr
PRHQBHCC4AZgrdDGKKF1PWkVtVNEwmndpdw9Q4jdXtq4Si3xf9nol4welS2I9s0M
xqshmY5wYScqfXnXeRLV0n8bl65s6bizlZRGuVw6Dc85lpNDZExfU5x+I1XY7g2E
ZC+5YTnBW5T6mPktYVKfrjE0JBugUODcNDz/oOxHmj21xDwVJARu3glkWDcVDC+c
MxFQKVXHy8sdpuBOILcpbCoQ2gqZlKgHslwDtiBEEsMLIDn3rPlN234SGFculwv6
/zuuMUFnvIQHgoe1VuEo6uIm0+fO/Ctop+FeBU9TbsM4Jt1PBpxCAciEJk7xEVG7
XlmC+NEoPM+WCIdTaqO4sd4ydbuPsP/ZWlHuLjnHecaU4amlzC2kZa7XnMtqR2/w
QlJDy07zmZTGZkosceE4iiDwCAQwYgUy2INVlnXK+l8K94gEzFpoVeWo/vJvD3WL
TTQKddGq6sJJJ3p0lQDJBqwiWDgChJE/dbEXonOWznKp8FknDiVidbXxGeXBBy2c
6bnE0D3HS8/xNVSycYYfEA5ONGSA0TG0PmxGzWGX0QYjdg8puDI=
=aVhO
-----END PGP SIGNATURE-----

--v5trmz4nkbnnijz6--

