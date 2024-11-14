Return-Path: <linux-man+bounces-1915-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9849C8D04
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 15:39:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FD151F23576
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 14:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDCAD210FB;
	Thu, 14 Nov 2024 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+vQYc5n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A657F9E6
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731595090; cv=none; b=W0GP+FSCngEA5U1iJf8LOE7b/ODvxJejYLJ3QZm+PPJq4kmGX70iBybe67ZZv6eCHeHnI/5QKUjhZMR0+D67dC+QqKeJrsBAC7fYXZW7VxAtkNpCPOGN9h19yNcNb1WtTUqEjL9wO1wahvyGZaWrbX6Pol2hZUKHfVNXKjPIn/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731595090; c=relaxed/simple;
	bh=XhHj6Yk57QpWaA1ih8Rf6b+EZTVZ+fkUtg8cqILadrU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QLNDaBtRCYtC5E+wesk1cXsEub6NMKPHriA63PazR/tLyD0iiD9AfwvZpE5b4r30+e/2tgFYXDRKmUPQqtaF1WSLo/PusKlbabZhB9r4r195jPjTB4GrQff/0ln4iqBrQ4lUf9FOOE0L0E4C8TORRmRbwMHvq8Yb58+pYdHmq0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+vQYc5n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D0F2C4CECD;
	Thu, 14 Nov 2024 14:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731595090;
	bh=XhHj6Yk57QpWaA1ih8Rf6b+EZTVZ+fkUtg8cqILadrU=;
	h=Date:From:To:Cc:Subject:From;
	b=B+vQYc5n8msYi9jerE5TtAwFWcRJzLROR/NPMPfDVw6vWg/f1J3Fp4Yu6eH5p4HYl
	 SisYu8s4I+cf3aj+75b3s0XoOdDPXCSHLaskRMMgev+wGurUKBl5kqQXo6MRw+Xg6M
	 pDB7S7xQOdgoiPTybRuqNouncWpbBC/olWySaJctQkzvKuK8DAv8atVM/FqBdTmwzM
	 xd6viVLdk7B0OdOmLjQwREToLTPY+Q5CZ372oH8VHs1AQgkGwURtEjfragh0t6dKkM
	 tzG76K2O7bD33tZ9vJEgwvqZ/d76+DLkWuK4qy1cYnnMGfF+2N0ioIwewPjBrOX8rV
	 OBSd9kBIiYgrA==
Date: Thu, 14 Nov 2024 15:38:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: lfind(3) $3 type should be const
Message-ID: <dhl6sjfzoeezrefjsjt4igcn3jlqxvvbrz5uozxjmmmskxse6l@qtfpmwhgfiod>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cvo3jdrpevdvg5ni"
Content-Disposition: inline


--cvo3jdrpevdvg5ni
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: lfind(3) $3 type should be const
MIME-Version: 1.0

Hi!

lfind(3) does not modify its third argument, *nmemb.

It's already suspicious that it takes a pointer, but I guess it's due to
historic reasons, and that's already set in stone.

However, I don't see why we should not make it 'const'.  The function
doesn't use it as an output pointer.  Should I sent a patch for
constifying it?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cvo3jdrpevdvg5ni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc2C08ACgkQnowa+77/
2zIjIA/+MDe/nxQV3wMATSf3Wh+4PZB0m4LVkuavK0/aqH67RkhbMd0xF6rFAoDA
NhYW5JSekFDK/DzmhoEL0t3tFQSOWyjsENpyknz7dDQLriJie+2bTl6EAV/fW7Pr
tu/+nFDHSUbAfEEN4UHl8ywqe2KVaZGEYUtAHyBkkOBJXIoh9CxnQnxcAp9Aon+q
q2MRg/2l10cQXZP6UPxCOgmD2exyZHzYtA4SzLCeusRQW/9+RZAhtvhLGQszb2uW
7mgyunV9OvMRtQnx0oNqv05eTVvjPXbIGRkWOhRJhayBS9kPkCmJ8+ZiJxTHOHJM
8KDQeM40lbvlAafKHs20HtnvLOmGbHhOGhftDlXPwZ5+Qch4jGDGn5RDrHe4JoJ8
LfYoc/UBjDbMT11f1zx2EX6fmb2oLF+/KvjME6yDf8nbtJMJK9FOsTYdpxcQrOaB
vQOUjsgTg1EgOH3DFJCkU1gO3pq6uRuKg1mB8T1fBsAZOOdtOIUnPyM+hhTQoP1+
Rkw7DGInNG92QKhqjB2XE02fuUXp0KN3lrgHIhM36TeLL42iSlvCEVixvMLv+JBZ
3vVZtOoXpFwDtzJTAVrM0SrnMAHQ8p9uKl3RIpwDm2e5IoHPT8KMEgimWF0krljX
HgvlRFxTFJCC2+Q/R+lWdOgb281jJmltMIi6iSuQRqwc8YyGVlw=
=kdkB
-----END PGP SIGNATURE-----

--cvo3jdrpevdvg5ni--

