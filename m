Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 996346269DC
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 15:18:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234820AbiKLOS1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 09:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbiKLOS1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 09:18:27 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CBFDEEC
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 06:18:23 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id o4so9916206wrq.6
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 06:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/HSksioQMVnxQ8gub2vSx3g/vgXIzKQTsbI2zTCtpo=;
        b=Q5TVQTPXEk7+xLtvCjqJ5xfVNAXq6ifE9BYvDLpelh1Qr7WiTtMY4kKAsJPHWNbWyc
         xpJqAWIQSIJgyXlwIB5qVSaOm6lPcXPLU55Paiv+MCyp9LGL5CBSLzrOeHLQ1Nv/Qztt
         HoyyDe4YITDSDxHZbnnOwIapZJULDC1GTmmStMRy5hGsj+Sk3YYgr5mSqJm30baV8bEZ
         U03vrMF5QZjgUHOHByV7KosfCn0JvpfuVvjouH4wyErP9nO+eQej6YR3vXlchy1mn08/
         A0VK8vwuSi5ANDvvqkOfi7FWII2g6zDYcqgWA/fTTn7RtG8Py6B0YiXlWpWnaLbUhCQv
         Tm3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w/HSksioQMVnxQ8gub2vSx3g/vgXIzKQTsbI2zTCtpo=;
        b=fJ8aiE+YnXGmBwJ2AvEQjsGY2bkKTIWJVTpaMDAgNGJbKp9HxLsvM430f435WyHV0Y
         aHTkvQ7isbh446r6xkz7SZcgMmUO8eXsSzeJFdcDltlQwlKU1Q3uaJDht29Ha2EkXz7p
         vJ2pn9BaWj91815VVxdDdgmHkSJh9ROZeMeG/xZF5tvhRivOqfTAIhPZzjgZy9GfbuXT
         kxM/YvI0nQRAXcoa0h2I44CoOCmj7311yc2a730kaXmi+/1/MpxuCeQOkxICkCLuK7zP
         GD6Yy/oTNPvL23dV7LuJex+uWaeBiYOR+J1GOG3XUsq4GWomeL4D8xHZeK8NHfkNSqNx
         sQ8Q==
X-Gm-Message-State: ANoB5pkUI4b+Twb2xoRnWrloWNU099ErSA0bHeeknyeFWXN6ilm169pV
        hl/pHbVsO/6y5cz5wqZ9gl2+APersMI=
X-Google-Smtp-Source: AA0mqf6xAyQBzFOeNQXmku4R3Efhc8lV+ib90ajAhDdGyEzdon7xChcPFeAj5XndD8n+/T55HXXVFw==
X-Received: by 2002:adf:e80a:0:b0:236:593f:2ab3 with SMTP id o10-20020adfe80a000000b00236593f2ab3mr3829326wrm.356.1668262702080;
        Sat, 12 Nov 2022 06:18:22 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id a22-20020a5d4576000000b002365254ea42sm4452847wrc.1.2022.11.12.06.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:18:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH v7] _Generic.3: EXAMPLES: Add sockaddr_cast() macro
Date:   Sat, 12 Nov 2022 15:15:52 +0100
Message-Id: <20221112141551.7702-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221111230643.10764-1-alx@kernel.org>
References: <20221111230643.10764-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This macro is an example of how C++-style casts can be implemented in C.
They are better than C's casts because they only allow certain
conversions, while disallowing most.  This adds considerable type
safety.  They also make code more greppable.

A macro similar to const_cast() can also be implemented in a similar
manner:

 /* This code is in the public domain. */

 #define qual_cast(t, p)                               \
    _Generic(typeof_unqual(&*(p)),                     \
    typeof_unqual(t):                                  \
        _Generic(&*(p),                                \
        const t:          (t) (p),                     \
        volatile t:       (t) (p),                     \
        const volatile t: (t) (p),                     \
        default:              (p))                     \
    default:                                           \
        (p)                                            \
    )

Note that typeof_unqual() is yet unsupported by GCC and Clang, and will
be added to C23.  Similar behavior can be achieved by combining GNU
builtins.

