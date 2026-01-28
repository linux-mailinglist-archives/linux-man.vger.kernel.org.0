Return-Path: <linux-man+bounces-4986-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NG2LXwgemmv2wEAu9opvQ
	(envelope-from <linux-man+bounces-4986-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:43:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12716A3034
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76361300FED5
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D28572F7AB1;
	Wed, 28 Jan 2026 14:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="div64zpQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97058350A14
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769610977; cv=none; b=gUd9M7Hp9VK1/vbdoUSCWkflDmgqc4lhXIHnMe/nkNaSW6M0F9oq6pWTlaxXioK/g08x6kAvy4kbvrPxxI69vr4WK3XAhwBsAZLqRfSfGWcSPKjiazAm4LPdkG8fbjD/vwVCr8h0Z69TaKzQJsyANeXbYh7+2Fsh2uCg2FlQt3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769610977; c=relaxed/simple;
	bh=264hLjfrHGRwoF3yLbTZb+8sVFuGsJhwU0nBopLkBdk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iZYjuZ6CIkF2oDN3vUnb2tO2YiE+oqI21+GtClqUhjAqSulAuRrIIRizMnQQ1xolWhT9DF5zZxmzhrVeVbo0CuMQAT1NPUK2LbszV2EnFb8CFNYIABFOpk2rHddHyTQFn89EpQpPMLlJ9Ip9UwIdLUKa34F1aHqVrU0YtKH0KEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=div64zpQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B09C4CEF7;
	Wed, 28 Jan 2026 14:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769610977;
	bh=264hLjfrHGRwoF3yLbTZb+8sVFuGsJhwU0nBopLkBdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=div64zpQfneiyCFaXB9VENYePJDOllrDdb6U9Eiey3JE1d1bpIe1JI5owFRVadp/g
	 DcjdRomxIqK9dhC3h50sPS6fJ8mW/k/FwBr4f2ykcUCk7nCBq7bKK1/33PUk1ohweE
	 iY0Vij9mO44I+kAI4pbWwDTmNUybt0Kc9l+Mk3oWIBMfUI0y2byzJi718iAPkGN2Ue
	 FD9jcYRhXCR628nBk7RAQT4TIsZdNZ/L7+Bj7CIq3ILAlZoXHqW9BD5Zr+Res7EEcU
	 5qQwlMUWAWcd4g8L7kdE4K773D4DoaskELsR/Osy9pFXl+WTX/YuM69JoETJGPCaos
	 bf/50jOR+/ukQ==
Date: Wed, 28 Jan 2026 15:36:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXod9_R2fYx7sXHp@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <aXixqbsZcY-tbCJ4@devuan>
 <aXmUPal6Owzv8eDr@McDaDebianPC>
 <20260128054805.4mzljvngjixsd22m@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ko46mwgyqifnzhme"
Content-Disposition: inline
In-Reply-To: <20260128054805.4mzljvngjixsd22m@illithid>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-4986-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gnu.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 12716A3034
X-Rspamd-Action: no action


--ko46mwgyqifnzhme
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXod9_R2fYx7sXHp@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <aXixqbsZcY-tbCJ4@devuan>
 <aXmUPal6Owzv8eDr@McDaDebianPC>
 <20260128054805.4mzljvngjixsd22m@illithid>
MIME-Version: 1.0
In-Reply-To: <20260128054805.4mzljvngjixsd22m@illithid>

Hi Branden,

On 2026-01-27T23:48:05-0600, G. Branden Robinson wrote:
> At 2026-01-28T04:44:53+0000, Seth McDonald wrote:
> > On Tue, 27 Jan 2026 at 14:47:40 +0100, Alejandro Colomar wrote:
> > > On 2026-01-27T09:20:26+0000, Seth McDonald wrote:
> > > > G'day,
> > > >=20
> > > > When parsing man pages, I've noticed I'm often only interested in
> > > > a particular set of sections within the page (e.g. SYNOPSIS,
> > > > HISTORY).  And since skimming through the page to get to these
> > > > sections can get monotonous, I wrote up a small bash script to
> > > > automate the process.
> > >=20
> > > Agree.  I wrote mansect(1) for the same exact reason.
> > >=20
> > > > As far as I can tell, no program in src/bin/ can currently do
> > > > this.  The closest is mansect(1), but that outputs the source code
> > > > rather than the rendered page.
> > >=20
> > > You could use mansect(1) for that, and pipe it to man(1) (or
> > > groff(1)).
> >=20
> > I honestly have no idea how that never crossed my mind.  Seems so
> > obvious in retrospect lol.
>=20
> I have ideas for tackling this problem in groff as well, in a way that
> has the potential to be more powerful and selective.
>=20
> https://savannah.gnu.org/bugs/?66401
>=20
> One of the goals I have is to automatically generate link anchors for
> all `TP` paragraph tags in man(7), because these are so frequently used
> to set keywords, literals, and other parameters (like command-line
> option names) in lists.  Roughly, these are same sorts of things you
> want to have index entries for, if your man pages were indexed.

That sounds useful.  Thanks!

[...]

> None of the foregoing observations or plans intends to obviate the
> utility of mansect(1) for anyone.  If it works satisfactorily, use it.
> But if people encounter limitations in it, and those seem solvable only
> by getting a deeper look into the formatter's brain (program state),
> then the time may become ripe to work on these tickets.

So far, I'm pretty happy with mansect(1).  In fact, I'd like to have it
even if groff(1) added that feature.  The rationale is that mansect(1)
gives me the man(7) source, which I can then format with any formatter,
so I can use it to debug an arbitrary formatter.

> (Regardless, I want to attack #62264 because string processing in *roff
> is pure hell, and inflexible too, because diversions can be "handled"
> like strings if you tilt your head right, but only in limited ways.)

:-)


