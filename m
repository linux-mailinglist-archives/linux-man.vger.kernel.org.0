Return-Path: <linux-man+bounces-369-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C07E82EFD5
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 14:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58542B23776
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 13:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCDD41BC5A;
	Tue, 16 Jan 2024 13:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X3Wm8ch/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562281BF45
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 13:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-204fdd685fdso8470501fac.2
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 05:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705412383; x=1706017183; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=91LY2QGdxoSZVtoRTLsxWPsmZ769GP/X4lLT3JccQP4=;
        b=X3Wm8ch/Sbs+hQ/kDTfqvKPTYcD4uEIFXgsWkHXet9zcB0qEI0qlg+N+ynvAO2wFaP
         DZ/PJMgjgrkfs/uGHjb/1txmURzkua0RzThG/RoJNq5I5vZAZMlKg1/yHSrj4icnRl2M
         uHEaM5nsd72ZptV6C3Q8CAzd6sBZ/3qwktYZ6UX/yTJmuU2k7f4uWB/HdV1ZilfXoGfc
         yP17I27he2tP5+HL8qxKvVZKPGDmzCzC/zvh7zBuvC1pd3v2vJ7/kXtQs1e2DWLNWftR
         dS+rgNGxANgc54NsJQJhYYLw1hemMA0fJmjBx3elMT0TIOPRHFE9DNK1OsBtuxG7NLJc
         O29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705412383; x=1706017183;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=91LY2QGdxoSZVtoRTLsxWPsmZ769GP/X4lLT3JccQP4=;
        b=HxKzDxeEAcdU6GJ/z2vvfcdK0dv7XNYI3xCuZCP6X3DAjUzxJnSGkdl5qgRrB0vB0H
         IJZFImoAKFVGLZglII1XgOeWLwcWQPY6MPqLwtONO1KD9/yq1y73E4DZcyvQ6w7k8cZr
         TLnl1wktdu02fGf3kmjFIkjvWeCSZsBmrIQGO1ifpBCDrX11Evmv6Kj6zVlElG08Fs2U
         cubhKafENjvpKtHXXg/uRh1FKd1VTibu6JyktgzyzGw5+DBXh1O7t2PHkBG7ozkWgOxS
         6pOdhReE02TyAPK1x5iduospv2nFQGnKw0hMPU1yM6evkPbr+4iEejyw0rDjipT8frlP
         C5TA==
X-Gm-Message-State: AOJu0Yyvip65ABgdJtk/VZPmMbcH/3rEnarmH7AZK3HxTJUC9fIijzWQ
	EuxZVq/kggdTQwMgF3tHDRjLnCv7ORY=
X-Google-Smtp-Source: AGHT+IG/OGjq+gmOgYswxLVEMN/ulm/j3gVvTEVceAuSVtJIgA0Papma2krjqV4YUknOZ2ZWGDICcw==
X-Received: by 2002:a05:6871:5b0f:b0:204:3b53:ddcb with SMTP id op15-20020a0568715b0f00b002043b53ddcbmr12035607oac.107.1705412383412;
        Tue, 16 Jan 2024 05:39:43 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id qr1-20020a056870ef8100b0020650e8e782sm3023951oab.57.2024.01.16.05.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 05:39:42 -0800 (PST)
Date: Tue, 16 Jan 2024 07:39:40 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/4] fts.3, div_t.3type: ffix
Message-ID: <20240116133940.jsgccc7ifzvlu2ol@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7zopzmzxbkpzbqyi"
Content-Disposition: inline


--7zopzmzxbkpzbqyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Break lines containing a parametric prefix to a man page name into two
lines, using distinct font alternation macros and the `\c` escape
sequence to "connect" the output.  This prepares for adoption of the
`MR` man(7) macro in groff 1.23.0.

The style seen here assumes that the typeface used for man page names is
bold, which is ahistorical and which the `MR` feature makes
configurable.  It might be better to recast this shorthand into English.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man3/fts.3           | 12 ++++++++----
 man3type/div_t.3type |  3 ++-
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/man3/fts.3 b/man3/fts.3
index ae2fdfcbc..d2c520450 100644
--- a/man3/fts.3
+++ b/man3/fts.3
@@ -187,7 +187,8 @@ .SH DESCRIPTION
 .TP
 .B FTS_NS
 A file for which no
-.RB [ l ] stat (2)
+.RB [ l ]\c
+.BR stat (2)
 information was available.
 The contents of the
 .I fts_statp
@@ -198,7 +199,8 @@ .SH DESCRIPTION
 .TP
 .B FTS_NSOK
 A file for which no
-.RB [ l ] stat (2)
+.RB [ l ]\c
+.BR stat (2)
 information was requested.
 The contents of the
 .I fts_statp
@@ -329,7 +331,8 @@ .SH DESCRIPTION
 .TP
 .I fts_statp
 A pointer to
-.RB [ l ] stat (2)
+.RB [ l ]\c
+.BR stat (2)
 information for the file.
 .\" .El
 .P
@@ -754,7 +757,8 @@ .SH ERRORS
 .BR opendir (3),
 .BR readdir (3),
 and
-.RB [ l ] stat (2).
+.RB [ l ]\c
+.BR stat (2).
 .P
 In addition,
 .BR fts_children (),
diff --git a/man3type/div_t.3type b/man3type/div_t.3type
index 857dae17e..7abbb7616 100644
--- a/man3type/div_t.3type
+++ b/man3type/div_t.3type
@@ -40,7 +40,8 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 .RI [[ l ] l ] div_t
 is the type of the value returned by the
-.RB [[ l ] l ] div (3)
+.RB [[ l ] l ]\c
+.BR div (3)
 function.
 .P
 .I imaxdiv_t
--=20
2.30.2


--7zopzmzxbkpzbqyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmhxQACgkQ0Z6cfXEm
bc7sIQ//cN2zUz5JrNBZ2+NIWaGi0AGMm3ulUisIabrebUm/FMK8eyBUNC91KcbA
AWp1PRZgoqwbTbQYOIqLEI8pkH5bf2Y7JqCHvzW/7oiljKE6EzfSBlM7Z2iBPnuf
lBnKU8pFSYr68cobFI5IdCqBqF23QUMk38osU27oBMg9Vwd/pwQs+vn8Oe3BS96C
dE0rVp5Z3xzfCWBJepCKGiFS/j9BP9dDf//n4bwTK62qE/obaaWGI4JM6cMnANFH
TvPM1IbCe+XXEd0aGN/Vtk+lrylTQB07j6MNHe4ucfbE7dVI2IF+JaEOnYaTeKOT
QjEy9zinjqijs3ghkye+zVdSKNcAj5HO6Ylyfi54smzvQf0PJdP7as7tJKdx1MRk
nIRhUW+c57k7dE6eZDdxW4RHhZI5zKu8WlMUoRjcLpWy0SNOO7Kx9Qhg+rsqL+nK
WbUgMNMRQswqqUZ2Jy9AnfnTxKfzVoXMg2FnQ+E0AcUNx5hRFis/bJX8PoOK4o7G
I/4M/HwXNdlqDrMOD0yAL7za1iFm9d6zOCA7Fg2GmUlse8xrHKBaY2n6eQJrgNXZ
V+6/L8MY/fy+cGk7SipCDFf+smcsBBgIm3XRiCeBbsYBjHUE29YcJ+1hAIGmmquq
lfwiyolzr3ep1WysxC7GpRNBcutpyIp9cfSHwhS0/cvpCU2hX00=
=cJo3
-----END PGP SIGNATURE-----

--7zopzmzxbkpzbqyi--

