Return-Path: <linux-man+bounces-718-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA708973AC
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 17:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 490B5283788
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 15:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A01433A8;
	Wed,  3 Apr 2024 15:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="AHBn/6DK"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652E214A0AA
	for <linux-man@vger.kernel.org>; Wed,  3 Apr 2024 15:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712157150; cv=none; b=BNtk8Sdfa8bWM48cDWV2HHdDOTRjTtEu4dwBCvtIIbbZ4qDR5hPMTFI9nJR1clcX6dHjtao2ZQawSeYum1/i+wi4ZwvKIgzJQzeTTFWfydWzyD97XNRo7h/76JCmA8e/t3Cuwf4Jb0FAKi0JImAt7t0FsumuDYUvs8m8xpB7aLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712157150; c=relaxed/simple;
	bh=GScnjJeVRRKITssNSpULKG0lxj7YJJ20FP5C4GfpMFw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=gUwNMp/mGYD09+JFzQ13y9y9/Gk8oq+pjHRKIqF9EreHMOcMRq3eezbr2qDgvlSb2Mb0SGPtaJWXoHC+2WVs+/6O7tJ/ZHGYAkIoTPnnaGn/5OvTS//WMHz6DqHBJSmw/GWASfBN1/XYaqtAhriS1whWp5+DElE8IGBYC5i/ElI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=AHBn/6DK; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1712156806;
	bh=GScnjJeVRRKITssNSpULKG0lxj7YJJ20FP5C4GfpMFw=;
	h=Date:From:To:Cc:Subject:From;
	b=AHBn/6DKQyAabBOOg5OkquOKrTb/myJfUc4DCiKXPSYHaXjsAIe5tFR+5DpHLZrkA
	 EvzaCc7lzrchZvBd+Eie/Rj9eda2g8oI3XZ2BxvWe4/T2KUvjfmPC4pAZOQxrdXCcm
	 +yrMU2Kej2nVRC9OOmvhM0eyMK6+QKSKGCv8Nr581oTEW+gN4qexui2VCM5EmILXMw
	 FczZS80RfWOlHRa1LnwuK4NAiIhJLM4vknr7kRq14Wm23AfpzmQtZbhvtht1/QjdkB
	 ZjWROln1iI4rwkBqWSxMNMYifyfG/KizJ46TV/QaYfIwTvaGr77UEf5OmmgoooJS0j
	 J7W/A/fDE0xxg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1340A20C4;
	Wed,  3 Apr 2024 17:06:46 +0200 (CEST)
Date: Wed, 3 Apr 2024 17:06:45 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] sigwait.3: note sigprocmask(2) requirement, explicitly link
 sigtimedwait(2)/NOTES
Message-ID: <qbn6xlzwlmx5q67fhb2njbb26rllq4b2dtcquvzjlh72ryly2t@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aadieof3smvrilp3"
Content-Disposition: inline
User-Agent: NeoMutt/20240329


--aadieof3smvrilp3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This comes from a real user complaint. sigwait(3) is the most obvious
of the family, and it doesn't mention any of the usage details.
Most of these can be crosslinked, but not mentioning the sigprocmask(2)
requirement is malice.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/sigwait.3 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man3/sigwait.3 b/man3/sigwait.3
index 226a97e6f..b65cd4db3 100644
--- a/man3/sigwait.3
+++ b/man3/sigwait.3
@@ -36,6 +36,8 @@ .SH DESCRIPTION
 one of the signals specified in the signal set
 .I set
 becomes pending.
+For a signal to become pending, it must first be blocked with
+.BR sigprocmask (2).
 The function accepts the signal
 (removes it from the pending list of signals),
 and returns the signal number in
@@ -81,7 +83,9 @@ .SH ATTRIBUTES
 .SH VERSIONS
 .BR sigwait ()
 is implemented using
-.BR sigtimedwait (2).
+.BR sigtimedwait (2);
+consult its
+.BR NOTES .
 .P
 The glibc implementation of
 .BR sigwait ()
--=20
2.39.2

--aadieof3smvrilp3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmYNcIUACgkQvP0LAY0m
WPFDjQ//YoX0pgMYn/TKGsXIOQnRQSECScfs7ufz/gn46I+gj+/XQKnaOunKaaXi
PiNq/kbQUdWL4VJOU5CC7fOU00N4o7MIQX+6qAxs2h/RozFW7KnRqJj0ObY9hNnE
ZPz6epniohb+XdRqhG+8E9ZRARY1Z3GkxGh8JqbTx4RK27D7QuD0s86fctcM4f/Q
WSEZLqMve4AX2Y79exL22Wq4u+j8ojWOuecp8HXZytF04XtAhO9FbYcgiiUrDkH+
4jBgm1tjwtkSmrsNuAa548Rp7nU37h8mZb1z/oG7f8ba6zXD/v0xrwTsUbfUkRvm
pfqbAPiwbj8wQGAWEWiRRjfO4oC4xMuKFS36uLHzluTeqbUg893GVVPo8Hl8tIgV
7sPHVWly1UEfHQDtPb5/V89Sjzue0BP9hIzno6vo9WroSXTBvneJnnYmPczNv4wY
zR8pLEpl0kJv0MKWfjJCk4UX2SOLdZ50PRoJKCv5QuKFfLgnxeH2AsVmIOpmlua4
8zKO90Qg2jIXmpUvxhragrNJJKmrYgxDUVrH3x1dvvGmIwC/2doXtTSBjujPT+nU
TYBEfYxQOpVYKIXEIeeYBkqX9orfYDwmHWmX2lEYVHZ0a6r4uB5BIFOHISoL204v
b9k30iOO/TxLMt9Q/wlSvR2hKqn4a//xNKzMyEn5uld7OH1nX0A=
=Zy9R
-----END PGP SIGNATURE-----

--aadieof3smvrilp3--