> Regards,
> Branden

Have a lovely day!
Alex

>=20
> [1] And a great deal of forced learning due to
>       https://savannah.gnu.org/bugs/?63074
>     and
>       https://cgit.git.savannah.gnu.org/cgit/groff.git/commit/?id=3D52f93=
e69dddb39bbfbbf7c43e355538e35b8edab
>     ...which both taught me a lot.
>=20
>     You can (in groff 1.24.0) take an NMRI of much of GNU troff's brain
>     in vivo without needing to use a debugger.  I consider that a win.



--=20
<https://www.alejandro-colomar.es>

--ko46mwgyqifnzhme
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml6HtcACgkQ64mZXMKQ
wqkexQ/9E3fyHXRf0wh6NOp6HPNcodebIX8yJsuy0hv8IpcVwXVwbZ4MKlmIKqPM
EMNt7M4iMOQ0Yz5s+hXOAmLlMx48iawy+swXg0KP8yhUapoc98uh6ZDdL4V8gUos
3GlFAe+/z5q681gOJF+ppjqNfxC0TZFFSfP99HPoangRTFqkalQQiR4y423iR84j
6na/5dMZILZM1+/GQm6iF+9QnijP+5TKqdOcC7HCS2RHJCJ8D5CwsKiIn/AC1You
UxchIwLC1131zdbTYKHiSNPpnWZyItZVgOPuh1kGTKJWQMtdJSuQl6vLmupZor58
5krL2zg+mKUvl/GvwYKgnOeygkzOPUW+A6Y8Ff4uCheTHB3HupMmMhuOEFOexKGC
1HWw1xqVA5jD0kzouh9gtWI46rSFIngUGrVw6WqbvhzJf7P/EflFTmo367ItlEi9
yr8kR6aPhj4ML/S/Irfci8Km3TPuFy1XVHHjDORXaLEpzhLDmPITu2LoR7ZQs7Y+
h+4XK61hH4soAuQvPmj1Vn5EOo3oYJOlE59J9GvPQ4rRM1xLGIXjUNYWazZ7wYYP
ebUDkCPmPRzhBQOO/vwuqYxttGUw5Dky3K97t+O1i0JT93coYCPknGVjvF5Dy3Ju
y5ryEow1G6aoRi6u9DS16b+KvrYryUGU73XjX+k9Xdbjr3LSrOc=
=GdyJ
-----END PGP SIGNATURE-----

--ko46mwgyqifnzhme--

