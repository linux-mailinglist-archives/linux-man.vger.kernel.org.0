Return-Path: <linux-man+bounces-200-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79D800AD8
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 13:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B6FE281A65
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 12:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091BA24B58;
	Fri,  1 Dec 2023 12:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="itgTjpA0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-x64a.google.com (mail-ej1-x64a.google.com [IPv6:2a00:1450:4864:20::64a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A60B2D4A
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 04:26:59 -0800 (PST)
Received: by mail-ej1-x64a.google.com with SMTP id a640c23a62f3a-a1772440a1aso184277766b.2
        for <linux-man@vger.kernel.org>; Fri, 01 Dec 2023 04:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701433618; x=1702038418; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HViCMN1jxbm7mYaHl3o7GyMF1QrzWgYRFUhpghTMneY=;
        b=itgTjpA0RFL5Cv5TU5boCnGLx7feSqyVf57bZtTeMJegCBIk4pLw5f2IvmtokKj3CH
         iP9m681sef1RwEMUq6N0iu7YI53YFWfR6T+HDn7MorizBGNsAwP60shkkEy8R4etb2CD
         0+jr9xp/EuzLlaoZCeQpY9SWtdSO8eRyys6+u5KDxdetA0ZduPFJrahlHE4bfHXZfJ5x
         7/S1iA1Y5i5Yy9ND561ytoWGPrif5FIYg5zbIovIjVf1g1EepKedtcdBrIuuYZgYxkfp
         qpr8OoWWvw5dTvwRx6rm5oUVprbNfMTBkhfU9mcnykn+gvJSEFshF+DxvGpvR3oolZ7d
         MqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701433618; x=1702038418;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HViCMN1jxbm7mYaHl3o7GyMF1QrzWgYRFUhpghTMneY=;
        b=bloxO1SGsAa3ERRPQvfDxzEE1ZefhtyugC89KFhUbES0vTXpb1jMsppfUhhe4mPYFa
         ye0dHgUUaI2syTnR/qvMzNSAF7Mmw7vc/sZ3OVW+nFlz4SSJGYxb8mmgm7Z2qa8fAv5U
         JzXccgEeXc3eR3fG4HTWJv9i8fHkalT2s5Z0mXtfLJGTJDdVt5qRZGZjJkde0DZtWSMT
         K2E1JD2Pp8Xcjxf8HosZBkCWSc+LKuhXeobM5btzvufxLD79xculjqKDyQYdsIM0CS2z
         vMauaKusQq1lSlaLSlbGVvw7d8AAGSpImzGc4NuRNVsHwzE0d8nLaw9a5fbXPj9FDxsd
         3CuA==
X-Gm-Message-State: AOJu0Yx3JJpAoay8TP1nZd0/jioKgt3BylFA+Sji0dePLzSX78HBRWhA
	kwprsD6ufgV/7OmaXQtEF+DCY+ZN2BU=
X-Google-Smtp-Source: AGHT+IFhAgtAQX/PYLpJ5dstaZOJJyFNRoMSQyAdoqzk+JotUBtpy92yH9xp8qwnzc3JApZA98+pfuP6alM=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:fab0:4182:b9df:bfec])
 (user=gnoack job=sendgmr) by 2002:a17:907:7718:b0:a1a:4b40:bf7c with SMTP id
 kw24-20020a170907771800b00a1a4b40bf7cmr8563ejc.13.1701433617895; Fri, 01 Dec
 2023 04:26:57 -0800 (PST)
Date: Fri,  1 Dec 2023 13:26:45 +0100
Message-Id: <20231201122645.3237941-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
Subject: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions (since
 Linux 6.7)
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>, "=?UTF-8?q?Hanno=20B=C3=B6ck?=" <hanno@hboeck.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Since Linux commit 8d1b43f6a6df7bce ("tty: Restrict access to TIOCLINUX'
copy-and-paste subcommands"), the TIOCL_SETSEL, TIOCL_PASTESEL and
TIOCL_SELLOADLUT subcommands require CAP_SYS_ADMIN.

Cc: Hanno B=C3=B6ck <hanno@hboeck.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man2/ioctl_console.2 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 684b4d013..abc50b786 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -715,12 +715,20 @@ is 0 for character-by-character selection,
 or 2 for line-by-line selection.
 The indicated screen characters are highlighted and saved
 in a kernel buffer.
+.IP
+Since Linux 6.7, using this subcode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .BR TIOCLINUX ", " subcode =3D TIOCL_PASTESEL
 Paste selection.
 The characters in the selection buffer are
 written to
 .IR fd .
+.IP
+Since Linux 6.7, using this subcode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .BR TIOCLINUX ", " subcode =3D TIOCL_UNBLANKSCREEN
 Unblank the screen.
@@ -729,6 +737,10 @@ Unblank the screen.
 Sets contents of a 256-bit look up table defining characters in a "word",
 for word-by-word selection.
 (Since Linux 1.1.32.)
+.IP
+Since Linux 6.7, using this subcode requires the
+.B CAP_SYS_ADMIN
+capability.
 .TP
 .BR TIOCLINUX ", " subcode =3D TIOCL_GETSHIFTSTATE
 .I argp
--=20
2.43.0.rc2.451.g8631bc7472-goog


