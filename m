Return-Path: <linux-man+bounces-3971-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4698B9E6BD
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 11:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75846420770
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 09:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31AD2EB850;
	Thu, 25 Sep 2025 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoREZKMv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E1F2EB84E
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793001; cv=none; b=AzY1pVMTtYWIa4xt5nP/SY8yZZBrdNJLoD1DKh6KkbpOiz9XJjYnSHpDrwciHNIU+ZQo870EIKVUoCr7aWAjXYatbf5+5CY87B9BRBC3Xq9Se/yG/C+4WrNykCVNOwNRKQ5522q1++bEgiBDkF1id56J9gNZ7RroA/cjD62mWO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793001; c=relaxed/simple;
	bh=iM/XyNBm6TaZJSHPyODQyKgWqQFj7/hBOkh2YbRNjW0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kh4Xdv4SPdXAiIB/U/RRz1wYOVPLcWUNLjz1RMYPDabwtooi3drsQwj+9RtrpDIVAGFywUnluj3FJA48ZUqkUl0asEa3psoLSyyzye7aftugU0oOxWckE3nKLU+tGfaAdYy2+t70OltxedBxvJYHYLjdh0EPlMuMtBCZkMaZGPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoREZKMv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39FA3C4CEF0;
	Thu, 25 Sep 2025 09:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758793001;
	bh=iM/XyNBm6TaZJSHPyODQyKgWqQFj7/hBOkh2YbRNjW0=;
	h=Date:From:To:Cc:Subject:From;
	b=KoREZKMvbKFYNGB/57DvJYbiIleXr+Jc2ISHvoJgjfAix4/RmjF4J8vr9y6ir4I17
	 3ZpkGWyoOepl0JEd2Lc0eWWNuK8qsRsiKIgbAaOwgeexJ6gZ16gBvKborRduz8PA3G
	 b7H69aPhtKw9nZoBoBKJbg3FwpLdRabHAuBFSVBpgU4Pwa3LypZeOTFURf4tlrN4Tr
	 pEy4jJsU6osA9J1X+dt/4owcqwJblWajFP4wo1bfZCjRhcR0Yyuqsu+maAE8/EDGHG
	 CcMcaW6dZP2sYpwdiwnNz/VsZtlT3xLed+4pJD4aPM3qINpDFWdi/dxwzhow1qfcaa
	 0EAPm+GT09cQg==
Date: Thu, 25 Sep 2025 11:36:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: tbl(1) issues in console_codes(4)
Message-ID: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jn3d4frk75n37fr"
Content-Disposition: inline


--4jn3d4frk75n37fr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: tbl(1) issues in console_codes(4)
Message-ID: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
MIME-Version: 1.0

Hi Branden,

I see some issues in console_codes(4), and I don't understand them.
There are tables where groff(1) prints past the 80-col right margin, but
I don't understand tbl(1) enough to understand why.  Could you help?

	$ MANWIDTH=3D80 man console_codes \
		| grep -n '.\{81\}' -C5 \
		| head -n 20;
	<standard input>:327: warning: table wider than line length minus indentat=
ion
	197-       terminator) is interpreted as a zero.
	198-       param      result
	199-       0          reset all attributes to their defaults
	200-       1          set bold
	201-       2          set half-bright (simulated with color on a color dis=
play)
	202:       3          set italic (since Linux 2.6.22; simulated with color=
 on a color display)
	203:       4          set underscore (simulated with color on a color disp=
lay) (the colors
	204-                  used to simulate dim or underline are set using ESC =
] ...)
	205-       5          set blink
	206-       7          set reverse video
	207:       10         reset selected mapping, display control flag, and to=
ggle meta flag
	208-                  (ECMA-48 says "primary font").
	209:       11         select null mapping, set display control flag, reset=
 toggle meta flag
	210-                  (ECMA-48 says "first alternate font").
	211:       12         select null mapping, set display control flag, set t=
oggle meta flag
	212:                  (ECMA-48 says "second alternate font").  The toggle =
meta flag causes the
	213:                  high bit of a byte to be toggled before the mapping =
table translation is
	214-                  done.
	215:       21         set underline; before Linux 4.17, this value set nor=
mal intensity (as is
	216-                  done in many other terminals)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4jn3d4frk75n37fr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjVDSQACgkQ64mZXMKQ
wqkqbg/+KFkqofN2LcLgvzK5XTV0ExH98J/7wHvjSU0owOTtCbCwWkss7QdPq5qo
5Wx+5p7Ct88uqXgPps8RF7Q8RjngM7kYtCcbXFnniVZhVK233OlpBXxhw3rXtCSd
oOf0Mj7HPNfnBeoFX+gkUuFOEPnHFa84kdMYe1yQfHdOkZpTpTN90nm2JJvKiVeP
cq+Dwpas+l6qHYyqwweIfbIiuCpILtDd+O6dYmdjXLJomfLPH46g9oJFgtrkFn5Q
JB+585qTIwVG0fKijAlweGlF1O8gkBjrbwxoqKvXCULEyIlPLGZ7qzDKETFFdYrm
Y1V7q43ECHK3hG9tGI2gGNr4XV56EFQd/D1ApEIzhwloyCypvrQ3FUhMmJ1mmR7n
+alWNWXbbHlnIOE0RXaVstluiVssWq7Tq3Ust3VH0Lq8j55qUcp7sZWC+WK4HV0t
9ib0ANqHYQfE9DwPd1ln5v9gKScFq65KNokvEM14uPFcmWNRlD3u/gK4EzPRkLCA
bNuTJAoTWuXeP4+JkJM1x2hexvzkl3B1Xg38IGNFxKbxz2KdpWm6t6w2hx3kz+nH
xmx1CjG5xRyTkgO1jd9zDN8HkYqmBsINMNBLJo3Pg+6vngsx5OWJMa9aRKstpwdk
iqdgYGI+f8MEyf3FFrFalruPcE0+GbWKCWfcR1AG65TE/oeBIVQ=
=qoyZ
-----END PGP SIGNATURE-----

--4jn3d4frk75n37fr--

