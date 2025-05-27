Return-Path: <linux-man+bounces-3028-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DC3AC4E9F
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:23:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02135189AD2E
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6713026868E;
	Tue, 27 May 2025 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClR2t/Mw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272752561A2
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348617; cv=none; b=SJG4UmC3MOvXax812OHnLezZRt2B9lFd+0/NLzGJ3koeyxr4qJ1rqfFEhM36rKp68FC2DR5b8z0YyB3+FzzWxSm8n/JQ4LZr4JehfYQllyCtjL67SzKwxGKNFJvVPQ+RyM/VhD55yNvAuml7zpq0sN/c/SxuK0nzx1BgXFkC43k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348617; c=relaxed/simple;
	bh=YW1KSuj/z+Lb0YqVTqnEg3uPvdBm9Ai06U4FfjZ+Etw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jG1Oc38KFF9od9XhfAFgqQeTCc2rYJ+36xqhXpb8zoiWKNqXJnx66SIv1l6ma1d6UbWGyrzb0G8p5uR6OU6E2jy2LD2AxopoYKDDZUpENIyznzEOY86PmvOb994o+sBzGNaaRUqZMXvOL6D9/MxDYMlzdRj6IY7QjSHDcuGGgx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClR2t/Mw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE46CC4CEE9;
	Tue, 27 May 2025 12:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748348616;
	bh=YW1KSuj/z+Lb0YqVTqnEg3uPvdBm9Ai06U4FfjZ+Etw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ClR2t/MwXmOexlNVBt0G/vvveokoWL7jKfVPynrIE6TPL85VY2agD+1Eq3Abh9ax3
	 6+xOye7j/S25ROsgSM0OOMuxq5NY8AarQZZIq+pbATM8Dc7JE9tOUSMgNSUe++DYfW
	 yIUW3Ja20MO8fsPvehm1aGj8A8tRS/fAPOvWXSbRzx+fu31GGykituTHkZ84Cfvos6
	 IXHVvDSckDRWerHFXvi0/6aMcpc5q6dM+ie2/p4b48kqjwVyDRe9yCdpfmighZZdvM
	 DveuFgixGY8Ei59fkEyQbFK8qKpKIv2iFjCnkLnqgKAzfNFPLAx+8dskmjWpWaCrOv
	 +wAOt+71gxxVA==
Date: Tue, 27 May 2025 14:23:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	linux-man@vger.kernel.org
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <xea5hgyrqs7uktyp7awn4d7l7nn64k7jprrzcuwohe4iixxglx@fmyt2rav6myd>
References: <20250527115303.3304206e@inria.fr>
 <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4fxgmybd6to3wjuj"
Content-Disposition: inline
In-Reply-To: <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>


--4fxgmybd6to3wjuj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	linux-man@vger.kernel.org
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
MIME-Version: 1.0
In-Reply-To: <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>

