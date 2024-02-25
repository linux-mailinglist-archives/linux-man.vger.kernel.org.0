Return-Path: <linux-man+bounces-475-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8B5862A24
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98F24B20FB6
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 11:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C888D101F2;
	Sun, 25 Feb 2024 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qek0LqLC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87862FC0B
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708862002; cv=none; b=DJnJzhZta2AfppluGVzklxIpNNuUjWC0wGSOD1XUDAA2md6dLIeg3LI7/emYrn+apgIUR2H+ldaGKBmbqilA5o4KaBLQ4/L+HPJy1MNL1Bq1PVEOaYnIDmSToI0sNFckcRTbFRfgxGfq0kjZzK7w/BTEEmiottTV+toIEYjiDTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708862002; c=relaxed/simple;
	bh=BaU1pmlMfTT3hc8foRPhGiXz4hTGne+t0e9553Ec4tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cM83JH2fdyZtuFMhroSpsh3h3E9ZSDjX1XvHKJUO0ocQeGmCupfGk9DdJ66drxxi/EdgoibrFxyIUquc9uwu7qlgteCYJcUpzmmce4StIKby+/N+gfT5ayaovvtoWeJ6ccMCOEFsK4Icffauz2DJGFfEqr0ATXkK1YE7zfwFLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qek0LqLC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12FB9C43394;
	Sun, 25 Feb 2024 11:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708862002;
	bh=BaU1pmlMfTT3hc8foRPhGiXz4hTGne+t0e9553Ec4tU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qek0LqLC4TWqbQBIF2tr4VPOd1TUmzVwdKQpvyNTisVD2oAvm7inxSZ1oy/CRUQG2
	 0u16At2TDdIVMoSfisRkzhMdjUURahzn+3tmVsCW5Wz5Oa0srlUS76yBi4ZBzo5NoS
	 v8EpOj+UDmSc8ppTkq41qymWubRWPehslCbfQuCGyDeQLVWo1Yije6VfAZFj7pGcNP
	 8i5SSFkd1AioTssHQQqS4JP6pw5nSWAJfAotqkDrNMdcl1e7ph0NhAI+1RrXc1DFhp
	 IZUGXXTN+IaSo86l+seWgYgINeAMy0z4Htg9uq3ViLTYy4CXUkGtGmYQE56OIhFBaS
	 PViSYust63Cgg==
Date: Sun, 25 Feb 2024 12:53:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Thomas Orgis <thomas@orgis.org>, 
	Eric Blake <eblake@redhat.com>
Subject: [PATCH 2/2] sigaction.2: HISTORY: Some constants are or were XSI
 extensions
Message-ID: <20240225115307.438556-3-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <20240214095707.1824c25c@plasteblaster>
 <20240225115307.438556-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jn6pv4ukqvtevdbe"
Content-Disposition: inline
In-Reply-To: <20240225115307.438556-1-alx@kernel.org>


--jn6pv4ukqvtevdbe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 2/2] sigaction.2: HISTORY: Some constants are or were XSI
 extensions
MIME-Version: 1.0

Reported-by: Thomas Orgis <thomas@orgis.org>
Cc: Eric Blake <eblake@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/sigaction.2 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index b64dcaf2b..daca34a27 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1026,7 +1026,15 @@ .SH HISTORY
 .BR SA_RESETHAND ,
 .BR SA_RESTART ,
 and
-.BR SA_SIGINFO .
+.B SA_SIGINFO
+as XSI extensions.
+POSIX.1-2008 moved
+.BR SA_NODEFER ,
+.BR SA_RESETHAND ,
+.BR SA_RESTART ,
+and
+.B SA_SIGINFO
+to the base specifications.
 Use of these latter values in
 .I sa_flags
 may be less portable in applications intended for older
--=20
2.43.0


--jn6pv4ukqvtevdbe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbKi8ACgkQnowa+77/
2zLesA//b0Xo/613x8lIvpOIDep3+EyuQyU3m8emOjvRoNZfM/1PFBAgTjbKCihn
2lKw5SOcfhVMp2lUJo5VK70QpjznQIhK9Qg9pjcGSfo1O5rUwKPqfoqupEGkPozs
DuIUyIXYjaF3pAOSdOQdeYdt/mPWNqDp2nFKdmhdgXoM5X9whUZWvRtkUC6DZ756
3K3gqmVaQjPfPUDnanWhRjPO9nj0G9Vj+6l0EMGyYH68o1iddHSAKbDD6lREbTnL
Ig7ojWOL2ICWGierx7P7A69dBMqpqepdCCwlInMr2bT1toyWFJYf1T5KiqDARPyb
4H0KDffLpnhfkSlPM5S+RIJiSl4psBtGt1ufC/LU57heRzx0g903ViM2edzDPtCz
hNTScF25J8fYX6Il1eTvdM2kIWxAc8FqFmcSPbOegwqq3hLyjOYOThDWpN7TvjQu
zouTNZl2KDepWgXzd/FS5viVcEYL3rqi+CvA2Zw/4E5briR8ka+rjsfHYlF6LN4K
HNDKyrgjhFT/Db8wFvftZ0tEpPI2S7/5RFv/aDD/a+aO0lDQptUaKy4yKp7SV4T2
nsytTLgNyYaqfq+f+RfdIGbUZV7kdWIF1o2cT+2I12F5zuKco/QF+U0CyYBAx7EZ
38y43LftSg3OkXYM2gLz4xHp4dsLY35FZ+0bKevnFhaAK5nNOTY=
=Nxhp
-----END PGP SIGNATURE-----

--jn6pv4ukqvtevdbe--

