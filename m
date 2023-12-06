Return-Path: <linux-man+bounces-223-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2964D806D8B
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 12:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B0C2B20CEE
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 11:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF85C31599;
	Wed,  6 Dec 2023 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cs.unibo.it header.i=@cs.unibo.it header.b="loVuFeTH"
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 508 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 06 Dec 2023 03:12:46 PST
Received: from mail.virtlab.unibo.it (mail.virtlab.unibo.it [IPv6:2001:760:2e00:f0a1::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7B371D3
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 03:12:46 -0800 (PST)
Received: from cs.unibo.it (94-33-52-139.static.clienti.tiscali.it [94.33.52.139])
	by mail.virtlab.unibo.it (Postfix) with ESMTPSA id 2482C1C013D;
	Wed,  6 Dec 2023 12:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cs.unibo.it;
	s=virtlab; t=1701860650;
	bh=I9IQziwuBFMsfn8ZmySympeS5LOmBZzNdAeDanzW0jY=;
	h=Date:From:To:Cc:Subject:From;
	b=loVuFeTHqa2yiP8QGTn1sJBDy5AJ1vc6RZouxOg3n9vyYHfudnt3f2ANdCYsQ/pcA
	 GY/lGSBhvpz3gZ3QTVuQFw52GspzcDIwByr9p9nTbVT1vm+qV5eqVwLOUd2gBAaWwI
	 efGflxoyjJwbCgWiK6YMVHX+fofyjcXory7rLbY8=
Date: Wed, 6 Dec 2023 12:04:07 +0100
From: Renzo Davoli <renzo@cs.unibo.it>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UCAfqyGerksMrX9u"
Content-Disposition: inline


--UCAfqyGerksMrX9u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Alejandro,

utimensat and faccessat support the flag AT_EMPTY_PATH since Linux 5.8 but
this option is still missing in the man pages.

(actually Linux 5.8 added faccessat2: glibc wrapper for faccessat
 uses faccessat2, and faccessat2 does support AT_EMPTY_PATH).

I think the standard text used in many other -at man page could fit
for these system calls, too.

AT_EMPTY_PATH (since Linux 5.8)
	If  pathname is an empty string, operate on the file referred to
	by dirfd (which may have been obtained using the open(2)  O_PATH
	flag).   In  this case, dirfd can refer to any type of file, not
	just a directory.  If dirfd is AT_FDCWD, the  call  operates  on
	the current working directory.  This flag is Linux-specific;
	define _GNU_SOURCE to obtain its definition.

All the best,

	renzo

--UCAfqyGerksMrX9u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEuvF7L/gvPxFN/uEULGX3ntMo5hsFAmVwVSAACgkQLGX3ntMo
5hvQAQ//egpnuLZsW9gIP3Ln95HuExBayFsebAkxIrZvidaRqmxC7Ih+CGLzvaWi
II86wfkCKz1Vb3R42oCJ2uijBeNPv7c01PbG/xCWt7Ftdm8wuFdXncgpNYw0FGdy
IrVYmkn0sMt7QTTm4BcrG5mOudF1S9JLfCp04c+bThMZI22SyTiemMNlQOXNiTU0
NYJPli+QzwmV29R1YuXEgkeX+tynFC75RGnPdkTfFtfjTfvSNhsljUxuzs1FeF+B
8fEeqKzJuoCIp2B9AvmoO8jiL4tQi0nVRXK8zcnQTxUxpyWJS3DSWEJMNOw9OmDo
JNaBvYhi7P77FmO2ZI4gfP3TlrxzyeYQ+Jk1gDdLTl0rE+EHI/32u9/vhtgqSFnC
fLBl2ER1ZIMH1LD+/8u0CBg6PHt5zPKbClaLDDxpHNstzaVxTWHFlNCiMmBokoX1
ryKh83TWpDKgWYVQSCFqHa6Z0P3EgEV0a1ywTGkzZFOHf5I+B7RdbwQfYJdY61QV
mLzZofDspIGURN3sJt+aUzO8Jzdz0sbO5hoG1FBOBmgynmHtnz97IjLa8woeN+pK
GvXo86Q+MX+35YjkdPvSJpWkeI5/g2BCjq9u+TyLOKTt8n86+lVuLLR2RQtI+c6g
YVLAV39lYMtiXVBKLo+ooaSCdCBC8WjdI+0CKL+1hKCf++WEQMA=
=Orn6
-----END PGP SIGNATURE-----

--UCAfqyGerksMrX9u--

