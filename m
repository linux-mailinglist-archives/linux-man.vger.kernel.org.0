Return-Path: <linux-man+bounces-402-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A36583DAB6
	for <lists+linux-man@lfdr.de>; Fri, 26 Jan 2024 14:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A98651C226BB
	for <lists+linux-man@lfdr.de>; Fri, 26 Jan 2024 13:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47671B80A;
	Fri, 26 Jan 2024 13:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXdkFgzC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A483BA39
	for <linux-man@vger.kernel.org>; Fri, 26 Jan 2024 13:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706275673; cv=none; b=hkSHJzsc5AOEGSZSRDoXgc5kSLbe1NlLQePei4WKnLmIf9xrnxLczX66YFLBZKoy40Hoq6+J2pfCX/r98Xf2yTiZayLgAOuQ62+A2NL9RcwEPwv8+IMWgiMSLN0yL06iJQpxMhhnYX3syP/o53H9UlpukECfQt6ZpRdbcFVPFzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706275673; c=relaxed/simple;
	bh=7FinwCKAgnWsRG3kcSjYscmDESOIbGMgxf7V8CReGHI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GmopinNTpxHqYkmCVr8p1inMgbFm8Sr/dx5BLC6Rx1WFZfwF6L2e/Y6FDXxn1VCrC8j73lfC1c306wOAjvLzany49R/c16dueCrA1alBoftNEO60eswC1sLLAL2eBOZAnMAyJLeqcfos1uyovEBc/xPOSYT2Ec2ss4rE4KXsWgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXdkFgzC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EF86C433C7;
	Fri, 26 Jan 2024 13:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706275673;
	bh=7FinwCKAgnWsRG3kcSjYscmDESOIbGMgxf7V8CReGHI=;
	h=Date:From:To:Cc:Subject:From;
	b=CXdkFgzCi9fqPNtYuNHt2aVRhUhNuBiWZ6PIMeFp0qF6o7eD3Zg/x8rvGEMrMvgBI
	 vKrr6Vfdsjuxc+5qjKMUyCcXdNWp1PyQqHkvH3RdJGPfQSfLtkDkmEbnmsE9uXiLbx
	 lwyl0mloMxf6ZlhWvDEny2UhmIbq1wgxzFlmHFyM5N2RYXg/TH9l3V3fWtelxeEGPW
	 pB0gqkCxujkaC3hHvd9KZnZM9re0PidrCZs0fzemf3hs/4RfS0FljeFCMNd3tEnRvp
	 7HLqQSBXzf2euyK6M//1YXnejgDxbXSkljLh4Q9/enDwqJd447HfPYNX03D7Wzynvc
	 welbJRlg4FoHw==
Date: Fri, 26 Jan 2024 14:27:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH] CONTRIBUTING: neomutt(1) can now be used to sign patches
Message-ID: <20240126132722.6325-2-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nwzl5x5clakllr63"
Content-Disposition: inline


--nwzl5x5clakllr63
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] CONTRIBUTING: neomutt(1) can now be used to sign patches
MIME-Version: 1.0

Link: <https://github.com/neomutt/neomutt/issues/1471>
Link: <https://github.com/neomutt/neomutt/pull/4134>
Cc: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index 803f9c542..de7ec595b 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -58,17 +58,14 @@ Description
=20
         There are many ways you can sign your patches, and it depends on
         your preferred tools.  You can use git-send-email(1) in
-        combination with mutt(1).  For that, do the following.
+        combination with neomutt(1).  For that, do the following.
=20
         In <~/.gitconfig>, add the following section:
=20
             [sendemail]
-                sendmailcmd =3D mutt -H - && true
+                sendmailcmd =3D neomutt -C -H - && true
=20
-        And then, patch mutt(1) to enable encryption in batch and mailx
-        modes, which is disabled in upstream mutt(1).  You can find a
-        patch here:
-        <https://gitlab.com/muttmua/mutt/-/merge_requests/173>.
+        For now, you'll need to build neomutt(1) from source to do this.
=20
    Patches
        If you know how to fix a problem in a manual page (if not, see
--=20
2.43.0


--nwzl5x5clakllr63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWzs1YACgkQnowa+77/
2zKP/A//X/WS0aMn1KVKik9529BSET5TtEK9jdnt7PORZwLS/fzyYTgOOSTcldPQ
W3K70KSNUmHCGlMxjLqtvYOvrhAgc8rJoFG8L2c+G/dwCysagC092b/WgwwWlRuC
V2q4e0/CYZgitj0yLT+MewAzFVBusnlGI2AHA4l3EUmbnnPDHcgjA+M7hvYRfIPV
lU4tnzaZe8U/jG4bA4RCPt3E4gJcypo/nhjIFZXxorV8L5ILLimQ5gKAxZZ/Rl3L
f8nB55DT/PAKpxEant62iYqblSPkBkbpcFIlu9xIrStmcmksbsBB00VKFEZG5BeZ
HZG7zbJ0F35+2w2T2Az+hYyMVyKKdY4acI1VMrM+JaPiG9cfD/XsU6K2NfkK7h1v
SDPxvJMhKTeJ+HALyGO4RnAdZDjfN/oiv6lnsfMgUtq6XWrNkSu/2Z/U4MKqKrLL
CzmbAP+dqrl82XqV5P+UlQm4XZErxtJIJypT0rdeI1XOcdlSeFXdB2l82IwbVXij
vHgInuBUrUyOCswFS6stMqRLVu9Rr5EpELzD1A6Iwqkh95aACakugoURml0D9C+l
LUUAWPyXFSjMXi17ncHu5RcBy/hZ898l67ATZikRp4mfeaeEMTYCtoJFC+uF308/
RThrmBlHaKBZWE3v5W1sYKnk+dc3DHp4DJ8w5BmEr4+DcvRVsQo=
=WAMV
-----END PGP SIGNATURE-----

--nwzl5x5clakllr63--

