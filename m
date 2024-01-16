Return-Path: <linux-man+bounces-372-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A349E82EFD7
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 14:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B67501C20A14
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 13:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2141F1BC5D;
	Tue, 16 Jan 2024 13:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="inpH1fFc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5DD1BDD3
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2046b2cd2d3so7176179fac.0
        for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 05:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705412422; x=1706017222; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4GJsdJClG/5MDqWr0LEdREQu+YVGZ7vBvW/sFGq7ANM=;
        b=inpH1fFcGtvX0t4B75egFpC7Ev6PV2RS46UxFb+3E3pd89E8HT9VG8DitQfrDvzqMc
         Hz7XreTfz/YCOuRSsRiWU0xTTQE5Bcz/17C2cIPQPwXmZKFg76Ud+1+avhBdVzHxFKDa
         UJ7QuOI+RvrV4zCcZ0yUXbAM8iFdKXduBMCkM8sv9eXLn12ZLhT5elTxdFrIOoLHU7i6
         r0p4f/GE3d6aDGlrznTOgdZ5PkcRskr5xHFFy93+dX+Z4ZzelhrD69TE/sG8mTwTDIul
         yb+rzGG72AZ1YlVBaktMI08RFjO2b7KHKF6URxCOQsL8321CKrU+dtf0qZrIxJo9SJKz
         cWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705412422; x=1706017222;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4GJsdJClG/5MDqWr0LEdREQu+YVGZ7vBvW/sFGq7ANM=;
        b=KRtoLE7vYtD5e2InwtmAi7Y6XzIH04NQySdwHexf0XhbPWbR8G6OxLTs3bOJM2zgIb
         ckZLTvApnKOtQM4TwNaR/yqQ1eCXF48y+YODhvHNtpPIRiV7jYiXlGXFz3UOQQMObFOX
         dHa4pldVuxSnitWeI8X3XWTArgR+fUXcMBTJBiniSqwDyYhSJplHrE5NG7uymJJX4lnN
         rqvA3gy5Nug44C2a0J4Fy+bm7YtP4YuIoqo9nGA9KaSyq2aNbifZAC4hipnRadCq7Mdi
         9TzRK6JCWaRyLL5v/2/Z3R/g7C8+nx0KHi42dszAv7CAbQ658fqm7MbTpML+MID4DPg1
         ATGA==
X-Gm-Message-State: AOJu0YwA/ElOsZaqt/eQ6L/uoJ6vZ5AbG2HNDVF6hKABKsq+4lK2wPxG
	g3qSRQSmbjOlAVsOZlKr3WqjprzT+nk=
X-Google-Smtp-Source: AGHT+IEXyr8NGf2T4t+F8H3STGwcKHPcb0TmOLfqVg8H9q1F2pzAfmK2gv1GHx/IgNzznx0fQIytHg==
X-Received: by 2002:a05:6871:339c:b0:204:5ddc:e0cc with SMTP id ng28-20020a056871339c00b002045ddce0ccmr12047447oac.114.1705412422627;
        Tue, 16 Jan 2024 05:40:22 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id sk16-20020a056871801000b002064e3ae6e7sm3046459oab.0.2024.01.16.05.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 05:40:22 -0800 (PST)
Date: Tue, 16 Jan 2024 07:40:20 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 4/4] man2/syscalls.2: ffix
Message-ID: <20240116134020.wvyiel53ydi4gey6@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4ltul6q6azbxwuot"
Content-Disposition: inline


--4ltul6q6azbxwuot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Refactor table format specification: use column modifiers to set heading
rows in bold instead of populating every entry in them with font
selection escape sequences.  Use a single '_' to indicate a horizontal
rule spanning the table.  Put vertical space before the table
(making it resemble a typographical "display") rather than after the
after the column heading.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/syscalls.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 2014a8ea9..c75855393 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -133,16 +133,16 @@ .SS System call list
 .P
 The list of system calls that are available as at Linux 5.14
 (or in a few cases only on older kernels) is as follows:
+.P
 .\"
 .\" Looking at scripts/checksyscalls.sh in the kernel source is
 .\" instructive about x86 specifics.
 .\"
 .TS
-l2 le l
----
-l l l.
-\fBSystem call\fP	\fBKernel\fP	\fBNotes\fP
-
+Lb Lb Lb
+L2 L  L.
+System call	Kernel	Notes
+_
 \fB_llseek\fP(2)	1.2
 \fB_newselect\fP(2)	2.0
 \fB_sysctl\fP(2)	2.0	Removed in 5.5
--=20
2.30.2

--4ltul6q6azbxwuot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWmh0QACgkQ0Z6cfXEm
bc5BhhAAqfnSgQFXr+RdQSNxWxnMHWD3pEGLawMWaUVOHukLWwTbf8FcDjD/fk4n
AbjNk6mSF31tHbk8+I6C3q+9YAy4d1zbnucOhtcmlpLGuBuN1RJFbKszw+yn2Vkl
yHj4r7T4BTyVWwNFBCZT8Y0XOC5bgcGf2M1KIFeLDL/xAMfXi89WA9p2pkTSfwX+
G/5dPtyQi32Y0VI4fjzW6BekoPf9or4dvAFPfvR44s8XrRjcauAv7xgd2OmFRHol
zLmxlDVXfXbagcAU8pbYMBa/ac7gv+5boca3fHDngKFymBTGGzVu7LZc8+r5Pu0O
YYJ6hLuNqyZi4oUpR24Og+uLNg9FonS1vE2VZ7RqajZKmM0vG1fPSHrRb6rreIP5
FPb4nSLj8lDq+zOu2URxvqaQ5tvnKOFwFsAPuNxVhgSc8QrZwwLhDarc0R0ufNDS
mK+uVbPO1WX3DM6jdPd/hq/r+dPqNEwrBNWsgSq4Bhn1bnm13uswmp/pxUjhSY5v
rf7fqPfYiaFEGDFGzehIvrnLuuyuIHviWZRpBIZxn2qaS8b+SeZ9m4z8zAN3C28U
K0llJ9Uq3ysCOefW5zzxKoRrHkv/OS0NMGOqE72P7zEzsOC78wSVopw6c/pYi6bo
Zef2AKbDVrhZ8nzFzurbZMcldt1Q6uWacuT9ZEdLk1fzqhcwLm4=
=Sg5s
-----END PGP SIGNATURE-----

--4ltul6q6azbxwuot--