Cc: Andrew Clayton <andrew@digital-domain.net>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

v7:

- Casting from sockaddr_storage is useless.  It violates aliasing rules,
  since something declared that type cannot be accessed (it doesn't have
  useful members) except aliased to u_char.  So, the type is only useful
  as argument to sizeof() and in unions.

- Fix the call to getsockname(2) to use a sockaddr_un instead, to avoid
  violating aliasing rules.

 man3/_Generic.3 | 91 ++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 90 insertions(+), 1 deletion(-)

diff --git a/man3/_Generic.3 b/man3/_Generic.3
index ddee5f6c4..6ff5e24ea 100644
--- a/man3/_Generic.3
+++ b/man3/_Generic.3
@@ -27,12 +27,101 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11 and later.
 .SH EXAMPLES
+The following code demonstrates how to write
+a macro similar to C++'s
+.BR \%static_cast (),
+which will allow casting safely between a limited set of types.
+It is useful for example when calling
+system calls or library functions that use compatible structures,
+like for example
+.BR bind (2)
+with
+.BR \%sockaddr (3type).
+.IP
+.EX
+/* This code is in the public domain. */
+
+#include <netinet/in.h>
+#include <sys/socket.h>
+#include <sys/un.h>
+
+#define sockaddr_cast(t, p)                            \e
+    _Generic(&*(p),                                    \e
+    struct sockaddr *:                                 \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr_in *:             (t) (p),     \e
+        struct sockaddr_in6 *:            (t) (p),     \e
+        struct sockaddr_un *:             (t) (p),     \e
+        default:                              (p)),    \e
+    struct sockaddr **:                                \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr_in **:            (t) (p),     \e
+        struct sockaddr_in6 **:           (t) (p),     \e
+        struct sockaddr_un **:            (t) (p),     \e
+        default:                              (p)),    \e
+    const struct sockaddr *:                           \e
+        _Generic((t) NULL,                             \e
+        const struct sockaddr_in *:       (t) (p),     \e
+        const struct sockaddr_in6 *:      (t) (p),     \e
+        const struct sockaddr_un *:       (t) (p),     \e
+        default:                              (p)),    \e
+                                                       \e
+    struct sockaddr_in *:                              \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr *:                (t) (p),     \e
+        default:                              (p)),    \e
+    struct sockaddr_in **:                             \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr **:               (t) (p),     \e
+        default:                              (p)),    \e
+    const struct sockaddr_in *:                        \e
+        _Generic((t) NULL,                             \e
+        const struct sockaddr *:          (t) (p),     \e
+        default:                              (p)),    \e
+                                                       \e
+    struct sockaddr_in6 *:                             \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr *:                (t) (p),     \e
+        default:                              (p)),    \e
+    struct sockaddr_in6 **:                            \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr **:               (t) (p),     \e
+        default:                              (p)),    \e
+    const struct sockaddr_in6 *:                       \e
+        _Generic((t) NULL,                             \e
+        const struct sockaddr *:          (t) (p),     \e
+        default:                              (p)),    \e
+                                                       \e
+    struct sockaddr_un *:                              \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr *:                (t) (p),     \e
+        default:                              (p)),    \e
+    struct sockaddr_un **:                             \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr **:               (t) (p),     \e
+        default:                              (p)),    \e
+    const struct sockaddr_un *:                        \e
+        _Generic((t) NULL,                             \e
+        const struct sockaddr *:          (t) (p),     \e
+        default:                              (p)),    \e
+                                                       \e
+    default:                                           \e
+        (p)                                            \e
+    )
+
+socklen_t           slen;
+struct sockaddr_un  sun;
+
+slen = sizeof(ss);
+getsockname(sfd, sockaddr_cast(struct sockaddr *, &sun), &slen);
+.EE
+.PP
 The following program demonstrates how to write
 a replacement for the standard
 .BR imaxabs (3)
 function, which being a function can't really provide what it promises:
 seamlessly upgrading to the widest available type.
-.PP
+.IP
 .\" SRC BEGIN (_Generic.c)
 .EX
 #include <stdint.h>
-- 
2.38.1

