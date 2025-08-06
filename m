Return-Path: <linux-man+bounces-3349-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE1B1C256
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 10:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86B981849D5
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 08:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90140288C9F;
	Wed,  6 Aug 2025 08:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="Y/nJ8tc7"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E67F217F29
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 08:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754469647; cv=none; b=Kn/taTpfjQseyQ6I8SGKU5VVarhDMdhaF65f4JW2STit11OMFqc6mJKYqg29jQWz8+nqf/+rL1EozDBtsiFhGiaAH0QNJHt0Kmfnnb3TQDz1dZJRQOs7ycGpDxZFqG1N6r4QDUPwAHgYK9PusA6elIiFjj8uF8h8ThfxsjCoi3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754469647; c=relaxed/simple;
	bh=QdHc6CMXfKtDUEoHJK3jL3GDT1bItPwT1Z92/4sLMXc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D1qP3CHmsytwHL3oPEDF16eahEjScFhEROyh97eglLrw4h96fFQeYOgSiohCqZDoPBPGyQW9ETZQoHgg8qihubs4nlv9QM4SnDJvSeOP4Feav7m2HtVljBf5/kQ0Sg9WGdtZixzrsG7y/NKn+OjH0ZhEI/CDiV0TF3NE3XIFfeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=Y/nJ8tc7; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4bxkJn1S83z9sjF;
	Wed,  6 Aug 2025 10:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754469641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dzxFAa8tHZsGy6jR70j46BCsUZReqGo8wSNpm+RiaU0=;
	b=Y/nJ8tc7ob6f4KEWOTglKm8xz9pl+Am135XG9NjNYsGVK5aoGX//pXlSi7ts4wMwNgnJty
	nvf+oyJxRJ30CAOUIF5Ghu7HvTUrXc332yzhYusLN5Otn5o70YERf/UZYvcRbdE1s3QBnD
	i4DMNG54Bjb8zEBjKfVFpZ2c48aH2EPe5MikGYDl/aNSS5jk7jIuaXewLVnxQDBxl2CVnk
	WGoEehJzO28bwfpn1jtElhIYiP6lNZ6a1cv9Hts/Kd/WgzoZ1dp5/T8pWV7gqyRgct7OHd
	A+o9FLYYoMkbgEJjY594ROYlck+fJoauo4kkIyTlRm2d+59BkuaiFL5I0Rfzug==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Wed, 6 Aug 2025 18:40:32 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Askar Safin <safinaskar@zohomail.com>, alx@kernel.org, 
	brauner@kernel.org, dhowells@redhat.com, jack@suse.cz, linux-man@vger.kernel.org, 
	mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
Message-ID: <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bznm5ggv3epspmlo"
Content-Disposition: inline
In-Reply-To: <20250806075021.ndodyx44xsyzxcu6@illithid>
X-Rspamd-Queue-Id: 4bxkJn1S83z9sjF


--bznm5ggv3epspmlo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
MIME-Version: 1.0

On 2025-08-06, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
> At 2025-08-06T10:45:03+0300, Askar Safin wrote:
> > Also, when I render this manpage using "man", I see this:
> >=20
> > > that the  underlying  file  for  the  file  descriptor  aux  should
> > > be  used  as  the  parameter  value  directly;  FSCON=E2=80=90
> > > FIG_SET_PATH_EMPTY  indicates  that  the  underlying file for the
> > > file descriptor aux should be re-opened by the filesystem
> >=20
> > As you can see, "man" breaks word "FSCONFIG_SET_PATH_EMPTY": "FSCON"
> > appears on one line and "FIG_SET_PATH_EMPTY" on another line.  Can you
> > somehow prevent this? I. e. to prevent breaking of API names. This is
> > very annoying.
>=20
> Yes.  Use the `\%` escape sequence to suppress hyphenation.
>=20
> groff_man_style(7):
>=20
>      \%        Control hyphenation.  The location of this escape
>                sequence within a word marks a hyphenation point,
>                supplementing groff=E2=80=99s automatic hyphenation patter=
ns.  At
>                the beginning of a word, it suppresses any hyphenation
>                breaks within except those specified with \%.
>=20
> (This is a *roff feature, not a characteristic of the man(7) macro
> package; that is why groff_man(7) itself does not document it.)
>=20
> Thus one might say:
>=20
> .B \%FSCONFIG_SET_PATH_EMPTY

Is there any way of knowing how long an identifier can be before it's
necessary to \%-ify it? I don't know if the man-pages folks will accept
a man page that is just full of \% for every identifier (and there
doesn't appear to be any rule when it comes to existing \% usage).

I guess groff has some typesetting rule that decides whether or not to
do hyphenation, so there probably is a number somewhere, not sure if
it's documented (or guaranteed).

> Regards,
> Branden

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--bznm5ggv3epspmlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJMVAAAKCRAol/rSt+lE
b2QuAP49s8jQq3ZDVnk9Dqk1cqf6ZGuI+4fumV91moMVQEQv5gD+I1OHHL2rg+sM
fEZC7dT0XYKtbJU4voYhDLWhUE36ygc=
=vcjt
-----END PGP SIGNATURE-----

--bznm5ggv3epspmlo--

