Return-Path: <linux-man+bounces-2249-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A85A13B70
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 14:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 404133A9FE3
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 13:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C7AA22A4F1;
	Thu, 16 Jan 2025 13:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olU6/TxZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE6E1D8A0D;
	Thu, 16 Jan 2025 13:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737035951; cv=none; b=mJFgkyKZvlsdVaB3/F1gJ0EUoB+//w/YaPEqx/HtoNbBLTfByZNcNAMRWz1b9DbXRtYeQfmPmjzccTq+M2bCSXVicUSiPnXUoe8+Dsd4uGYDNb31b5sE1yrFbiIKauqCr+6JWvS7tG/iI9P53kts8/SGkhCeVMT/FkDeyQCvc/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737035951; c=relaxed/simple;
	bh=QBNEhe+D72Ad5HJWMkYW+YBAN1kKKCBI4GwFdfIg1zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JeNdajf49VBvyYPdLBzOtdYdi2DnYCqIVr1RaNbnR0/97AJCm3I+N0sSNCQeb4edCxQB7CDHrcCmSe0aQyGGAY2qhRR1mjOd1wQZfe338wvwS6vued/iK2u+PxMODnkKux4P1x2ajeoXj40tiAoW1QSSyQA3ADceBe83P1MalUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olU6/TxZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9B61C4CED6;
	Thu, 16 Jan 2025 13:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737035950;
	bh=QBNEhe+D72Ad5HJWMkYW+YBAN1kKKCBI4GwFdfIg1zA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=olU6/TxZICyFc21FQV6L6Ks0gKS8dmulx0qQCnYZi1SHk6AVeQeOGOz9XVYDeJYgk
	 CsYzA/TE9GjHIZAqNAFoR/TJQSmA+aYhPBvvYbQQiDAaAuYypI2/AtaehBSy9OmiSK
	 A5Lg1yYxiMebj1VQMDHaq8EHfOh2jBtO8Fr34dqwm7uF/nAp06TG5lgfiUHEB8o3t3
	 d3OTPWsWBF5lkXlrbW8JXeg+MnqvESt8MONhOMcAK61lt8F3CprWiAfm3fK6ZiZ8cR
	 wRv3gUZL6evBo/GwDrmrRgDeCFGoxu3thynSNMysRXynfslm/gNIGR+n9lRAtsRlQV
	 Iibk5LEqpsgew==
Date: Thu, 16 Jan 2025 14:59:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
Message-ID: <bpbyx7d567ctpoqutwy2sk6dh7xsilrglnkoomcfgrtrqtjwtl@tajyt523goqu>
References: <20250116124654.2365691-1-pauld@redhat.com>
 <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
 <20250116135315.GA7382@pauld.westford.csb>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rbir3fhbpz5q4d32"
Content-Disposition: inline
In-Reply-To: <20250116135315.GA7382@pauld.westford.csb>


--rbir3fhbpz5q4d32
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
References: <20250116124654.2365691-1-pauld@redhat.com>
 <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
 <20250116135315.GA7382@pauld.westford.csb>
MIME-Version: 1.0
In-Reply-To: <20250116135315.GA7382@pauld.westford.csb>

Hi Phil,

On Thu, Jan 16, 2025 at 08:53:15AM -0500, Phil Auld wrote:
> This is actually part of the problem. It's very hard to see this
> from userspace. I can show a shell session that shows that autogroup
> is disabled and that my task has an autogroup in /proc but determining
> that the autogroup is not being used not so much. (I may be missing
> something obvious but I could not find it).
>=20
> I had to look at the kernel code:
>=20
> kernel/sched/autogroup.h:
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
> bool task_wants_autogroup(struct task_struct *p, struct task_group *tg)
> {
>         if (tg !=3D &root_task_group)
>                 return false;
>     ...
>=20
> }
>=20
> The former being called from sched_group_fork() and sched_get_task_group(=
).
>=20
> I suppose looking at /proc/pid/cgroup and seeing it report not "0::/"
> is part of it since it then won't be in root task group.
>=20
> To some extent any systemd based system these days is not really
> using autogroup at all anyway.=20
>=20
> I can put some of the above in there or just something like:
>=20
> # cat /proc/sys/kernel/sched_autogroup_enabled=20
> 0
> # cat /proc/$$/autogroup=20
> /autogroup-112 nice 0
>=20
>=20
> Thoughts?

Both.  :)

The more information we have in the commit message, the better (in case
someone needs to check in the future, that will give more context).


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--rbir3fhbpz5q4d32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeJELcACgkQnowa+77/
2zKf6xAAgm/YiF8VPjhi7ER9IH6z8pkLhkCj1H2Xq8lKT/BUzWR0cf1APonaVBn6
tOxc4JPm1x0nnyxIiqS1iPh2fGkSayVOZNfJD5kbOW3dTKkIorTu0WpqbJUHy11W
uu9NoU+Aca40TqCfGUYU3y0avUgxG8q/seMBWQyznBCd+lInjYru2FQ3yS6SiYdX
zn3icXWtOgVnnYuyhp48kG3EKh+qZ2kx1wilaR7zKXcXu46R4r3W8VsnKBo2locB
0VFm0uHvGFcYzyEnBno1opgWKy85Lq7F1WUgSTUQP8swl9iGAvr8Su7qvKVWQWMn
SYfGIWyOjzs8Wq8U6zDIfbHTjlg2fMBO7UVA3hEp43dCdpZBVxX7WBeP+UYHL1l6
0SMG857tMwpzmSE5b9U4XTsoaeVJQB4cVxtDX87/yxd6uhHss6fqp051gH6W+b32
T9lP15WHWMfIM2ta8AqdoPs7Mma243h++JwsDIRTTuYMbqIVxtlqyACUcqpU+/HJ
DPjuJTsJGCTSyCsi33mIdo4wLEK/FzDpNHJhjDGBc8Tfg9OUN3CacMYXw+VCMXuF
extVKj4EfOpq0JIyRmEt/ViJrVQUxcYLQiF4YPWZhnxhsEaErFCNc3qkxYQtak1t
kKVLspDd9HM18TIrYcDnIuH54XdgmwP/X1DjDkMt0jbjfREpZ0o=
=CHQp
-----END PGP SIGNATURE-----

--rbir3fhbpz5q4d32--

