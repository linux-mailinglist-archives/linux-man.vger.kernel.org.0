Return-Path: <linux-man+bounces-2793-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E728A9575D
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 22:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F3B53A95EA
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 20:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5791E5B72;
	Mon, 21 Apr 2025 20:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJxV2OGh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8AF1E32D9
	for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 20:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745267431; cv=none; b=uaALMMcKA3GCb76xw4BSJvH44WwnuRaw4YvRUsGMCKO29K5jRs52xLBmDen6lFfpKm7OQDKYXLSQMasEucIhjZ2FyMpEP99fUNASMmE1poH1Bt94lGaQLVTlS6dKEzvSChgeAoPeRbcj5II8Ndc/pgnBbU96Xzomfdz8AxSftb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745267431; c=relaxed/simple;
	bh=8VHobLVLUPafFGjFmiQWz2evjzAo3vYAHlMgo4Rhr4M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Esz84mdGomAAQaP1VLH0yeBtk6A1Ke1dHLRMcg2upYJ/WBcmyNFVWk+zpvYGucH2FYMEvw5qwqc8g7SjOakAYRKiJRZd2j8gji4cIuNfZg1DGrNgDKYol1zrvoHIQwnbmPwW68+J3V34P0XpKjrW4jIENeMjUiAt5mqPEQm3iAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJxV2OGh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1A38C4CEE4;
	Mon, 21 Apr 2025 20:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745267431;
	bh=8VHobLVLUPafFGjFmiQWz2evjzAo3vYAHlMgo4Rhr4M=;
	h=Date:From:To:Cc:Subject:From;
	b=LJxV2OGhoEJ6ehyZ1T9lpNN9N4nn7ihbaDoztjUZHHzsifIUHJPGI33+tZkvq3mOn
	 qc68NTfEN/6gXEwgW2+oSFp9iMdQU0SV0UmQHYSP1DdMq6bU9EF/xvtQMyZvrB9hOS
	 MsUD+lIKzdmVGjXFMaYD8hzePfTmTZ41azFbJ9kQPu7Sh5A+HKDURbqw31rdlGJlMC
	 QmnXv7T7t2bV2mu3wQF1mLjTyV7Dtgw7Zng+gqqtbpqI1RtuE1O0uSA1Gfx1FgLbe8
	 OI6spMdJtJn2+4K4Q/J69ceZ0uMLRCFZYyw42ae6tl9jNk6kDli8djNJn0dBSzdsuX
	 CnWY1M6YotT1Q==
Date: Mon, 21 Apr 2025 22:30:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: dup3(2) now specified by POSIX.1-2024
Message-ID: <edcoajvvdnxi6e2rwbz2zfhj7lysbrhy4rafkew7wu2e3s36gv@rw2jkot3eqvh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gqmev4z7m4vgwkyx"
Content-Disposition: inline


--gqmev4z7m4vgwkyx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: dup3(2) now specified by POSIX.1-2024
MIME-Version: 1.0

Hi!

dup3(2) is now specified by POSIX.1-2024.  It should be provided when
the POSIX feature test macros are used.  Are there any POSIX.1-2024
macros yet, or is there any ongoing work for that?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--gqmev4z7m4vgwkyx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgGquIACgkQ64mZXMKQ
wqkw3A//aOfRch4uVT6Bpl+PscpWYfEvUHuAYyYYV2eiN2l9r64OBkNxHdAC4EWp
d3iXgq1NOwYcS3ZCpo4NrboAdy5kFTIjzbbLJvGwiTBiWq3aKa+1iNIpdl+L6gke
atxifdzuUpPAoRayK/wAfpm4E7cja4rNH23VVsNo8KibwM3BFCnv0i0WupCz7LBy
kWX/uiqs+hwqHxS5z6q80HlvSL9BUw9nJig3HRZtklYmhDO3poRuTjlOjvAMLci3
yUr9gyCKkx/X7/J6DpJxBYWNQr573Rw7d2Cq08xfv7GcTwaVGmRgtF4mltkIAYoY
sIZIUBQkLDihMGSQV/aX/Xg4PK5wqOoBxi4P9dsr5xVb+Z/M/C5GanhTju/k9lwO
x7AB9FEpsLO57rJ6SC1DbfJcdsR7jxWfuX7ZKfpSvpk2Rvr+OUSuDMvBVH52FP24
hd4f9QdoN12Q+3NmA3QhbD7HizmCl5WrnErkxKhL7UoCWTkJR/3+eZms6NtdufmG
SHW32A7Cs8mBFL3XZAbiI2EKHP0+k5MFRPO0M3YdwNolqxp9FMQnLh43w3v26vcw
v5113G2eX43ZjMh6ZxRVd7Auya80SKiPE8ycGec3mn7x77YWo9q6YZcmgk7FP8gy
sK9CxHKqNA486hp2pvYP477MJ9S/O3JOfjz0uB+yk7sEuLV6RjE=
=Oh2x
-----END PGP SIGNATURE-----

--gqmev4z7m4vgwkyx--

