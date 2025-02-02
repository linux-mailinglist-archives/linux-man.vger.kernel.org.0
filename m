Return-Path: <linux-man+bounces-2324-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5DA24E18
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCE5D3A2811
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A435E1CAA80;
	Sun,  2 Feb 2025 13:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noJyN8Ja"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5B538384;
	Sun,  2 Feb 2025 13:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738501345; cv=none; b=K8A0jImTmijec1wZaAV7E8paOhmjY6c2RDhcRYXlMR7P+3S1AlU4fVQkgndIRQWmyWkVhvrk3T2gYR7jFMrI5nW6bvDqwBFvWFUXC8dbyNWXAnvrAnMDYpNP8Xt1UD6ge2YMtWXegcP3wVPh4mljHMhaaWMowWCra3C8IIMNy3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738501345; c=relaxed/simple;
	bh=Fe/g5sImhVnZq08aC71Vyqc8tGYIgJd/f3p1mGKoN0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oMVo8XA5Jrh0Np6mEdTX4qAI8629OcCrWaSV5ps9VurClFCfVGvxIt3j4bMWqJUlgC2zLOeDoY8Zer4ChXAoTuIjLLS+sXDIs3qsQdb/y71TspkHBQodEix+AKa8Es7YtxcynNDcsMoqgRp7dzuIWcGbLDw5xY5jZjDKw1CFSjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noJyN8Ja; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94616C4CED1;
	Sun,  2 Feb 2025 13:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738501344;
	bh=Fe/g5sImhVnZq08aC71Vyqc8tGYIgJd/f3p1mGKoN0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=noJyN8JaWodymejEf/DNQO2nwCGZzVT2FTKeeazQyUw0i7+NPq+Z0yLrrZC6HKM3C
	 rBJGK2f7mpc0L4keJjaICOpIVKOT9AYf5A4qYRLYdRBVteyP+tQTOlo7z49ANnzokb
	 okBm/b5sU9q353/48GgUUEpoLi48v87QusbOIQO2mNOPu00FqnkKlRQJxVCbn6O5qQ
	 BUMS5Up4BDe3WvLIFr7EpBl3fV7kYlzH2bWFP+HRrhnPYOfq14jVEKLpeXp1fWFCeR
	 tHafIN393uoQYvWFRBItcfUPz6lyYo7kSdaL5EP7QMZBFctVcBZnpO8P0jjJeh4zYp
	 e7WfV5OoEqqqw==
Date: Sun, 2 Feb 2025 14:02:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Carlos O'Donell <codonell@redhat.com>
Subject: Re: [PATCH v2] man/man7/sched.7: Mention autogroup disabled behavior
Message-ID: <hmvmnl52rvv2cln5d6ggheqjvzshlmdkc3fevbrc2sjwwdmteg@6egcrtlhywi7>
References: <20250116143747.2366152-1-pauld@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qklmex7qhlvoqoc7"
Content-Disposition: inline
In-Reply-To: <20250116143747.2366152-1-pauld@redhat.com>


--qklmex7qhlvoqoc7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Carlos O'Donell <codonell@redhat.com>
Subject: Re: [PATCH v2] man/man7/sched.7: Mention autogroup disabled behavior
References: <20250116143747.2366152-1-pauld@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250116143747.2366152-1-pauld@redhat.com>

Hi Phil,

On Thu, Jan 16, 2025 at 02:37:47PM +0000, Phil Auld wrote:
> The autogroup feature can be contolled at runtime when
> built into the kernel. Disabling it in this case still
> creates autogroups and still shows the autogroup membership
> for the task in /proc.  The scheduler code will just not
> use the the autogroup task group.  This can be confusing
> to users. Add a sentence to this effect to sched.7 to
> point this out.
>=20
> The kernel code shows how this is used. The
> sched_autogroup_enabled toggle is only used in one place.
>=20
> kernel/sched/autogroup.h:
>=20
> static inline struct task_group *
> autogroup_task_group(struct task_struct *p, struct task_group *tg)
> {
>         extern unsigned int sysctl_sched_autogroup_enabled;
>         int enabled =3D READ_ONCE(sysctl_sched_autogroup_enabled);
>=20
>         if (enabled && task_wants_autogroup(p, tg))
>                 return p->signal->autogroup->tg;
>=20
>         return tg;
> }
>=20
> task_wants_autogroup() is in kernel/sched/autogroup.c:
>=20
> bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
> {
>         if (tg !=3D &root_task_group)
>                 return false;
>     ...
>=20
>         return true;
> }
>=20
> One can see that any group set other than root also bypasses the use of
> the autogroup.
>=20
> All of the machinery around the creation of the autogroup is not
> effected by the toggle.
>=20
> From userspace:
> 0
> /autogroup-112 nice 0
>=20
> Note, systemd based system these days is not really using autogroups at a=
ll
> anyway because any task in a non-root cgroup bypasses the autogroup as
> well.
>=20
> Signed-off-by: Phil Auld <pauld@redhat.com>
> Cc: Alejandro Colomar <alx@kernel.org>
> Cc: <linux-man@vger.kernel.org>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dca69daf45f94fda061f796efcc4f24ca76d8e380>


Have a lovely day!
Alex

> ---
>  man/man7/sched.7 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index 71f098e48..f0a708cd7 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -724,6 +724,8 @@ in the group terminates.
>  .P
>  When autogrouping is enabled, all of the members of an autogroup
>  are placed in the same kernel scheduler "task group".
> +When disabled the group creation happens as above, and autogroup members=
hip
> +is still visible in /proc, but the autogroups are not used.
>  The CFS scheduler employs an algorithm that equalizes the
>  distribution of CPU cycles across task groups.
>  The benefits of this for interactive desktop performance
> --=20
> 2.47.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--qklmex7qhlvoqoc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefbN0ACgkQnowa+77/
2zLjDA/+NSRSpogInjUuv/8YBmr0s57L99Xl+bV+W2AlJ+PIclfnVObStciBdUcC
pu+daFyIKXTpBMPQ52LCpGNRsnS0WZL0LpD751lxwOSy2Mpszw7jggAbmz6PsWc7
fnEgCZ6+LvfS0Z/yyRv07WWeGrs+Y3TOsvD3Bqzkjozt7SfA7b5uL1j5lc3ana16
QgY6X6T+mJ+VY+Xd8S9qiF8yLKI+94NF32TEY3zfAUCR7xvuviL0llTbQOyYf4QH
IxvU/cmTxkZVVKPx3iU3AQUrqvgmDZJXifGo4zTpV4EBF7bSPLVTui3em1xOGUoV
xfVIo90ZLb6VbaYdZPJ+VQBuMsWDWzOfW+8phjTtUGVy735MqZg4Ts/wZG6kKFs5
7t7IgooxtAvEVxt2vgZHzZ+wAm7ZuzYwJKGc0GWl2e402P8za+xGRNGvI1El2PGq
vwGyxiUDjjhRWAImC8QrqNt2zPfu772EsUDnueXGE2zYWzKZIqu4nmlfUsT3tb23
mQepVhR9NWu5W0rCEcSSb/SWz8YfmRWD+dk0UyZ7jy++A4bxt4Tz3rtb08snKXde
kp1lwGbajNtH2J/HnUGXUwN9aq+HR96299PAEmbPARdN99KLxPrXxemseD8IgrLa
vde6rR1b7hk+zNOf2TRWncTd8EvPTfj6BlfS3FgVlkp3LrMOZak=
=/Z3K
-----END PGP SIGNATURE-----

--qklmex7qhlvoqoc7--

