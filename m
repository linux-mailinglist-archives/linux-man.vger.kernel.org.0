Return-Path: <linux-man+bounces-729-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2D989DF36
	for <lists+linux-man@lfdr.de>; Tue,  9 Apr 2024 17:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED12B1C20EA9
	for <lists+linux-man@lfdr.de>; Tue,  9 Apr 2024 15:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AE313E02E;
	Tue,  9 Apr 2024 15:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McL6gxe6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376613E026
	for <linux-man@vger.kernel.org>; Tue,  9 Apr 2024 15:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712676566; cv=none; b=XuuYya8DE9UR6DfoxohXVeERBCycfVU662U4JKsNVf+r5OD9GQLnTE5gcSwOclAN1aqtTFHQ4l0ddDLcUQpy5H68MyRyaIg2gbhzgmzfHs3xqPEwSBi7C7Q2aI0r1oOtypMUb3orwZ8KaCbGp3EuG1YK5+eaW6KMYZTK6pXM5x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712676566; c=relaxed/simple;
	bh=d9R+iJGjxIClVI6t1t7MEJI/rlmL1Ww/NUzeMVNl7XM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PlRXq/+hIg+Dq6i5XCaRGGntKJ4BqeL5w+PUeR1VjpPe2S9CjOYrv4PgeJaVOBpJYPIy1yJJkqY7PBIzsWhyObiSpUJwo5NojuZ2E7WeBCaJATReooZ7WonT8nti24outcVO16ch1uo9X+8dPd65wIaA49ZhQmN77bMMUfjaTgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McL6gxe6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80422C43601
	for <linux-man@vger.kernel.org>; Tue,  9 Apr 2024 15:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712676566;
	bh=d9R+iJGjxIClVI6t1t7MEJI/rlmL1Ww/NUzeMVNl7XM=;
	h=Date:From:To:Subject:From;
	b=McL6gxe6rdrOrEUMTIvEI6NWU2N5+kPYrRyYj6mbGtBTHXyTrS7zB6uOrlpQszspb
	 LFHpfIxNb1rjS+ZslKnFjzeMj3slAa57Zjcja2RhAAsEe+1TqZs1dzOYJPDtoIEIQg
	 lqAuTyJUqe2zLQH9ESLV6FUcXctdjCY2Fb/iEnqGzaAtXMOlED7ISjfylKHDv985Qc
	 p38xwwD/qcwrwZCHaFTbU91mGKAjcDzwSsebm26uA13cDglRSgCCrKrPK/N1J6GECo
	 ta2Tqc6tv0mw+0MY8etc3jcqHZTM2gM8sqUy+Ju+VovyEb6SH/Md9yCcgt/X7iJWnp
	 0KoyhrFe5cX5Q==
Date: Tue, 9 Apr 2024 17:29:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Release tarballs and security (xz fallout)
Message-ID: <ZhVe08clpdlkrwpI@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zpzo8d3bXjgNrOkG"
Content-Disposition: inline


--Zpzo8d3bXjgNrOkG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 9 Apr 2024 17:29:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Release tarballs and security (xz fallout)

Hi all!

For context: <https://tukaani.org/xz-backdoor/>

Given the recent XZ vulnerability caught just in time, I wonder if we
should take any action in this project to help the ecosystem.

Some have mentioned that release tarballs are too opaque, and can easily
hide code that's not under git(1) control.  I myself have been feeling
like that for a long time.

I've modified the build system recently so that tarballs should be
reproducible byte-per-byte.  This means that downstream distributors
don't really need to "trust" tarballs signed by me, but they can (and
IMO should) generate them themselves by running `make dist`, and they
should be fine.  Our git tags (and all the commits, BTW) are signed.

Here's my proposal:

Stop distributing release tarballs, and instead ask downstream packagers
to create them themselves by running `make dist`, or even not using
tarballs at all; `make install` from a tarball should be exactly the
same as `make install` from the source repository (IIRC).

Any opinions?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--Zpzo8d3bXjgNrOkG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYVXswACgkQnowa+77/
2zItqRAAnwyZxoSA+TmkkpMy6X+soC5+4eLw3JsiV7F0SZ3k749JTXzdagpX7GO0
DNg4YXkBOg765uVktFq94UszfGAwuvgeb6zOQI221SB8Bm5Du1Xdy9mLc0oXWCxN
svZBYOHGOZxKB5fegkIERYBMPrOjPoIafb29axPkO+hJ9fYvQCsNzHBKL46IwIjf
ret+GDRZybgVE1G0So5GV3sgi6+Yh45ZAoMmP/IEoLQgPAkprH9hUFHhOYoqZ90Z
oiymGgzxZJdrOyPaDiMwfsMpuNFQfAsNXP+Ika220w8WyNKKy1zUCYj3k2k7SeOV
6thgq7WoZbiw6w+9s5Z47XE+W7/+wbXgwuFm0ADxxQ5b83RCzKLlyjntR5hIbi9Y
xfmZF702IAlHiPX30a9w2GiVICdRT6CkMuIEjEkJ8fywFshX5u2OPmUaCWKw9pPf
bRCvRiqWBIBfQvAAepydTK0gb1CGuDuj6Jp7ki/fK2u8udfX/WAhFmvoPIKy85dW
aUsg2cpKwD3bphXemDQCxHWNlF692g+d86gF5HviqoVMxQ/RPhsbzBy/YrqOnFuJ
BMe0EuhnyoIl35+E0rFUX0go/lP/oX2jwYYAeiBLXJUpCzMfsq5XvTd2Sbe80Xpt
aJYDW6XOqUTnKMjsfeiOZVGHGKCoZ4hcqdu0FYrQyO98ybx1/HQ=
=hbn0
-----END PGP SIGNATURE-----

--Zpzo8d3bXjgNrOkG--

