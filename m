Return-Path: <linux-man+bounces-5638-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEmeB2wJGmo70wgAu9opvQ
	(envelope-from <linux-man+bounces-5638-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 23:47:24 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1860901D
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 23:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08997301BEF9
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 21:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649B63B6C0C;
	Fri, 29 May 2026 21:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqda90Ow"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6A037FF56;
	Fri, 29 May 2026 21:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780091157; cv=none; b=vGgmj4tUBhDFr9I9s1LNzV3tpnp6d3EjCWguorsgl3V4ZIINDqk91MHXThNMFVgOY6Oa22Ww2tAmWzgOyn7GEE15tOHMiGemr5Mkvnl8JbeujOSEFB2Q7fZ1bHM28vBJrnuQd8xPL1yT98T7xeCJpAJWr6cP9ZCg+OJH9+UzHr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780091157; c=relaxed/simple;
	bh=poqxh7NLTFYZcjYulQX+Vrk/eg8ajSac+Md3ic1f80s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lTrjwdbtCzcX3q6OWM2/pqlcudluAuZLNN1ZXaylnEppAT7sGIdupPUB7YXbg9o8b+W0uGCqLVy/6kIQ+KjJ/QAIHWNSIARs5wieG8k5ffut1WEUfPMi1IAykDbrl5I7t3TUcAJT4OYZUdsqraMK6H+5STJiKpjUquAGPezcugk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqda90Ow; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6992D1F00893;
	Fri, 29 May 2026 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780091155;
	bh=AcoE+tfSdUMDyLsGkXkdF/taVcd5H/NavV41QRI2+iQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jqda90OwAgaqGEX6wvs8CNPy+8st/ttvklCR7BfsVbxviyKtDGy8yOcrW8XtJL1I6
	 uCOTbv1GUBH0x83sqTj4x9ijswKfWaDPW69/57cxNuCGaYLATKxPO3dHjYTNq9K4x+
	 iEyBDNHMUAn2rXfwmBZQOAQpXViM2P2y+Lphwoxr0Al+mSCT6NOIqReZAiBN6erukC
	 /8d0YLuOu3uFfSnxzzRIWdu54mxi6LewQeOUsPQQ6llidG4jz1lfhs837nvFGAF8xS
	 Ze4jlSOKGxSv/Z7uT9kYFl9aW5nxe91ZNg4e/kYWiGM/Enj2fc4/Ha4DvfLTaJDWyc
	 3ey+LMGkiWxQg==
Date: Fri, 29 May 2026 23:45:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Jann Horn <jannh@google.com>, Jan Kara <jack@suse.cz>, 
	Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/fanotify_mark.2: AT_FDCWD plus NULL path
 doesn't work
Message-ID: <ahoIuOuC7q5M24dV@devuan>
References: <20260529-fan-mark-cwd-v1-1-cdfb3b5b6d7c@google.com>
 <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iifzi4qwfi63we5l"
Content-Disposition: inline
In-Reply-To: <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5638-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,gmx.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8EF1860901D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--iifzi4qwfi63we5l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Jann Horn <jannh@google.com>, Jan Kara <jack@suse.cz>, 
	Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/fanotify_mark.2: AT_FDCWD plus NULL path
 doesn't work
Message-ID: <ahoIuOuC7q5M24dV@devuan>
References: <20260529-fan-mark-cwd-v1-1-cdfb3b5b6d7c@google.com>
 <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>

Hi Jann, Amir,

On 2026-05-29T23:38:11+0200, Amir Goldstein wrote:
> On Fri, May 29, 2026 at 7:27=E2=80=AFPM Jann Horn <jannh@google.com> wrot=
e:
> >
> > The fanotify_mark.2 manpage claims that AT_FDCWD works with a NULL path,
> > but there is no kernel code for that - in fanotify_find_path(), in the
> > `if (filename =3D=3D NULL)` block, the fd is only used for a normal FD
> > lookup.
> >
> > This was also already the case when this manpage was written back in
> > 2014, so remove the bogus documentation.
> >
> > Fixes: c200b422d ("fanotify_mark.2: New page documenting fanotify_mark(=
2)")
> > Signed-off-by: Jann Horn <jannh@google.com>
>=20
> Hah,  never noticed this.
> Apparently, hallucinations already existed in 2014 :D
>=20
> Acked-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've added the author of the fixed commit in the recipients.
I'll apply on Monday or so.


Have a lovely night!
Alex

>=20
> > ---
> >  man/man2/fanotify_mark.2 | 8 --------
> >  1 file changed, 8 deletions(-)
> >
> > diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> > index e561ffd21..a3b77537c 100644
> > --- a/man/man2/fanotify_mark.2
> > +++ b/man/man2/fanotify_mark.2
> > @@ -560,14 +560,6 @@ defines the filesystem object to be marked.
> >  .IP \[bu]
> >  If
> >  .I path
> > -is NULL, and
> > -.I dirfd
> > -takes the special value
> > -.BR AT_FDCWD ,
> > -the current working directory is to be marked.
> > -.IP \[bu]
> > -If
> > -.I path
> >  is absolute, it defines the filesystem object to be marked, and
> >  .I dirfd
> >  is ignored.
> >
> > ---
> > base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
> > change-id: 20260529-fan-mark-cwd-1c760106eff9
> >
> > Best regards,
> > --
> > Jann Horn <jannh@google.com>
> >
>=20

--=20
<https://www.alejandro-colomar.es>

--iifzi4qwfi63we5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoaCQcACgkQ64mZXMKQ
wqkzew//UtRs6a5IKolqwnQlnQdG1WpGhmJMeDziqCMW1df2nEh/obDXhqDoqWTW
imXqMfW8MVaFFCmkNw2+AiGY9VdtItxCo9MAjo6C/PgJLj93O1UtcTXDP6ai1w4s
hI68IYUq2EmI91NKYOBm8pSlzYIum1ohsWkw3tKmXxGqu1SlZBA4TzIHpQvsxLnH
uCSy3ruFFwcdgnJMH8WTU71oQwS9FQd7mda74YmzFfj0iFOG3lk5tncy+ifQYPF5
Qb1vR50JlYUG0vvPd7MGtFCK/I/JCqeyFr99fISEl3o664w5S5+TrHmMYzStg2I7
EW3WPoHpUiFNpWawVNu9W9fWuqAOCvUrUzfk7VKPRkVUIK4PR24MYhhS+mtQmr+z
PZVUjcs25OVHNi44PF2XSX5nxMY7kddHlFVrm+iRtzKa4+bkP5XMQ6ePYaIicwzg
MNUmxCkJedhsP0pu9qUNRJqgtHsuMdv50Q4n1RhQRwyk8WjgxRe1tYMtUk0cqVM3
OMXbvjDdd+bsCzuLnhT5AGGZrouv8XapsdqeiW2mG77bpZipw1d0vxLniL1AkzlQ
ZVQgBwjjqZCm/QU7duQpt9KQ2TU5pS+eyOsaUgUlFHQFjEkVFuvdVOnfWamnGzz4
ki1u6rQKuBeqj6YMl5MLGMRxgp4Q5j/bXMorR1CDb9yPrMwi/8A=
=gXT6
-----END PGP SIGNATURE-----

--iifzi4qwfi63we5l--

