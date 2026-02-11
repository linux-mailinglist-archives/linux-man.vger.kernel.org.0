Return-Path: <linux-man+bounces-5123-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM26CGeZjGkhrgAAu9opvQ
	(envelope-from <linux-man+bounces-5123-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:59:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF311255BF
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAAB73011BEF
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318CE2727E2;
	Wed, 11 Feb 2026 14:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="RIJU5UXo"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAA51D5147
	for <linux-man@vger.kernel.org>; Wed, 11 Feb 2026 14:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770821986; cv=none; b=bGOxkY7Bshn6Rz85K3vGH2B3tbqIctyXYO7fRtS92dOttqh6C8E+BOSjflG0qMPQyxzzp+h1cdiQNSTlZpqL/GTRCztKMeRJTKt4mDmENs88q96kfitKqxi/MuqaROt9Y1PU4Si2Z0wNMCnjZIrsOuZQI9jdseeMMBRkkEyD12k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770821986; c=relaxed/simple;
	bh=CGbpZgtumfQEscv7gHDzqRjJccNcfrYOvYTFjV9Eys8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iGATJXvivSiv0jrQWZKxaIRcEXJglXP5cQOzrv7DP6XuxUa84mlEPk36mHrMNy3576zH66jCg6edgio+HlyPH7oeK5FlY2jTKCHsUhVg3W3/xTZ5VfodohYxuZyWbV0zfGw+CBMBkB61VSumz7fUWZFMSRnSXrZ9pendyO8KkQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=RIJU5UXo; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770821981;
	bh=CGbpZgtumfQEscv7gHDzqRjJccNcfrYOvYTFjV9Eys8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RIJU5UXoowsPSMIj7E5YBeqBgjJNfk/PjJJ1R/8jtGPuLYS7f1+2T8owFjSPjkHCh
	 o9SpAAmCEjZHeSD7YiWbydnNl2isRne7svniIGk+iGs+rArteHKZj8BbE4Roak4vMs
	 VbfK29M9erhLGIRrzYa1nbCp2CA00YMedrbeW4yqBKVn+LXgF+8+U6ZgfkKpNBtXRh
	 Sz2IQBojHQRTHI7RGQUyNmxk9YZ5bsAi+KJHqKoyoqZ8lWSmBzWhu5hXJ6OO72A3Lg
	 UIfUNxpV5qr7ji9vT8YtW+mo/Zco+hUt9QCSY9VQW8EaNjUzHUVA1pUiztVZS/EDn5
	 z/RfQCmvzfPhA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id AD3731872;
	Wed, 11 Feb 2026 15:59:41 +0100 (CET)
Date: Wed, 11 Feb 2026 15:59:41 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7] futex_waitv.2: new page
Message-ID: <ok7zluffntc26pdbaz6smbpm3rl2o5gj62o7pd5atznzzxhsj2@tarta.nabijaczleweli.xyz>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
 <aYyYAqzaRovxMMEB@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="huazex6ojqg7n44z"
Content-Disposition: inline
In-Reply-To: <aYyYAqzaRovxMMEB@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5123-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabijaczleweli.xyz:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tarta.nabijaczleweli.xyz:mid]
X-Rspamd-Queue-Id: 6CF311255BF
X-Rspamd-Action: no action


--huazex6ojqg7n44z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 11, 2026 at 03:55:54PM +0100, Alejandro Colomar wrote:
> On 2026-02-11T15:44:20+0100, =D0=BD=D0=B0=D0=B1 wrote:
> >     -+	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val, timeou=
t);
> >     ++	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
> I don't think it's valid to call futex(2) with FUTEX_WAIT without
> a timeout.  Is it?
Correct, it is not. However,

> I think we need to pass NULL explicitly.
if you pay particular attention to the second pair of letters in the
futex operation, you will no doubt come to the conclusion that we don't.

>_<

--huazex6ojqg7n44z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmMmV0ACgkQvP0LAY0m
WPGWWA//Q9CT9zlh7gRbIpK5aY/5qlPfs3hAgqBb/Wv83y5M/6N/osev2xVYdlNh
lp9dzgPR8PEItB7H6uHKO6qBQ5MNMdSOLwp3M9d5hdcAFONK3fqQt0wwWsedpS8s
SL2Iaf/puCkGr3h+37wFTrjsUJ9gfN9SRunXTn/foANSh+pVsl8/eSvQaVPuo1wv
q9/vyKFcHCYkQYJVwsiryk5rG69OcvK0WIHhZr9/RGJrFjmXOO61OLYEi92pVKF8
H+JKPB14yZSqI/3ADX92c68UsaMXnhW8P4Z252QlMLVAicC5dbHYQS7fluDNNlf3
N+/87OUqk2m0C0hDdWXMxkth4uFYLiyrBizwPI0+40p/XvNWiF5tU6PzdmvqLFy8
bPlep729jQvi7AwxjG8qEKJxeRuPQ9fBbZHepwDBfV1SonBtWDC9UavQmyt+pykZ
zS1mq7KKQy08PGLXDrcXFWHYJ+9jV961jaUDDoifl3ydtLvGzzM82QNNS+dSlHm6
YGFzP7Idz8E9TZdDroY1h6o5SPPZN8p4CE+U6aMObB0MuvlkOSJEtpIlSz49g/iF
9eYFKJHESbl4lrle2DncuMY3vDv8en5agL1z79T1NI87sKopSLaYGgbvOfedNGCY
cZt/XTmLAycU7/miAPcZwZcjc0Kc7antiIq/qTKQULdZUwBKGo4=
=RA+f
-----END PGP SIGNATURE-----

--huazex6ojqg7n44z--

