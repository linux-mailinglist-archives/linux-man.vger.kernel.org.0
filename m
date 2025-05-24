Return-Path: <linux-man+bounces-3008-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BF4AC30D8
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 19:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 192803B869C
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 17:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E231E1E12;
	Sat, 24 May 2025 17:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+ZIyC+0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2001ACEB0
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 17:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748109129; cv=none; b=F8JwE4GLZpJ4bqJOyBEbrY8v2xmgDfq62t8/mG/8r7WRcyhXWYqk+JBxn+FRS0UixrV3WLrkjHeNx60zbRr4DGUDYe4Q+D2JFu5Eg9KwiuvhRbD+RCFT2j33Xd9NdVhq2J/13TfZkVAEkQgy9lSj0syXNBzAdYSWa98r1l6SmmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748109129; c=relaxed/simple;
	bh=vER8GjAGteDYsymSqmUWq8sc6gS4C1oQ04EpJ/Z3YOA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jtwj5y4RmsHRXu9LAr68xX0dP518xt5jRTAIt/50ZpcS0vSatz6cEL8v8A6QQusge7E5tnWtV6QjQYujsQeWP8XzRlQVN2hevBpUp98n2tLUgpyJ+PeZsyfuHR+cxP63zdb/gd6bnT+0+WFwF21PIlNjmL77CZJmbZv2MDcJm10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+ZIyC+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6261EC4CEE4;
	Sat, 24 May 2025 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748109129;
	bh=vER8GjAGteDYsymSqmUWq8sc6gS4C1oQ04EpJ/Z3YOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X+ZIyC+0cVghjeGEQx/WioxMi0si8opkouV8l0rdHf+fVmOXEwuR8hL0MUNELVdg9
	 HJeqNneheSWAybHNmEVBzUwBQFGgBe6knAukq125lzu9GjJBIOX2ZnBnTogKS1bfM2
	 2WgcXAdHAPqw0VM9bdRoxLfWSLJCbQoZ4n2kpSyknEQS84vmlZ5+RhWX9Qev9+Psqq
	 EyJJW9GKRyNB1bqwMpuR8GZ8ztHNQb+/4Z2+g128dSOoMjkDp7oec1NInUkFmNKUJU
	 fg9J9AYkKHgUBzjyQMIpz0tSFu4VpfkLJzYy6bNBiy+1Y0fFr41LRmLDZwDntqIMVF
	 av3mJq8HD1kVQ==
Date: Sat, 24 May 2025 19:52:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carsten Grohmann <carstengrohmann@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: Extend shmem proc_meminfo(5)
Message-ID: <kykhbp5t66eih4btall2vyh7afjwevna3ywx5fiujkawqsni3t@dxjoyobbtrki>
References: <20250523122617.48cf9feb@max.localdomain>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6mqlm3gve22f5r42"
Content-Disposition: inline
In-Reply-To: <20250523122617.48cf9feb@max.localdomain>


--6mqlm3gve22f5r42
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carsten Grohmann <carstengrohmann@gmx.de>
Cc: linux-man@vger.kernel.org
Subject: Re: Extend shmem proc_meminfo(5)
References: <20250523122617.48cf9feb@max.localdomain>
MIME-Version: 1.0
In-Reply-To: <20250523122617.48cf9feb@max.localdomain>

Hi Carsten,

On Fri, May 23, 2025 at 12:26:17PM +0200, Carsten Grohmann wrote:
> Hi Alejandro,
>=20
> currently shmem in proc_meminfo(5) is described with "Amount of memory co=
nsumed in tmpfs(5) filesystems.".=20
>=20
> I think, that's incomplete, as the other types of shares memory are missi=
ng.

Thanks for the report!

>=20
> Therefore, I suggest to change this statement to:
>=20
> "Amount of memory consumed in tmpfs(5) filesystems, System V and POSIX sh=
ared memory, as well as shared anonymous mappings (MAP_SHARED|MAP_ANONYMOUS=
)."

Does this sound good to you?

	man/man5/proc_meminfo.5: Shmem also accounts for other types of shared mem=
ory

	Reported-by: Carsten Grohmann <carstengrohmann@gmx.de>
	Message-ID: <20250523122617.48cf9feb@max.localdomain>

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/contrib$ git diff
	diff --git i/man/man5/proc_meminfo.5 w/man/man5/proc_meminfo.5
	index c7d201f79..ee4ba2062 100644
	--- i/man/man5/proc_meminfo.5
	+++ w/man/man5/proc_meminfo.5
	@@ -150,7 +150,11 @@ .SH DESCRIPTION
	 .IR Shmem " %lu (since Linux 2.6.32)"
	 Amount of memory consumed in
	 .BR tmpfs (5)
	-filesystems.
	+filesystems,
	+System V,
	+and POSIX shared memory,
	+as well as shared anonymous mappings
	+.RI ( MAP_SHARED|MAP_ANONYMOUS ).
	 .TP
	 .IR KReclaimable " %lu (since Linux 4.20)"
	 Kernel allocations that the kernel will attempt to reclaim
	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/contrib$ MANWIDTH=3D72 d=
iffman-git=20
	--- HEAD:man/man5/proc_meminfo.5
	+++ ./man/man5/proc_meminfo.5
	@@ -123,7 +123,9 @@
			    mmap(2)), such as libraries.
	=20
		     Shmem %lu (since Linux 2.6.32)
	-                   Amount of memory consumed in tmpfs(5) filesystems.
	+                   Amount of memory consumed in tmpfs(5) filesystems,
	+                   System V, and POSIX shared memory, as well as shared
	+                   anonymous mappings (MAP_SHARED|MAP_ANONYMOUS).
	=20
		     KReclaimable %lu (since Linux 4.20)
			    Kernel allocations that the kernel will attempt to


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6mqlm3gve22f5r42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgyB0UACgkQ64mZXMKQ
wqmwRg//bYS7ajLmUFldKEfhhUp3vJs5epwHbS6MmtrikdGtOjnVqWJ4t6e9cY84
O40XOkFn8xiQ0aUZXgjdPahXbNDXm99VOIJ758f8F+COjMZa0daKnFD2ZkJfqG8f
Cj2JmPEwMMEUdUZlxQmsrWkzs/mzy/ncvF4q2wqiZ5fq+oOvM8duOcuJWlxenga5
U63wD+3GJAQWfHjz9pCA9CpPyUs1Q+bBOIJacpxsP3y7Jl95OYuyZI4XTlaRmgQk
H+AiQ1PciV/lRnR2/6sITfYgf9YOvczrX1wkopMttEFEp0MzpgEYRu6W2J6k57RL
Zk/3P6cEBtiaHiDf2LO6xf4NDADJ28aE4tQL8JsqMao06iIL7lT5sGhYKJnPoxFw
hlI/c0Mg9Le/gtd0ChY+MjNhVRH/tNK57mYjuqzidDzq0aHkpKnCekIsw2fgKOut
46jIXBUdZST7WNq7oM+8j1i4J2UFF0hwHq6QkTr1mQ8rR8hi9B880vJp6omUp6da
gTuhDellcBVKyq6U6Zrj9Rc3uD4E032XiDPrGQ2rmyQvPBM2VpPht02WwdOsUMec
gltRf72JsbxZMX4F0hrpp8uFePC91QGEWxFowi4Yl3lEAw9BiC6uihrptedykwn5
DBMBcoIFRHqaRoK1L3j5IaB4bGKChCAec/nDVxBks0h42e4AXV8=
=4xGK
-----END PGP SIGNATURE-----

--6mqlm3gve22f5r42--

