Return-Path: <linux-man+bounces-243-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD780BB8A
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 15:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2CA31C2081F
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 14:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99A7125D7;
	Sun, 10 Dec 2023 14:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=habets.se header.i=@habets.se header.b="eCPX5G6x"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4D6F3
	for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 06:08:51 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54dcfca54e0so4440910a12.1
        for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 06:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=habets.se; s=google; t=1702217329; x=1702822129; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WFYeRsXhvVEq0dOwPpOnXvL90qpJP2qfiZEDZoSO+Xw=;
        b=eCPX5G6xGUH2EqgD7rUo5NL4uYI9Sn9XRaVPXLCuGnOGfNHTosQaOJ+yD71Vt7s2fA
         Jtrkunyco+XiAX0r30omGL0BoUtBHfD07cKm3ABELeFoXpWvzebHLoGVCwk5rEneYu98
         tT7bdNrmuKkiPSfpo29DCCjdx/QjSnslQBhAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702217329; x=1702822129;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WFYeRsXhvVEq0dOwPpOnXvL90qpJP2qfiZEDZoSO+Xw=;
        b=KCf+qVM32mTmUIzztIUWESUBIJ40uN/wCLtbA30g3QmUgXYgxbm38AOtK/HYARM9ZB
         LtZxeNPkJ+vofnop+7iEY+XBn61soVrmGPXRGDYNlsxkBS+JIMWhAYwmD1ehV+jnnL81
         CLu5vjKbVQx4NGW5QdNZT5CdYqp4D/wKd0pJ6sPBvEP9h6tIFj43MTGY+L/bs/PabjnN
         A6AC+RL34i6Mc1qJL2+0HILPRX5mfwpEZU2HQsw1ETkqPPQRC5zBUrIXFAFvsec3vGl/
         w3JVRiWmCctzAXcOR2/3oM51g8p3Xy6v3qQow2pv41yPCdKJFkR5BrIMFZU7k47kH+LX
         dSlA==
X-Gm-Message-State: AOJu0YxJDW/Xx7VpklIquAaa84lhcGfkgWMj3hBHiDOIE+gOmmS7L+1U
	L5osmWmKaLzvnimyuRhq7nmos+et5lBVXCPNsvBHDovi8/zOdJK0iHc=
X-Google-Smtp-Source: AGHT+IFhJAlp+JgewYplG6soeuO1bsHvHi2fA+PRuU1l7Wy0ZO3DtpKbb5XJl48lF/Y6DR5wv8U23QSvI4JpxdkguMM=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:aa7:d957:0:b0:54c:4837:a667 with SMTP id
 l23-20020aa7d957000000b0054c4837a667mr1404439eds.84.1702217329295; Sun, 10
 Dec 2023 06:08:49 -0800 (PST)
Received: from 195210475306 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 10 Dec 2023 06:08:48 -0800
Received: from 195210475306 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 10 Dec 2023 06:05:59 -0800
From: thomas@habets.se
Date: Sun, 10 Dec 2023 06:08:48 -0800
Message-ID: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
Subject: [patch] atoi.3: Document return value on under/overflow as undefined
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

See patch below.

--
typedef struct me_s {
  char name[]      =3D { "Thomas Habets" };
  char email[]     =3D { "thomas@habets.se" };
  char kernel[]    =3D { "Linux" };
  char *pgpKey[]   =3D { "http://www.habets.pp.se/pubkey.txt" };
  char pgp[] =3D { "9907 8698 8A24 F52F 1C2E  87F6 39A4 9EEA 460A 0169" };
  char coolcmd[]   =3D { "echo '. ./_&. ./_'>_;. ./_" };
} me_t;


commit 095cc630082ea389d5f6657ce497e02d3dde0b21
Author: Thomas Habets <thomas@habets.se>
Date:   Sun Dec 10 13:44:47 2023 +0000

    atoi.3: Document return value on under/overflow as undefined

    Before this change, the manpage is clear enough:

    ```
    RETURN VALUE
           The converted value or 0 on error.
    [=E2=80=A6]
    No checks for overflow or underflow are done.
    ```

    This is not really true. atoi() uses strtol() to convert from string
    to long, and the results may under or overflow a long, in which
    case strtol() returns LONG_MIN and LONG_MAX, respectively.

    LONG_MIN cast to int is 0, which lives up to the manpage just fine
    ("0 on error"), assuming underflow should be seen as an error.

    LONG_MAX cast to int is -1.

    POSIX says "The atoi() function shall return the converted value if
    the value can be represented", the current behavior doesn't violate
    POSIX.

    But is surprising. And arguably is incorrectly documented for Linux
    manpages. There is, in fact, a range check, but but against long, not
    int. "Error" is not defined in the manpage. Is over/underflow an
    error?

    It's kinda handled, kinda not, with the effect that over and underflow
    have different return values for atoi(), and for atol() proper range
    checking is in fact being done by the implementation.

    It would be possible to document atol(3) to say that it actually does
    range checking, but that seems like a bigger commitment than this
    clarification.

    More thoughts from me on parsing and handling integers:

    https://blog.habets.se/2022/10/No-way-to-parse-integers-in-C.html
    https://blog.habets.se/2022/11/Integer-handling-is-broken.html

    Previously (incorrectly) filed as a bug here:
    https://sourceware.org/bugzilla/show_bug.cgi?id=3D29753

    Signed-off-by: Thomas Habets <thomas@habets.se>

diff --git a/man3/atoi.3 b/man3/atoi.3
index f5fb5d0e1..7c005fc15 100644
--- a/man3/atoi.3
+++ b/man3/atoi.3
@@ -111,7 +111,9 @@ only.
 .I errno
 is not set on error so there is no way to distinguish between 0 as an
 error and as the converted value.
-No checks for overflow or underflow are done.
+The return value in case of under/overflow is undefined, but currently
+atol() and atoll() return LONG_MIN/LONG_MAX and LLONG_MIN/LLONG_MAX,
+respectively.
 Only base-10 input can be converted.
 It is recommended to instead use the
 .BR strtol ()

