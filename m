Return-Path: <linux-man+bounces-1389-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A5A92B977
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65A312866D4
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1216314EC41;
	Tue,  9 Jul 2024 12:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3KPs3F1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ED61EB2C
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720528272; cv=none; b=UOArXAhNDunlbkPKmcdO0TUfL1ABjZTbMs+b4+/YjFPn1vTOFdKOGowu2oT8p+6gFDhL/i35TmEJeKCSDrrff0tkunkvduWkmd61HicWXeKJe8t7o89jpL2JBonNQzGgCNsuZTWJ/lpt91n24tsAQrXAYqZHu0FDtEZ/VKC0r2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720528272; c=relaxed/simple;
	bh=GR8tHD6ijJgTwpF0qKnq7P/Zkk++qs1IvYdyGuuqRqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ChyiHZI4wpaCr6zp9CYOzJNbEn8/H98wt5uIm6+oo5geZ45g1drasbZZTj54aL/TzBYoPGA2eOWou9x+L1l17iK+SoS65rvKq2AbBr1hLIrg0bQJe8IXik9j+5J8DrmWfukrSymlkm8f+JGT2H+HHc5IG9QF74ajQjabxiTrJs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3KPs3F1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE19FC32786;
	Tue,  9 Jul 2024 12:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720528272;
	bh=GR8tHD6ijJgTwpF0qKnq7P/Zkk++qs1IvYdyGuuqRqg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h3KPs3F1KA2zrRobSf9Bb69uBy3A24bk+rRwhG4qkv2n93vQAR/wZpJ6tAq0PdztH
	 0QBLULnKkjO4uVV4PB8dHGggrUkAyMYu3ZCdkodk57otxG47/MXwiRmfyhARKJ4Sgr
	 ht+7PuYA3YfZiWi4szd2NSQCZ+RHQsIXw+Y3/orm94jP+meGfi47WdQa2Z9EczkNED
	 QVO+ZB3K8sjtJcdZKadtdGa4ZAcEfVzSp1/MTMNm0dRE+S9DkLP00zouSNXB+UPF+b
	 OtPM0V0L8dVo9zhTJ7k6cgA7URSD20HXG+FDJvVYk5hKOUesDrqkDOFCgDuXwAZuPb
	 ZQGPzBrlUSh/Q==
Date: Tue, 9 Jul 2024 14:31:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: document combining inherit and cpus =
 -1 preventing the use of mmap
Message-ID: <wvgbgykorq4dpxe3zpogt4m4blel62xdqig53erktabplv23vh@k6o7gsydg54y>
References: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
 <2s5drc4ywno4tpk3kvej4op7qpfe4ivpf275fxvo2hpckfozgw@lsn4ete4vihl>
 <CAHGiy6-nx0PwBi6xwoG8PN5qND-krGh_rvpfmVc31-QSv04C6g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2l6uyu4zuozz2x2"
Content-Disposition: inline
In-Reply-To: <CAHGiy6-nx0PwBi6xwoG8PN5qND-krGh_rvpfmVc31-QSv04C6g@mail.gmail.com>


--l2l6uyu4zuozz2x2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: document combining inherit and cpus =
 -1 preventing the use of mmap
References: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
 <2s5drc4ywno4tpk3kvej4op7qpfe4ivpf275fxvo2hpckfozgw@lsn4ete4vihl>
 <CAHGiy6-nx0PwBi6xwoG8PN5qND-krGh_rvpfmVc31-QSv04C6g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHGiy6-nx0PwBi6xwoG8PN5qND-krGh_rvpfmVc31-QSv04C6g@mail.gmail.com>

Hi Miko=C5=82aj,

On Tue, Jul 02, 2024 at 09:19:28PM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> Hello,
> I'm very sorry for the corrupt patch formatting, and also for sending
> this to you twice (I initially forgot to CC the linux-man address),
> this is my first time submitting contributions this way, and I'm still
> learning how to do it properly. You can find the fixed patch below.

No problem!  :)

I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0f1f2327069d0c0ebb1f090ca1a183ca51de75f2>

Have a lovely day!
Alex

