Return-Path: <linux-man+bounces-5313-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2L08D0qM1mnzGAgAu9opvQ
	(envelope-from <linux-man+bounces-5313-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 19:11:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D02653BF568
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 19:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0002F3012849
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 17:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1CD3D1CB4;
	Wed,  8 Apr 2026 17:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5J/4MwN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE6835B658
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 17:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775668293; cv=none; b=SZAwAzvcNly3xA696+FAKWk9FE0TCh3kenqn3AZYXo8ODMO/+culsiZa2raxhzdIBAyrihLRa2wvitYbP2XOAyk+dgcMHV3glvu3NqzMWYbs9LrbLm5DeWI5IUgR0c7jxPhyDCNf4ZAQFR9FX+kZTWTLli7LJ3n3OmSI1wVlpOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775668293; c=relaxed/simple;
	bh=dgdhtEhvzpfil7Fo46Vq/DspJyW43+cbClKwBh9iV1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NQ353MqzArOvjdAH7Ab5svSCpYG7otRewsISraMzK0hiysgufDIMa+GtHE0Jpr2nrjwB6VAorW+7cQgCDSfxsfEfunA/ShqJnL8y5tkwM45NQITulFNaJ3yxW9ywtx3pe5oEtYtHq+MJLAhB9Os4OT8Xu0F3iSnb0tfG9R1OmEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5J/4MwN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E82AC2BC87;
	Wed,  8 Apr 2026 17:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775668293;
	bh=dgdhtEhvzpfil7Fo46Vq/DspJyW43+cbClKwBh9iV1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b5J/4MwN4T1yTKFAVS64cORB8UMVP1+PWtZBrKxZrEn5hZ37b6ELlXVx5SR19MIcN
	 xkVh6fP45Inmr2ZDvPvyNby/W++tfyQYFwj4wBZpUJl9oDR6A3Xf4W711swqH0sH+u
	 3rCeKcmXSBmdoxj7ChfF8AkAswl+aq0fwpzdzyjU27s0bA3iyd6Mq52ipicXsDyj5H
	 GZxPMcuXWm7+px0k/iidindoOvA5gfC7vOGWqhzsqbEfDbyVGOMPNFGz499feoHag4
	 XFNpSOV6s+DuCzmQH+fExUE+BpnBl7I3TSgYLLQu6fj1M91sZWWbIphMIGoShWj0/M
	 JVy+CfFGbQ3TQ==
Date: Wed, 8 Apr 2026 19:11:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adaK2wiS_ntIORwh@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
 <adL41g1HDqiFMQzA@debian>
 <20260408.Vie1tai4eeco@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zgfbv2win3szwy7y"
Content-Disposition: inline
In-Reply-To: <20260408.Vie1tai4eeco@digikod.net>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5313-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D02653BF568
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--zgfbv2win3szwy7y
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adaK2wiS_ntIORwh@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
 <adL41g1HDqiFMQzA@debian>
 <20260408.Vie1tai4eeco@digikod.net>
MIME-Version: 1.0
In-Reply-To: <20260408.Vie1tai4eeco@digikod.net>

Hi Micka=C3=ABl!

On 2026-04-08T12:57:05+0200, Micka=C3=ABl Sala=C3=BCn wrote:
> > > @@ -68,8 +68,71 @@ is a Landlock ruleset file descriptor obtained with
> > >  and fully populated with a set of calls to
> > >  .BR landlock_add_rule (2).
> > >  .P
> > > -.I flags
> > > -must be 0.
> > > +By default,
> > > +denied accesses originating from programs that sandbox themselves
> > > +are logged via the audit subsystem.
> > > +Such events typically indicate unexpected behavior,
> > > +such as bugs or exploitation attempts.
> > > +However, to avoid excessive logging,
> > > +access requests denied by a domain not created by the originating pr=
ogram
> > > +are not logged by default.
> > > +The rationale is that programs should know their own behavior,
> > > +but not necessarily the behavior of other programs.
> >=20
> > If I understand this correctly, the default is to log after fork(2) or
> > execve(2), but not before.  Is that correct?
>=20
> There is a distinctions before and after the first execve: once a
> process sandboxes itself, by default, every denied operations are
> logged, until it calls execve(2).  At this point, in most cases, it is
> not the same executable code, which means that this new program may not
> be aware of the restrictions and may try to repeatedly do some denied
> operations, which will not be logged by default

Oh, true, I got it reversed!  That's probably the source of my
misunderstanding.  :)

