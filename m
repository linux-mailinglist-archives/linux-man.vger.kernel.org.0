Return-Path: <linux-man+bounces-5550-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GABkCyMNC2pN/gQAu9opvQ
	(envelope-from <linux-man+bounces-5550-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 14:59:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF9956D34B
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 14:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE43F30479A8
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0741644A735;
	Mon, 18 May 2026 12:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txnrFgmN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF55042EECA
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 12:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779108708; cv=none; b=QhrnBMNhrrRCZzrpUqGk/GknQMGSGhwKH08/839Tt6N0Iu7eiiiX5HBVFBV19YGX8tlOYYiIZ1S86f2Qnfa9Z+RVFBq4N8oxfvtI3yeHdvk/4ElTOEblEp9Qx8R8CGcX6MtBOq5nMlb6DCWwiHsoaj3X5BPSTgp8OZtfIVBpJTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779108708; c=relaxed/simple;
	bh=1XmJUe41SqTPAv3V8ijHtr230/ADVigjdaz1TcnSUM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j04b4ExrUjpPF1xSEzKxdbqSjNMv212jYc9lJ7spOM5YzRYP5rx2w9voHb3PgeIWu6UrX+9H+GG2xUXeV4xCrqfhiBR5mmeTThGC3dIwLx4FgUHhvBKb5mkYrYLC2AT81n1WwKUOiyz34Bax+Zy4eGK+j73VqKfyu6u7JCRFwZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txnrFgmN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0B9C2BCB7;
	Mon, 18 May 2026 12:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779108708;
	bh=1XmJUe41SqTPAv3V8ijHtr230/ADVigjdaz1TcnSUM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=txnrFgmN+HHj+cfnTnJTFJ3swBwpCtnw/r8GdoBz4Ox7Ru5j17sbwlgZ9uXyQeDU3
	 Y6pqwsQEJEmMgmy4VXBkvgsRuKzhXVdetaqJs2aaHeEdKj8shyivpsqTAmse/Ctu+L
	 ei2tcJm0Sj/3UClYJsRxH7ZkqGbSa3fIaCDQfkGLeDLG1r8clCZxGEBqWo5JPeh8JX
	 vcypLBDVs9C91hh5YJjNON30jDjLvueie4oT2p0Z3YtjCH9kUmwGAltfnJTPagI5n6
	 7DtAHFvhS6MQxhgG98Xll2fVIrw8NqDm+jpH5AeNds35Z7sl2JyzHpaEg0J2Tn9VsI
	 /7RJK4gX6IA+g==
Date: Mon, 18 May 2026 14:51:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kara <jack@suse.cz>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>, 
	Jan Blunck <jblunck@novell.com>
Subject: Re: [PATCH v1] man/man2/quotactl.2: tfix
Message-ID: <agsKOHLgfGkiyE1r@devuan>
References: <9d328eab7a632ac87f48bcfe88c0e5c3cca18d2a.1778951437.git.alx@kernel.org>
 <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bi2einkuh37g6342"
Content-Disposition: inline
In-Reply-To: <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>
X-Rspamd-Queue-Id: 8BF9956D34B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5550-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--bi2einkuh37g6342
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kara <jack@suse.cz>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>, 
	Jan Blunck <jblunck@novell.com>
Subject: Re: [PATCH v1] man/man2/quotactl.2: tfix
Message-ID: <agsKOHLgfGkiyE1r@devuan>
References: <9d328eab7a632ac87f48bcfe88c0e5c3cca18d2a.1778951437.git.alx@kernel.org>
 <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>
MIME-Version: 1.0
In-Reply-To: <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>

Hi Jan,

On 2026-05-18T12:20:50+0200, Jan Kara wrote:
> On Sat 16-05-26 19:12:08, Alejandro Colomar wrote:
> > It seems most likely that this was a typo, and that Q_XQUOTAON was
> > meant.
> >=20
> > Fixes: 1eeddf25 (2010-06-16; "quotactl.2: Major updates")
> > Cc: Jan Kara <jack@suse.cz>
> > Cc: Petr Gajdos <pgajdos@suse.cz>
> > Cc: Jan Blunck <jblunck@novell.com>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> Right. Thanks for the fix. Feel free to add:

I have more questions about quotactl(2).  In the operations that ignore
the 'id' argument, am I right to assume that QCMD() is unnecessary?  My
assumption is because if there's no user or group ID to be used, it also
doesn't make sense to specify whether we want to affect a user or a
group.

So, for example, Q_QUOTAOFF would have the following synopsis:

	int quotactl(Q_QUOTAOFF, const char *_Nullable special, 0, NULL);

While Q_QUOTAON would have the following one:

	int quotactl(QCMD(Q_QUOTAON, type), const char *_Nullable special,
		     int fmt, caddr_t quota_path);

Is that correct?

Also, I wonder why caddr_t was used at all, instead of void*.  It seems
to unnecessarily require a cast, which could have been avoided with
void*.  In quotactl_fd(), since we need to use syscall(2), which is
variadic, I'll document the correct pointer types, instead of caddr_t*.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--bi2einkuh37g6342
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLC1oACgkQ64mZXMKQ
wqk1Rg/+I9TTiaoSOnA3xQEklFJREh8bNW4qin7fPd7Xiqeh0H2anahlgdca2P6w
lrYRiIE1fJuzoOUoEXm9m+H2j9XnSrYsq5fngiBqpkmU8hWm07NNWlAFs24DC2aw
ESVudEe+RtzM7QftHXObAXt0gryUPib0HMHeA0ClIGBH2EYzGsfU3bfISVxk7TTP
PI7jMNV/ehG6sgSy5Umlhqbw3/D/+ixE2ZW06h1o7pond0ogH6agLaEkP/q0odO3
ePdJq65wSEUYKjzcDCwRmVTWUPwrJwXQfHXvYcKUI60SsxYk666p8CFChQi1OdV4
uoN46a66ip/xRqPsj0W5LG4glpTdGZmA7L9LOkBNz/hmiTRHDTu617YFZtOS+k7f
ZPIlaOqnNwTYMuiZ+OmNfH2IBf4n9aRGKwpOTnfF07h858VKIt8IshENPQXLq995
r8vZRAtTGuWWMpJGlLRtdd5bHpFBfS5gyitMM6iG8h/d3Miy4UBhNpVksemtdben
VjLzl0YGaIGQJz161QVG6ZFlVfIWw12/vCI7TVGlRJJA2O9U5FhdOPqBuBzRX3Cr
yVJU72lsE6pCyD4R3qsO2BA6ID5Tb4EoUFMdub+zYDA9nXLqJQZ+pVhgaNbK9i7h
x4mdAL1cAAs8Z1AKXKvbxvvw4dFBvYL9HlkWC/ZCh+WYqoNP+KM=
=NCCJ
-----END PGP SIGNATURE-----

--bi2einkuh37g6342--