On Tue, May 27, 2025 at 07:30:09AM -0400, Carlos O'Donell wrote:
> On 5/27/25 5:53 AM, J=E2=82=91=E2=82=99=E2=82=9B Gustedt wrote:
> > Hello Alex and everybody,
> > I stumbled upon this confusing text in the futex man page
> >=20
> >    Typical values to specify for `val` are `0` or `1`.  (Specifying
> >    `INT_MAX` is not useful, because it would make the
> >    `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
> >    limit value specified via `val2` is typically either `1` or
> >    `INT_MAX`.  (Specifying the argument as `0` is not useful, because
> >    it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
> >    `FUTEX_WAIT`.)
> >=20
> >    The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
> >    earlier `FUTEX_REQUEUE`.  The difference is that the check of the
> >    value at `uaddr` can be used to ensure that requeueing happens only
> >    under certain conditions, which allows race conditions to be avoided
> >    in certain use cases.
> >=20
> >=20
> > This has several issues, the most severe beeing the word `FUTEX_WAIT`.
> >=20
> > - How can an operation that only does wakes, ever be equivalent to a
> >    wait?
>=20
> My opinion is that the text is correct.

Hi Carlos,

I disagree.  Let's see FUTEX_WAKE and FUTEX_REQUEUE side-by-side (to
ignore the check of FUTEX_CMP_REQUEUE).


	FUTEX_WAKE:

		long syscall(SYS_futex, uint32_t *uaddr, FUTEX_WAKE,
		             uint32_t val);

		Wakes up to 'val' waiters.


	FUTEX_REQUEUE:

		long syscall(SYS_futex, uint32_t *uaddr, FUTEX_REQUEUE,
		             uint32_t val,
		             uint32_t val2, uint32_t *uaddr2);

		Wakes up to 'val' waiters,
		and then requeues up to 'val2' more waiters to wait for
		something else.

If val2 is 0, then FUTEX_REQUEUE is equivalent to FUTEX_WAKE, as Jens
said.


Have a lovely day!
Alex

> The operation can WAKE tasks.
>=20
> The operation can also cause tasks to WAIT in a *different* queue.
>=20
> If zero tasks are woken (val=3D=3D0), and all tasks moved to WAIT on a
> different queue, then the operation has WAIT semantics on the
> new and distinct queue.
>=20
> Since there is no concept of MOVING in the futex, you could
> conceptually discuss this as a linked WAKE/WAIT sequence i.e.
> REQUEUE, which is what the operation does.
>=20
> > But then, even if we assume that both subphrases mean to talk about
> > `FUTEX_WAKE`, the assumption that this can ever be equivalent is
> > bogus. In fact `FUTEX_CMP_REQUEUE` checks for `val3` still being
> > pressent in the memory location, which `FUTEX_WAKE` doesn't.
>=20
> Both subphrases are not meant to talk about FUTEX_WAKE.
>=20
> > So I think that specifying any of the values that are pointed out in
> > this paragraph can make sense, because of the added comparison to
> > `val3`.
> >=20
> > I suggest to change to something along
> >=20
> >    The limit value specified via `val2` is typically either `1` or
> >    `INT_MAX`. Specifying the argument as `0` makes the
> >    `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`, only that
> >    the operation then also ensures an atomic check for `*uaddr =3D=3D
> >    val3`.  Typical values to specify for `val` are `0`, `1` or
> >    `INT_MAX`.
> >=20
> >=20
> >    The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
> >    earlier `FUTEX_REQUEUE`.  The difference is that the check of the
> >    value at `uaddr` can be used to ensure that requeueing happens only
> >    under certain conditions, which allows race conditions to be avoided
> >    in certain use cases.  In particular, a combination of `val =3D=3D 1`
> >    and `val2 =3D=3D 0` is similar to the operation of `pthread_cond_sig=
nal`
> >    with an additional check for `val3`; `val =3D=3D 1` and `val2 =3D=3D
> >    INT_MAX` is similar to `pthread_cond_broadcast` with such a check.
>=20
> Does my clarification above obviate the need to make any changes?
>=20
> Or do you think the text needs further clarification?
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--4fxgmybd6to3wjuj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1rsUACgkQ64mZXMKQ
wqn3qBAAuLMrmiT8AAc3ZO4JEehscI5g8fsNaiIbJOTyGo0VFJtRikYjoW1HSCj+
UMN/B1ibB3ULDypocK9svqf4+rUi3Ags7y1KknthFo8pXfs3o7EBUm+n/80uMII7
wOV0vNkbVAk2QTXGY/M21qKG2STuenjGnoKz7SYh0OdLaPjScTYWUw+EGMwwBMjK
pcOkP9FIIf3PZegdkj+OO9WLakr2XQcpH+XUW9m1WxzBg0ib4fuxvxSeS/bo0azU
Bezs53lGN2TWZbcEMLnj+ORp9uMpP3s+cgwrPr6iZ9X6u2wXt55xiFxD+ImZvo6p
mVRoP6f24ICuTC1WQOTsnGX/KFfy36d+0FA3Hzk3+0POrMazwNDpYc9g8u7uainF
3e96+o7jIQpRBhcfUYCIy45bulWaTHjfWQkjkZNEEsAUeM57nU4+Yy6yPt9kX2as
W2Gu0VgDUdhUFudc2IdS73YJmj753aq1i13Nn1mQaShlAoLPA6lvUk+DEA9Ie0N1
H88AKRlTZy/rtNs/36pj08SDHqzKZ5+a7bDim2vyaXORThLKoVGzxa4LMLAJYyvM
7E9qwDIEp2VelTbePIYwm4kmyFiElJj7mkkFos+PmM8BkpAwlwYrKPH4B8xClI7C
biRU+Re/8PFrcYAi9IxSQMhi+P/Gytg407aL25bJNxbGCdLyziI=
=4wqv
-----END PGP SIGNATURE-----

--4fxgmybd6to3wjuj--

