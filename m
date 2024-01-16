Return-Path: <linux-man+bounces-376-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B09AC82F1A2
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 16:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 469B7285222
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 15:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB651C296;
	Tue, 16 Jan 2024 15:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eebuQDbb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256F11C287
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 15:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6dde173384aso5094637a34.1
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 07:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705419238; x=1706024038; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qEMiobE2LFsYjJRsx2A690BcSwrA+BbPTPJtHgP1hfQ=;
        b=eebuQDbbxeDx//bUi+wrE27bPFr2CaGAstDeVWZfsy4eGDUb6cW3IRZ4S0FaTl6A6Q
         WOghvdIr3A0QkZ381W1PKGE1W5kZnmVOponxPHl5gQmjPNRxjnY1sL84VnhGYuL8G2Wb
         GUBowFgI041URJ2laPDI9U9NCRMfL0y9GCg7otw5ys4/EUHbl6TQt06hswUtdeXJvMxv
         uJ0WfpmgSDAvtKHDbtUi5SMXU2obUVlQCy5kejNQmzB0UMRHtWWIFgB5nMXmUFicZmnH
         xSUYB5J/Z7dAqRWBrvOso3klTWURA9oNwQdHUAMpN6guzaZV64y75/BSWJgAoQ+ifjUu
         RNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705419238; x=1706024038;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qEMiobE2LFsYjJRsx2A690BcSwrA+BbPTPJtHgP1hfQ=;
        b=bS6IYG76YQukwu1K71WzvDDvi0yVsZurnKIiWyLklyiJyrTYWU0BX59xyzdT6aXnUl
         im4YflBH4j4WfrdvCVGJ0oMg4oVmiRcn5RD7uZl9SpK1w0sMFzX83RMLgAsBxe8dDCrF
         fDGKC9+Z+jwQsjv4ew9o061Xzkocy+WQ7hSA/H6NcdNRf43aIAg9C2L63ofEW7lyTf+r
         2G2wvBqrG5SFr+uOxwzRzHoMjQbHV6vk15sXk4pnHZ7k9NH3tTK00qeRYhKUlhxUmpw6
         ViLcgAcm7PjE/6w77PM1sYmKqggSPia/xx5dK5BTnMkpEo4aqGbEvu9IcpJR/nJHM69K
         +jkw==
X-Gm-Message-State: AOJu0YxwmJ14cFG7bzO52xII/yJ3/U0F4JUyo2oOWSLzyory2IRPezMb
	ax1WwpuZHOFVzDIdq6yNrdY=
X-Google-Smtp-Source: AGHT+IGgMatQ9q0JJpjcqG+0sIWJ9hSRtT7sFRl74qNnNN8cDAjPX3gp13v22SB4nC86jueFKCKhEg==
X-Received: by 2002:a05:6830:cf:b0:6db:d8a9:4205 with SMTP id x15-20020a05683000cf00b006dbd8a94205mr8274329oto.32.1705419238087;
        Tue, 16 Jan 2024 07:33:58 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j10-20020a056830014a00b006dbfdb1c9b2sm1944545otp.43.2024.01.16.07.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 07:33:57 -0800 (PST)
Date: Tue, 16 Jan 2024 09:33:55 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] man2/open.2: ffix
Message-ID: <20240116153355.g5rspmbm3dqty5f4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4u2vh5yvbme4l2wf"
Content-Disposition: inline


--4u2vh5yvbme4l2wf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Migrate man page cross reference in non-filled context to font
alternation macro.  This is to prepare it for `MR` migration.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
v2: Fix thinko omitting "(2)".

 man2/open.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index f37ddbed0..8c791fa47 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -46,7 +46,9 @@ .SH SYNOPSIS
 .BI "int openat(int " dirfd ", const char *" pathname ", int " flags ", ..=
=2E"
 .BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
 .P
-/* Documented separately, in \fBopenat2\fP(2): */
+/* Documented separately, in \c
+.BR openat2 (2):\c
+\& */
 .BI "int openat2(int " dirfd ", const char *" pathname ,
 .BI "           const struct open_how *" how ", size_t " size );
 .fi
--=20
2.30.2

--4u2vh5yvbme4l2wf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmodsACgkQ0Z6cfXEm
bc6nKQ//ZdwvTv/5BhZ0yDwi0t4XR9XiGjUSFPPnHleJtkJRNNrWY/cG/es+TD69
tGgJ99g/TFUcaJITJ8Jt18iCxwRKsmxSh0sN0oP9Im6qgEr3l72CVEc5D0iAMWAR
bWdWheqKx0jm0ikZqPMNsrNCr7IwQOPfOR290Gfon1dW3KfSZ1XctFHySNPzdugs
8+NH0hGiUxmhQsgSWxj6elo0MMbVyptlvmm56KfFCeYRkXjdW5q2pH4nxrPQgvkF
AHoH+dgsTq5d1F0mFA6E/nZOqRE1jmlzD/ORumaCeAwits1HiZBtQ/HF0ocSMW6k
RjKaBYls3lqfnEu7nOSA7iRo09ySQ5sDNdWLx4My+tws+SirPKZ9zygp8XSICcNe
dUonck+ODKZKZzBmuVIkdZ62Eh4CsLOPxRmuAxHuqcXbWo7oY+MEQuxqcShPX/fC
73XsWle/iSI1FjWlesXo7GszudBuCfYi3iJN4Ks4H8Bss7F7x5DXvurCx+sFZHDt
BX3Lsw8mpSV8cMw4EKW7ZvsdI8AeaCeTTvz4lvCfqRQk8vUQ/V7DteCxfmgBliBJ
9BQMInZbwd48JZlCFAbNdvNOeigroQivnUf6stdKkpghlXUUl0NIVwjjU97eTfTM
n2V0wGZkvMGAECnogEW9vYHfXMddwQOvMtw+Mdha5urik3CLcyI=
=X5h0
-----END PGP SIGNATURE-----

--4u2vh5yvbme4l2wf--