So, by default, before execve(2) we log, and after it we don't.

> > > +This default configuration is suitable for most programs
> > > +that sandbox themselves.
> > > +For specific use cases,
> > > +the following flags allow programs to modify this default logging be=
havior.
> > > +.P
> > > +The
> > > +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> > > +and
> > > +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> > > +flags apply to the newly created Landlock domain.
> > > +.TP
> > > +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> > > +Disables logging of denied accesses
> > > +originating from the thread creating the Landlock domain,
> > > +as well as its children,
> > > +as long as they continue running the same executable code
> > > +(i.e., without an intervening
> > > +.BR execve (2)
> > > +call).
> >=20
> > And if I understood this well, this changes the behavior so that fork(2)
> > is ignored, so that logging will only be enabled at execve(2) but not at
> > fork(2).
>=20
> fork(2) and clone(2) are ignored, only execve(2) flips a bit and may
> change the default behavior.

So, this is the reverse of the above.  Before execve(2), _EXEC_OFF
doesn't log, and it logs after it.

> > > +This is intended for programs that execute unknown code
> > > +without invoking
> > > +.BR execve (2),
> > > +such as script interpreters.
> > > +Programs that only sandbox themselves should not set this flag,
> > > +so users can be notified of unauthorized access attempts
> > > +via system logs.
> > > +.TP
> > > +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> > > +Enables logging of denied accesses after an
> > > +.BR execve (2)
> > > +call,
> >=20
> > But this is the part that makes me think my previous understanding was
> > wrong.  I had understood that execve(3) already triggered logging.  So
> > what does this enable that wasn't enabled already?
>=20
> LOG_NEW_EXEC_ON means that logging will not be disabled after execve(2).

Okay, and _EXEC_ON means log before and after.  Sounds good now in my
head.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--zgfbv2win3szwy7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnWjDEACgkQ64mZXMKQ
wqlYhxAAhwU31o137SoOK0JRf4XienZYb5qma+FxWZ2l/RbyOTtfVDdsopfmMG/y
sjhfrnmhAHS+1C8jpe7HTiiA5SZsRxjSHMfo1hLUBIUPkAhZzyO3wEQRLhGnBaBo
ZqolkhDXpP5bJNphc6PZINodsWWvaOJlo8ErlcUtaT4YBar90tqLL67yomTdSkYm
zZ5kPp60vykhh+2soJy+JR6AtWEiJb5EEuyw2zcJchN5FmEuFM6x1eHsa1oQ03jM
YzeMN8mjegFdPE1D1a4O9YqeR4GBtsJ+CNNmk8xZtoQFwj/2tTtmxrv3+qMEmEWv
abyIHqh+NT5xjpbp50lbqYRAb3XhwOrBtfDSeNGvlpIqOpidOz4XXsSXxaPwkt+8
xlPmxH2S0YbApiftNCdOJZXAyU74t4BIty6BXyuVRG6Js18Eu9nLeEQB04HNKLBl
574CRDCvlYlCDrdJeNMeMf95xLvSqnLJ/+llnj7IyMd1p43Ht12zJjRn8dtzhU9j
dysAWdvUH1TBVTKcNxGyYY70B8+0QOebv5G5Mnwnpdd/uvNqLYKEqdI/fBr/yWKl
L+Q5jMyrMCCcN6cTtJNQ0OKC7xJr7iNIRi8ZeiWbYQQAQoSdEGgYYqBkmDHu3yzJ
e2hy21cAQptBuPjAmJKC62zaC0SxZKjtx23qNr+jPxdHBqWutlg=
=n/99
-----END PGP SIGNATURE-----

--zgfbv2win3szwy7y--

