Return-Path: <linux-man+bounces-5291-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJF/KIlnyWm4xwUAu9opvQ
	(envelope-from <linux-man+bounces-5291-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 19:55:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28A35373F
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 19:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9F9FB3002B69
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 17:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E770236404D;
	Sun, 29 Mar 2026 17:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUV7tXXN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8C91A680A
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 17:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774806914; cv=none; b=t4IHApq9SJlboBzMDaUlb0KptxSkdZPqnrTm7nYKFP3I/CodZT134lhFzzwXiufDx1eHUePBWN4L1pTXXWB3Lw6mzMla81fJ9XPPpin5uiEVybW1+/R0U9FYf8vccSG7GeOYGq/2WoFMWeMWfdaAeEmRx1Y0wvqD9EE3+Z8RmEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774806914; c=relaxed/simple;
	bh=0gZOik9rxEVJaQlhb/zQ6hr1GP5wEmn9mqhcCA+UXB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gTYYE7p+lV4D8EIfyuAD7Y1+0VHQTZIi8l3YcgsWf9rBenX+FvX9TGL7hHtt2Rb+03Y+7+Bw+UO3wJRuQa+Y0mFQIRfNAQElxj77vcZr3b7T1MCd7ZaTmEkc7cmL3UslOe+RvXTSvW+D88/AqMm9TgC7C8uA7af9oMRKyBjCzAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUV7tXXN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF9AC116C6;
	Sun, 29 Mar 2026 17:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774806914;
	bh=0gZOik9rxEVJaQlhb/zQ6hr1GP5wEmn9mqhcCA+UXB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RUV7tXXNHArJI+zncGnCKsK7UdpYEY5I5lc8iwf3SKIIrmVF+I30zv4B42Znfj9jk
	 HXPngDoR/lTdMB5JMPqNi4UBAcGCuDmvTZvycMGQY2NY0dJoMPLlKi9s5cq3oYyVgF
	 bvLDR2GRFz2wNwWXPwVZGA0wFejj+Q8T1Om8kdqMZsWUqQSe3ppa7V2RyQbzEQCtVU
	 CU0qQs5fgPjBY6RLNqgKQoS/h9S1t3T2kJj3j+74QEwqjUEleF1RbUecdNTFDelCUy
	 awFkBbQqWzt/3tTP7DbJmUa94DTv4tpxYZkac6hcQsZz5juvnQvY9sXQJJOyqEIl7s
	 A4mYYXNqjTd/w==
Date: Sun, 29 Mar 2026 19:55:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <aclluaJWyOGf3KEP@devuan>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <20260329.5167693e9f38@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6vdhujg6sxjnj3m"
Content-Disposition: inline
In-Reply-To: <20260329.5167693e9f38@gnoack.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5291-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 9E28A35373F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--p6vdhujg6sxjnj3m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <aclluaJWyOGf3KEP@devuan>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <20260329.5167693e9f38@gnoack.org>
MIME-Version: 1.0
In-Reply-To: <20260329.5167693e9f38@gnoack.org>

Hi G=C3=BCnther!

On 2026-03-29T15:42:03+0200, G=C3=BCnther Noack wrote:
> Hello!
>=20
> On Tue, Oct 14, 2025 at 11:27:26PM +0200, Alejandro Colomar wrote:
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >=20
> > Hi!
> >=20
> > I've already been DDoSed in my own home server by AI crawlers (which is
> > the reason I decided to move the HTTPS server to port 80, just to break
> > links and stop the madness.  I could install Anubis, but I'll resist for
> > some time.
> >=20
> > So far, I haven't noticed any contributors using AI.  Probably, the
> > combination of relatively few people contributing documentation,
> > combined with still working on a mailing list, has helped us avoid the
> > wave of AI contributions.
> >=20
> > However, it's better to take preventive measures.  AI is entirely banned
> > in this project.  The guidelines are clear and concise.
>=20
> I know I'm late to the discussion, but for the record, I would like to
> throw a scenario into the discussion that I consider a compelling use
> case for AI-assisted man-page contributions.
>=20
> As you know, the Landlock man page work mainly consists of taking the
> existing kernel documentation text and putting it into the man page
> form.  That means that when producing the man page patches, the main
> additional work is:
>=20
> (a) formatting existing text in groff
> (b) adapting the structure to match the man page format
> (c) copy-and-pasting wording fixes between kernel and man page tree
>     (in either direction)
>=20
> Because this is tedious and time-consuming, and because the added
> value over the existing kernel documentation is low, Landlock's man
> pages tend to lag behind the kernel documentation by many months.
>=20
> Coding agents are very good at such reformatting tasks though, and
> that would make it potentially feasible to keep this up to date much
> faster.  (with the rough process being that you point a coding agent
> to the man page and Linux source trees and ask it to carry the
> documentation changes over in a way that respects existing man page
> style and structure). [^1]
>=20
> Since the submitted man page text is the same as on the kernel side,
> the main work done by the agent here is in Groff formatting, and in
> finding the text in the kernel tree and putting it into the right man
> page structure.
>=20
> For inspiration, the Linux kernel itself has, after substantial
> discussion, recently started adopting a different policy, where
> AI-generated contributions are permitted, but where it is still made
> clear that human contributors must review all AI-generated code and
> have the same responsibilities as for a normal human-authored patch:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/process/coding-assistants.rst
>=20
> I realize that the Landlock use case alone is maybe not enough to
> change your stance on this, but I feel it's worth at least pointing
> out that there are use cases with potential upsides.
>=20
> I think that with a Linux-like policy for coding assistants, it would
> be easier for us to keep the man pages up to date.

Thanks for the suggestion.  I'm certainly less worried about this
specific use case than for anything else.  But I still don't think it
would be a good idea.  And the ethical concerns remain.  Let's keep the
anti-AI policy.

> =E2=80=93G=C3=BCnther
>=20
>=20
> Footnotes
>=20
> [^1] An alternative that has been considered in the past was to create
>      a mechanistic translation program to create the man pages from
>      kernel .rst and .h files, but this also seems brittle and would
>      mean that the man page structure would likely stay close to the
>      kernel documentation in structure.  In my understanding, Linux's
>      eBPF helpers use that approach.

Yes, bpf-helpers(7) does that.  I hate it, but I prefer it over AI.  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--p6vdhujg6sxjnj3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnJZ3gACgkQ64mZXMKQ
wqnomA/+MzWi12YLbr33M94Cj1KSg0p71olw59Vv1r2KkbUch4S+lIz7GflqA4CR
HQu2PmQGl+55Y2Za+EBCAa3ywCEEXYV58i1dPUA1ngSoh4qnZ8LqD+8A7ni+EhS0
jufFVOyI8jCDM2TaU2QI9liiBQPQNpM5YtMhmjzzH5wsmaX78hjvDCsed7hwCTnJ
cADs6rnLLhzIGQw1x4JM9q7O57aXKA8Q/np9A+RIEgIstVh6k+muMbYD8tZs/ZJT
MpHW55L6XSmcsX6VobOfzOUllex9ngQtgTNLr95RET9Him/8/pD8uHaui2OrkpzB
7ey3jkGwU7yhiREx7e2JuTWka0tEkcCISpgBNsreyxAxCTnF7mpZdaCu3ksNLgwV
Q4P0OiA725VL4mLoIOrM9kPwy3LUS1EZDrVSh0fUZQY2P1fEw61wTVwsMIz2RarB
NWcf1ZdxCPMsOXSaXfuU+c48AezoS+hf0cXpQ+eaCKzLQ8Sk1OtXsBuyr/wp5sb5
BtaBlL6rFigALfwgF1+2Z6WuIgGvld4mNbwMOILhcGrzxmg/KX/cGKiMUjpwkUJO
xKH4sL62YFyv6qpSGT/9aB0JENlBdqlIcvfD9Hfz0xZdEQqOgVZF700piNQUS/rh
3Def7H/zPo6v+9NCHpj6OJ2Rab17WLTIZHOr20qqXuxGA6WKHpI=
=Mw97
-----END PGP SIGNATURE-----

--p6vdhujg6sxjnj3m--

