Return-Path: <linux-man+bounces-4533-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6584CCDD66F
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 08:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3A0B300F60F
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41022E22BD;
	Thu, 25 Dec 2025 07:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="pgdbfcmN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78DE2D949C
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 07:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766646629; cv=none; b=SMR963C2sLV0X5kxHvBEyILH9yemVcU6YVHva0TSgaJJ0JvQj7Kn7eG4sVkmoy9d5e5iGv3u7Fdnp7R5OTLyuHd/vZtedX8+KN/A6ACcQ+/UvBKQKlUuq5sIstIKx+ZnXUso8lWVbIPi2nFcFvtlTs4Y+adnhyDux5aAsYcBNlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766646629; c=relaxed/simple;
	bh=IqXPoLuFslBSGnLWRhUElO4lEyLL3qFVTyYH6i+LrHk=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=N1SX+T6K9DazcX4wKgH7KYO9k2HDi0QOrnct0nSUWUGt0sWbT3FRp+U7PrLyG88InUDYyQWEt+hgr8WvcEobMt6OSFH+40/LEpicvhekZM6ZsaTH3AlxouNN5BX1O55OkeHjWN9Lbl1WSKPbEpDjgXlAqXE/ibaABQ8fDwNnmVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=pgdbfcmN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766646625;
	bh=w3rclioFpl0HkUr57mtqNE4lap3VR5s/nWQ9StYSE4U=;
	h=Date:From:To:Cc:Subject;
	b=pgdbfcmNeqPmow3xSqRZBIP9MSyOE5GlsaSaOOeUcgauEvtPgH7jbxtf8YHgd40MI
	 axs2RB3b1E1KHmJyDEELmFqU4vP94jTiB1fHxBqIthbXg2IGUFeiT3zqoTVc6qd54z
	 hU728XFoaWLZaLQK+XXEAVCBngRCGRlo5Dfawz7S2kRuNSTH32W3dOVmJaDDjF9btL
	 CUpd3jvcDBlhviCSscxjNb9kFXDqg3SQyEvSZQ3mQj0xmqZRwDw6wTUzS+qJGLK/RG
	 gxpls+AFL4Hl7qSPZ11M60OM5S4rm3pHT3nZLWdw8GVofF5wpxU3RZ8rtZrfB8MOep
	 /h+sdGaNRq3IA==
Original-Subject: Issue in man page  sysfs.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020010.00000000694CE361.0012CF11; Thu, 25 Dec 2025 07:10:25 +0000
Date: Thu, 25 Dec 2025 07:10:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sysfs.5
Message-ID: <aUzjYZg-PRZ1N30c@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1232657-1766646625-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1232657-1766646625-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Without further ado, the following was found:

Issue:     Documentation/trace/ftrace.txt =E2=86=92 Documentation/trace/ftr=
ace.rst

"Mount point for the I<tracefs> filesystem used by the kernel's I<ftrace> "
"facility.  (For information on I<ftrace>, see the kernel source file "
"I<Documentation/trace/ftrace.txt>.)"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1232657-1766646625-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM414ACgkQQbqlJmgq
5nDXbw//fUrP13HFshWa5E107xIKzYvCn/qzoWRkZCrNa9SG0oDvo2MAJmjfEdDp
KahWRHfrxMlj4Ur4DObC1J1Atkcx+WMqzcd3rhnBv8rgQnuE9OnexePYgN9tn2kV
3GXHxHHjWCipnEZ5Nqhl5ghXPc1wCOhNDapw2G3dRtFQvRbWOBrl6xMoV74BdIAg
6HLPQIpvNXsu6QRSkFc71vzVvvtWShaOzMoY04kbSfINqEzpz5drnWyjR7C8XUQT
ETRkCgCPZnixGhPQx/acBIUIt4cue8B7zTLYM0twHo/j7w3PlYqcK1qP7OVUAK7w
xMq9xsncA/n5MuA3OWe6/Q/oto+CXh+E+Oi0M67bqvGLr5zCgLGkSto2lc9UAWsm
DYXexPOHthqKgvMvprnrOAtonDXnPXoqab/CF3WHoA+/61goXl1RMUtcp15JT0Id
l+rvfcnk7AN8zIyVceqEH45dmOGUuc8qiXRhEXCTNmWxnbD4/k14PxarOMjB8Kh/
eSJ6q9wiSp1IxpYaPCjAvZPX3ZDS7196T9+KZvHVKUxr4YU+TdvNBEQuJUTzBpYK
ltocmFa4e8gJOa2Eyi+BK8HxlFibjhyHHisYPnk3qaZaHpgbAXJ8qw9XsbDh20ee
4NIRxnembpPSdj85mGRpRWUWPn5KpSaRGqdsrosXXjRi9gJZ4Ps=
=e54a
-----END PGP SIGNATURE-----

--=_meinfjell-1232657-1766646625-0001-2--

