Return-Path: <linux-man+bounces-681-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A98871C4
	for <lists+linux-man@lfdr.de>; Fri, 22 Mar 2024 18:12:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 528E11F228A1
	for <lists+linux-man@lfdr.de>; Fri, 22 Mar 2024 17:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8783A5D8F0;
	Fri, 22 Mar 2024 17:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ot2JLx/F"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494215FDB0
	for <linux-man@vger.kernel.org>; Fri, 22 Mar 2024 17:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711127528; cv=none; b=EwpHNr7oGg6rlZXwD/PSBtU5GM8Kbx/sAoW6EjyYsasXyGZvdoz82vfIX5+MJLbjOhWFbcFaonDP7RJ99agnXuqpfiACoiTK3PfquxbnXCl/xy/jmu9TaZnXv7lkjMlgtncjBri9JQcl7OtEaKyV+kIwVAkPXpbNsFyv5lVomTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711127528; c=relaxed/simple;
	bh=524k+tGs2DiQGbLp/sEblXvR1BsdCEId4DJOZXeJras=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=K3JtqnDudiOJOdJQ9+FPSCsfKfTJkzFTw1vTVH282HjyTGrjotpPUy0qyCk6MyORxAE/HIAzE8WMRYikToeIEspXOKpcsimOy1ZUWje3UzJwdPHQis8SjlLaIiWi5SIuvAUPKqCGCoW9XL0P1ycBV3eaMoEUVzUQP0yew7gJLP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ot2JLx/F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FB09C433F1;
	Fri, 22 Mar 2024 17:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711127527;
	bh=524k+tGs2DiQGbLp/sEblXvR1BsdCEId4DJOZXeJras=;
	h=Date:From:To:Subject:From;
	b=Ot2JLx/FsulLOpB08POrBdbP4IWxVQuyWx+FT1U1E6ZUjQlZAQi8QbSYEDIf/Wu2X
	 6qijME0e5rtA206f2cMwLMDHLOcJpv323FwINtwu33b2HXIrfMi39YaJ2EVf+ptrNU
	 NyKL4xxXFV0gfTFgAPQZ72vE51AK3RroGjhkEDpbwJkElqB1lUcUsFmi1MKaTTrJ0M
	 r4/y+gfhSRMARREzS1+SkEDhDYTV+VeiaOyaXeFbdsDQeVzpyDKWbRJ/CrslwKegHI
	 IhcaN3xy4o3PMytCAjGl4pYkKjgluqEEp3uF56jLfFkzcnnZZal8jWB4ITSvNf4fLF
	 EnudCA9SJZsUg==
Date: Fri, 22 Mar 2024 18:12:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, linux-man@vger.kernel.org,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: man-pages PDF book's an.tmac
Message-ID: <Zf275AdkitaeCq3E@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="si6SFFRjzf6Bg1aJ"
Content-Disposition: inline


--si6SFFRjzf6Bg1aJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Mar 2024 18:12:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, linux-man@vger.kernel.org,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: man-pages PDF book's an.tmac

Hi,

We have a huge an.tmac copy in the Linux man-pages scripts, for
generating the PDF book.

	$ wc -l scripts/LinuxManBook/an.tmac=20
	1611 scripts/LinuxManBook/an.tmac

However, it's mostly identical to groff-1.23.0's an.tmac.

	$ diff -u1 -w scripts/LinuxManBook/an.tmac /usr/share/groff/1.23.0/tmac/an=
=2Etmac
	--- scripts/LinuxManBook/an.tmac	2023-12-01 01:27:03.344759060 +0100
	+++ /usr/share/groff/1.23.0/tmac/an.tmac	2024-03-12 07:07:16.000000000 +01=