>=20
> Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> ---
>  man/man2/perf_event_open.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index 15411027d..72d8fd797 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1027,6 +1027,10 @@ .SS Arguments
>  .I read_format
>  values, such as
>  .BR PERF_FORMAT_GROUP .
> +Additionally, using it together with
> +.I cpu =3D=3D \-1
> +prevents the creation of the mmap ring-buffer used for
> +logging asynchronous events in sampled mode.
>  .TP
>  .I pinned
>  The
> --
> 2.45.2
>=20
> On Fri, Jun 28, 2024 at 1:02=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Miko=C5=82aj,
> >
> > On Sun, Jun 23, 2024 at 02:02:36AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> > > After calling perf_event_open() with cpus =3D=3D -1 and the inherit b=
it,
> > > using mmap on the perf file descriptor to create a ring-buffer fails
> > > with EINVAL. This behavior wasn't previously documented in the man
> > > page and is caused by the following lines in the perf_mmap function in
> > > kernel/events/core.c:
> > > /*
> > > * Don't allow mmap() of inherited per-task counters. This would
> > > * create a performance issue due to all children writing to the
> > > * same rb.
> > > */
> > > if (event->cpu =3D=3D -1 && event->attr.inherit)
> > >         return -EINVAL;
> >
> > Thanks for the detailed commit message!
> >
> > > Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> > > ---
> > > man/man2/perf_event_open.2 | 4 ++++
> > > 1 file changed, 4 insertions(+)
> > >
> > > diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> > > index 2f345ff5b..15a5972d0 100644
> > > --- a/man/man2/perf_event_open.2
> > > +++ b/man/man2/perf_event_open.2
> > > @@ -1025,6 +1025,10 @@ .SS Arguments
> > > .I read_format
> >
> > Applying: perf_event_open.2: document combining inherit and cpus =3D -1=
 preventing the use of mmap
> > error: corrupt patch at line 10
> > Patch failed at 0001 perf_event_open.2: document combining inherit and =
cpus =3D -1 preventing the use of mmap
> > hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> > hint: When you have resolved this problem, run "git am --continue".
> > hint: If you prefer to skip this patch, run "git am --skip" instead.
> > hint: To restore the original branch and stop patching, run "git am --a=
bort".
> > hint: Disable this message with "git config advice.mergeConflict false"
> > Press any key to continue...
> >
> > The patch seems to be corrupt.  Context lines should begin with a space.
> > Can you fix that on your end?  Otherwise, I'll manually apply the patch.
> >
> > > values, such as
> > > .BR PERF_FORMAT_GROUP .
> > > +Additionally, using it together with
> > > +.BR "cpu =3D=3D -1"
> >
> > Please make this
> >
> > .I cpu =3D=3D \-1
> >
> > > +prevents the creation of the mmap ring-buffer used for
> > > +logging asynchronous events in sampled mode.
> > > .TP
> > > .I pinned
> > > The
> > > --
> > > 2.45.2
> >
> > Have a lovely day!
> > Alex
> >
> > >
> >
> > --
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--l2l6uyu4zuozz2x2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNLY0ACgkQnowa+77/
2zId5A/9F6C9SkNnvzmQPzN9gYLPiDCCwEfZcg9fKYyn1om7i/qygmlaR9Z0yngj
tGfHzG4ZtdEniSptpwDrsUJAhT3RorkChqnJWZGqLdbugpK1ULsye0JTia5AVPXz
9dMq6F+U9pYIgDaCbdwPQnE+6srXSojKR1hWOdwgTaX8NNummcITokRmBbylNdVN
Fdnx37XBUMjqudpGWm3sEop+2eNDqL0YLIQtpDxRsuW8RC21g8V88pCX/qaSCPlW
6qpgCOnioKKJNce+uLLzUZoK27NtQHY/spuhwJFMsTGTzvvypLBY5PrDS0L03Qus
tBtdWE5d7m4sQ2d4kEKahT47qA0/d8OOP4W8u6SccqZlib1Dmk2KCM/UShKQm4mD
g5qeNQ8+a7Apn6o85rP0x9tkBYKHwM3uGbcxuCvjJilvN4uwXR0fv++Shc0w7Fcx
MqKAPpUuCzwdsj99CMf1BnJzunhhzwETN/NnnXsdWFript0BCwBd6tCA6dSqeBmb
BHyAcQnJk4oERaq1iNWKxK1WkSEPK8c6XNJv0BEtYteTChKEZ3gouGXTFP6vmdWQ
YhcxsWCY4dQV1EBE4onWyWFU7XV4nN/CjPHwaZF3fYsPDOU1XUGdaSjtzz5O+V+f
h+qbrT3lgjXOWMwiOrhtXtzZC7V0adVUBpCiuhoXFdVhLQd3RyA=
=3kkF
-----END PGP SIGNATURE-----

--l2l6uyu4zuozz2x2--

