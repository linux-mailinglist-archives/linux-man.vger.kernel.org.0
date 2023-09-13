Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E37C79E5C1
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 13:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234271AbjIMLHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 07:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231235AbjIMLHI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 07:07:08 -0400
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A511726
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 04:07:04 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-58c9d29588aso79774647b3.0
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 04:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694603223; x=1695208023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k7fvlrmdViTV46VJPh9jgsfzRX4M74gWhsevUzZc1eE=;
        b=HMG9TH1PJ3xfl3ZYI9gGF4vCK9suJXd99RifCMVyyoASrimZ2HHkGcM9VkGIfHkQSf
         c5hYf/olE1yReHrsQObPvHNE3UpS1HECF+EsEXDa3VIsuOnD318dd4Y/BTUz/lwdOoe0
         q2uPTbFpOLIGc4/hKdD4DjGr4oZ7o7n+itvptMvdJDt/ygjQbhU/6EnbjaaMEEHhOQW7
         Xgwcz5rhWyXr1f+/uyARNE7fBvENQ+WPGWoqdLzf22ntsznm8eYqeOo5Z/qCrBGAoCMz
         y+tCXXR3nfsWwX56kgVFbTqQ2SL1SMAjMEv9arUq4eeO0UMvFKiGqbo3IXWK6IZrFhAP
         ilvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694603223; x=1695208023;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7fvlrmdViTV46VJPh9jgsfzRX4M74gWhsevUzZc1eE=;
        b=boIjAB4DsdCmdYaTy07c7VMy4w7rdYTz22PzDoKmg1auXivKmwk0ZoZu5hUMsJM/oh
         unuapst1bejqCHk/HMK3LjpioGtZyMNI5LIiPu8a9CI811LBI/zoo1uGpfTLmPLwqeYy
         6fsgOCU/8216z29XfDAa13fHJ9VXV8xpgyWBFhwWpcLX8i2Q941J81o/kc/vS6v1KY0u
         i0RWBLnoQ9FwYtHqMAupFZ6sh16XcvS8TtDWEC240GgVAXkd/t2oAzRgiVdrMfsqyqzU
         6Zt9R15CKvlOsZcMZXRy9LhZEFK4QLqO8+4LgCMsYjy9YoPax0ESwasOeP9ZZY9rFZWS
         cUHg==
X-Gm-Message-State: AOJu0Yw6S8CCanfT4R6nXsxL6jzCkFJiF6SOUi1f8t/NQut0fQ0mEAmM
        x63TtEXHunEJ+ptGpsgz/MLVZxcYZfM=
X-Google-Smtp-Source: AGHT+IGhlJY98XZKrkaWnC176vga4Qt69FGLr7iAqAZvMN1I6a1WvbYkn1RMVb33+dNnUbJisAGuj9TDmZw=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:7382:36b5:9afb:8360])
 (user=gnoack job=sendgmr) by 2002:a25:d113:0:b0:d7e:79c3:cd0b with SMTP id
 i19-20020a25d113000000b00d7e79c3cd0bmr45589ybg.3.1694603223464; Wed, 13 Sep
 2023 04:07:03 -0700 (PDT)
Date:   Wed, 13 Sep 2023 13:06:31 +0200
Message-Id: <20230913110631.2680550-2-gnoack@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.283.g2d96d420d3-goog
Subject: [PATCH] ioctl_tty.2: Document CAP_SYS_ADMIN requirement for TIOCSTI
From:   "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>,
        Samuel Thibault <samuel.thibault@ens-lyon.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man2/ioctl_tty.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 85577f80f..ebad97bcf 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -334,6 +334,15 @@ Argument:
 .BI "const char\~*" argp
 .IP
 Insert the given byte in the input queue.
+.IP
+Since Linux 6.2,
+.\" commit 690c8b804ad2eafbd35da5d3c95ad325ca7d5061
+.\" commit 83efeeeb3d04b22aaed1df99bc70a48fe9d22c4d
+this operation may require the
+.B CAP_SYS_ADMIN
+capability (if the
+.I dev.tty.legacy_tiocsti
+sysctl variable is set to false).
 .SS Redirecting console output
 .TP
 .B TIOCCONS
--=20
2.42.0.283.g2d96d420d3-goog