00
	@@ -205,21 +205,5 @@
	 .
	-.de an*cln
	-.  ds \\$1
	-.  als an*cln:res \\$1
	-.  shift
	-.  ds an*cln:res \\$*\"
	-.  ds an*cln:char \\*[an*cln:res]
	-.  stringdown an*cln:res
	-.  substring an*cln:char 0 0
	-.  if '\\*[an*cln:char]'\%' .substring an*cln:res 1
	-.  rm an*cln:char
	-..
	-.
	 .\" Write a bookmark/anchor/link target $2 at hierarchical depth $1.
	 .de an*bookmark
	-.  if \\n[an*is-output-pdf] \{\
	-.    if (\\n[.$]>2) .an*cln an*page-ref-nm \\$3\"
	-.    ie (\\$1=3D1) .pdfbookmark -T "\\*[an*page-ref-nm]" \\$1 \\$2
	-.    el .pdfbookmark \\$1 \\$2
	-.  \}
	+.  if \\n[an*is-output-pdf] .pdfbookmark \\$1 \\$2
	 ..
	@@ -311,7 +295,3 @@
	 .    el \{.ie '\\$2'2' .ds an-extra3 \\*[an*section2]\"
	-.    el \{.ie '\\$2'2type' .ds an-extra3 \\*[an*section2type]\"
	 .    el \{.ie '\\$2'3' .ds an-extra3 \\*[an*section3]\"
	-.    el \{.ie '\\$2'3const' .ds an-extra3 \\*[an*section3const]\"
	-.    el \{.ie '\\$2'3head' .ds an-extra3 \\*[an*section3head]\"
	-.    el \{.ie '\\$2'3type' .ds an-extra3 \\*[an*section3type]\"
	 .    el \{.ie '\\$2'4' .ds an-extra3 \\*[an*section4]\"
	@@ -323,3 +303,3 @@
	 .    el                .ds an-extra3 \" empty
	-.    \}\}\}\}\}\}\}\}\}\}\}\}
	+.    \}\}\}\}\}\}\}\}
	 .  \}
	@@ -442,3 +422,3 @@
	 .  if !\\n[an*was-TH-bookmark-emitted] \{\
	-.\" .    an*bookmark 2 \E*[an*page-ref-string]
	+.    an*bookmark 1 \E*[an*page-ref-string]
	 .    nr an*was-TH-bookmark-emitted 1
	@@ -480,4 +460,2 @@
	 .  ds an-pageref \\*[an*topic-abbv](\\*[an*section])\"
	-.  an*cln an*page-ref-bm-nm \\*[an*topic]_\\*[an*section]\"
	-.  stringdown an*page-ref-bm-nm
	 .  nr an-header-width \\w'\\*[an-pageref]\\*[an-extra3]\\*[an-pageref]'
	@@ -719,4 +697,4 @@
	 .    if \\n[CS] .stringup an-section-heading
	-.    an*bookmark 3 "\\*[an-section-heading]"
	-\&\\*[an-section-heading]
	+.    an*bookmark 2 \E*[an-section-heading]
	+.    nop \&\\*[an-section-heading]
	 .  \}
	@@ -745,3 +723,3 @@
	 .    ds an*subsection-heading \\$*\"
	-.    an*bookmark 4 "\\*[an*subsection-heading]"
	+.    an*bookmark 3 \E*[an*subsection-heading]
	 .    nop \&\\$*
	@@ -1193,18 +1171,4 @@
	 .de1 MR
	-.  if ((\\n[.$] < 2) : (\\n[.$] > 4)) \
	-.    an-style-warn .\\$0 expects 2 to 4 arguments, got \\n[.$]
	-.  ie \\n[an*is-output-pdf] \{\
	-.    nh
	-.    ds an*title \\\\$4
	-.    if '\\\\*[an*title]'' .ds an*title \\\\$1
	-.    ie \\n(.$=3D1 \
	-.      I \\$1
	-.    el \{\
	-.      an*cln an*page-ref-nm \\*[an*title]_\\$2
	-.      ie d pdf:look(\\*[an*page-ref-nm]) .pdfhref L -D \\*[an*page-ref-n=
m] -A "\\$3" -- \fI\\$1\fP(\\$2)
	-.      el .IR \\$1 (\\$2)\\$3
	-.    \}
	-.    hy \\n(mJ
	-.  \}
	-.  el \{\
	+.  if ((\\n[.$] < 2) : (\\n[.$] > 3)) \
	+.    an-style-warn .\\$0 expects 2 or 3 arguments, got \\n[.$]
	 .    ds an*url man:\\$1(\\$2)\" used everywhere but macOS
	@@ -1231,3 +1195,2 @@
	 .    nop \&\\$3
	-.  \}
	 .  hy \\n[an*hyphenation-mode]
	@@ -1333,3 +1296,3 @@
	 .
	-.ds an*body-family \n[.fam] \" Times
	+.ds an*body-family T \" Times
	 .ds an*example-family C \" Courier

I was wondering if we need to keep it, or if we could remove it, or at
least trim it to just a few lines.  Maybe some things can be upstreamed,
or maybe they are already upstream.

Thanks,
Alex


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--si6SFFRjzf6Bg1aJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX9u+QACgkQnowa+77/
2zL/0g//cbK/pBGX3eIGGo1k5Subbl6PZxrV2zcAWiTMW5OQuOTwSxfSa1xeqPuB
MX4/U2v+dppDdH7AmokpaACB7+QBPlSDMhZ1mnk9/Zgt8/1LxSZfInk1PEKvSO3c
NO1/DEPS/W31yVZ5waUFc9aTzvYGPLM07qp3cRu1+qB3Kw1pdesr0+BULgiNAxUd
x2KcCSfJ1e98kKCOczL9hggQ+LsM0c2nt65EVazEzp8yDRhv7BnL5u+wnOg6Nf3e
SLcp/kKgoz/0oNAw2AVUbibm3BFmE+FmaLqzPPsYBWL1xsX4tM0N9tiXv/7fk4WZ
bNFc6gHwiAGR3dkLoUUAxdfmOLw3EqIG76JU37hzUIi8o1F4RF31wcA65dt+NbDI
3aSi3mMX7Biyxw52lMZX/drGd3PmVkgsGrksXxfzNa4TZmmQq2R3vlXIKcPKoFmL
Kr3O8Fu6ZOzutmu/PeFaSXpzZ1tFfeL6s9vT9tzrQXD2QZmGPjxmW6Ux2o//9Rew
H0EP3a564BhpSlX9OCqtZYw2e3pr4PMDIrBLBPCRodgwNHDHbPiRF2wnvy3ebFQs
+F8zavu8chABLAcs3PNNpEUHInAazuBapgZ+xgr37wT1/SkeCZE28O7cCvqEfRs+
kn6d1cfdEdvhJqLO2SFOVcBaT3HSXMe7tbOTk52edN6PMEaUeK0=
=U263
-----END PGP SIGNATURE-----

--si6SFFRjzf6Bg1aJ--

