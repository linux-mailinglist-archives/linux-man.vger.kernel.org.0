Return-Path: <linux-man+bounces-196-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5D7FFF2C
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 00:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26BEC2817DE
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 23:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE7561FA8;
	Thu, 30 Nov 2023 23:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1IINCv5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D59A36AE5
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 23:07:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C7B9C433C7;
	Thu, 30 Nov 2023 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701385644;
	bh=3jQbVY5LviK3haKVTEpWKQOW8V40mDP6pP/jmNhBzO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1IINCv5RObUUvTJb+gblL35BQMhFfajGEd6vJ9hqGoCUe54MYN5NRWuj8K4DdJcH
	 xuKk6vhZAyBpfhP2v+SBsDIiMuSdYIC3qfAX9ISX3ohLV1LCPMbeBVLF2L9u66rymF
	 3kDMwKsW4Vr+LJjCbiBLqhNEgOA6Drd9BBJp+qbxkndZ0ZSo3EE4pRsW5o6RAvRvZp
	 JGKexhbchkthk3WMqB3vm1JdYcVoCdlsGH0vXEfaSkedBa/Tu/nfmGtfL+OZVYz0u2
	 wcNBP+Qj8VsUCwzqBVwVv/a4YnzAnXixN2wNedmjCDYhVrNO99WqsAtxCoVkda+FjX
	 bc6wBdBxvb9iA==
Date: Fri, 1 Dec 2023 00:07:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht, Jakub Wilk <jwilk@jwilk.net>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] strtol.3, strtoul.3: ERRORS: Clarify that these don't set
 errno on success
Message-ID: <20231130230635.4004-3-alx@kernel.org>
References: <20231130152910.322395-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yG6dJQ3pnLG9YuKe"
Content-Disposition: inline
In-Reply-To: <20231130152910.322395-2-alx@kernel.org>
X-Mailer: git-send-email 2.42.0


--yG6dJQ3pnLG9YuKe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Dec 2023 00:07:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-help@sourceware.org,
	~hallyn/shadow@lists.sr.ht, Jakub Wilk <jwilk@jwilk.net>,
	Florian Weimer <fweimer@redhat.com>,
	Iker Pedrosa <ipedrosa@redhat.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] strtol.3, strtoul.3: ERRORS: Clarify that these don't set
 errno on success

That's a guarantee made by POSIX.

Reported-by: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strtol.3  | 3 +++
 man3/strtoul.3 | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 01c658025..1f1f98216 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -124,6 +124,9 @@ .SH RETURN VALUE
 and
 .BR LONG_MAX ).
 .SH ERRORS
+This function does not modify
+.I errno
+on success.
 .TP
 .B EINVAL
 (not in C99)
diff --git a/man3/strtoul.3 b/man3/strtoul.3
index a01a1d8db..32bd36dfc 100644
--- a/man3/strtoul.3
+++ b/man3/strtoul.3
@@ -124,6 +124,9 @@ .SH RETURN VALUE
 instead of
 .BR ULONG_MAX ).
 .SH ERRORS
+This function does not modify
+.I errno
+on success.
 .TP
 .B EINVAL
 (not in C99)
--=20
2.42.0


--yG6dJQ3pnLG9YuKe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVpFagACgkQnowa+77/
2zI1dA/+MUTHKpy2nMcw+9kvTAsQKNjkgFe0fCtuT9fuqSEn3UpmNB8VwIlJBc3x
DunXv5T/3gBW96IITpR3iAeOMv+efzA3KEN7B8MhovnAp1UebpLxRprPWBY7iU/a
0jObOUoxGrRBfxxTWszSXDtGeqsV8yQSfqehJmaBFOqBuOOyRcorVPCea3MGBRGU
fEUgKWfPSuhNmfq2jKjr6L6Iu8hqQEOpKJJywjXE7hnm+TYASLQmgtUnGcumJe1S
62iQTL1+0D0BYz466ZaHqtX6dOP0nzriq2UMHVvAMlagLBVsNsI7yWH/TMWDvcGS
j2ybz7uYqXhmr2nvXB5Y7GwjabDKFe+rFen7eD4HyGQkU0ZbFl7+5MYLXvBHiZNz
pySrYKDxej+uWzOFltz4yiKT6Wa8pq2NYyieLW0xmlhkg6r1Y08DpaltBUOv0gVx
ikFj4qWD3twLdNBaA/zlNmdwJZX65rmjyhm50IqrxapETP/nUQWD6VVwDtC5irlN
mEgwIC3IKehdJHYKVpyWMHETEh9HMxD1lBy20h5ssENdJ2noJ201dFqOzMr8ZXPb
bgan1jQER5r/2fcha/xwY827fY9Qs5DZqdsB7l6SSlVgGpRIxPzTs5dGcOQsk7tN
Yyi/cGBtERMRu84y0PjdWRJNJs5+86AlwbuaRvMpcOjrA6fHCyk=
=KCP+
-----END PGP SIGNATURE-----

--yG6dJQ3pnLG9YuKe--

