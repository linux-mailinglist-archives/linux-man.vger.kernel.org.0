Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9883626535
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 00:08:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233927AbiKKXIt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Nov 2022 18:08:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234140AbiKKXIe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Nov 2022 18:08:34 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2035DE92
        for <linux-man@vger.kernel.org>; Fri, 11 Nov 2022 15:08:27 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id j15so8204827wrq.3
        for <linux-man@vger.kernel.org>; Fri, 11 Nov 2022 15:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sXGO+9RSG9I+KyMHGvb/rslvIziqm5D4YZsBXfWDP1Y=;
        b=Un2l/6qfxy3+uYaRCc8nMdIki81Rj4Nvl5uSu2JDEOAXSY2wwI91DBgOZCSfI/ccuE
         ww6kmXbrMfd5AS+EUo2Ob3DwWXuzg7jCEXk1uEKV2BUTQg62L5Tiz47A9xTzecjiSG5Q
         9MMgG2SrcvC8CXkhlyYo2q79DVqxQU7NVRUxS6niIJ5Vv3hB4g/opv99g6ZVbjXVCQlX
         QNSIqUv32/THPUbREfwEblWH+XutdvEtg2wkBn0Wa17veVs+p1MRguLqgqGHteEMnjFE
         4wNwXFRoWxt1poN4fPZHuhZfUKHLlCBj8KnD1i9T/f9ucc9GaSzv8skDctclbua7izph
         T0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sXGO+9RSG9I+KyMHGvb/rslvIziqm5D4YZsBXfWDP1Y=;
        b=tSCwBAg1MepAaGBgVTDrk0nozscyRZ2izpOt1+smeW75zrD7zCwtKl78uqAIVhqHF7
         RQlsCtzdxWrNP1lhl8eLjG9Ht9N3TzTRkPjY5kiGBodusbr0MhATfBEYB74l/p8hjqa4
         2ZdGUj9ENyaUYbrrSyH1iPWBhaudE6tuE/huukkYoOIXdRHZDTPIzfjdje8VqwUHym/A
         /3arefoWlLbAi+iM9kNHdzIWuk7V0wMVhSj+AmSlK95r3PWYHnK2rtcL9R3fB71ystyr
         gO5FMAbTOfuJo0Nfm/o23P0ZviEuexbCVpADgtRYIYzOlRK539XxfiHL+NTXS5F4kHjP
         CQzw==
X-Gm-Message-State: ANoB5pnA4RYstOX3ODVkuLODdUd79FATWK+ztvG39DVnMV2hIJazFeJw
        ylgmT07hKqpMKQASn9psYakeQLqWZmI=
X-Google-Smtp-Source: AA0mqf7Ziw2MAVHO8SGRszYiQt8C7+Jni1zV5uPxh7/h/RvY9TZ+Yihvvfnr9XXWMOwu87EjkgECJw==
X-Received: by 2002:a5d:6250:0:b0:236:55eb:a25a with SMTP id m16-20020a5d6250000000b0023655eba25amr2440938wrv.55.1668208106211;
        Fri, 11 Nov 2022 15:08:26 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g9-20020a05600c310900b003a2f2bb72d5sm12858790wmo.45.2022.11.11.15.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 15:08:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH v6] _Generic.3: EXAMPLES: Add sockaddr_cast() macro
Date:   Sat, 12 Nov 2022 00:06:44 +0100
Message-Id: <20221111230643.10764-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <c583b742-9582-ceaa-aaf7-097cecb78a2e@gmail.com>
References: <c583b742-9582-ceaa-aaf7-097cecb78a2e@gmail.com>
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

However, qual_cast() is less useful in quality code, since it breaks const
correctness.  It's only useful to interface dubious APIs.

Note that typeof_unqual() is yet unsupported by GCC and Clang, and will
be added to C23.  Similar behavior can be achieved by combining GNU
builtins.

Cc: Andrew Clayton <andrew@digital-domain.net>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/_Generic.3 | 113 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 1 deletion(-)

diff --git a/man3/_Generic.3 b/man3/_Generic.3
index ddee5f6c4..740b7b358 100644
--- a/man3/_Generic.3
+++ b/man3/_Generic.3
@@ -27,12 +27,123 @@ .SH DESCRIPTION
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
+    struct sockaddr_storage *:                         \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr *:                (t) (p),     \e
+        struct sockaddr_in *:             (t) (p),     \e
+        struct sockaddr_in6 *:            (t) (p),     \e
+        struct sockaddr_un *:             (t) (p),     \e
+        default:                              (p)),    \e
+    struct sockaddr_storage **:                        \e
+        _Generic((typeof_unqual(t)) NULL,              \e
+        struct sockaddr **:               (t) (p),     \e
+        struct sockaddr_in **:            (t) (p),     \e
+        struct sockaddr_in6 **:           (t) (p),     \e
+        struct sockaddr_un **:            (t) (p),     \e
+        default:                              (p)),    \e
+    const struct sockaddr_storage *:                   \e
+        _Generic((t) NULL,                             \e
+        const struct sockaddr *:          (t) (p),     \e
+        const struct sockaddr_in *:       (t) (p),     \e
+        const struct sockaddr_in6 *:      (t) (p),     \e
+        const struct sockaddr_un *:       (t) (p),     \e
+        default:                              (p)),    \e
+                                                       \e
+    default:                                           \e
+        (p)                                            \e
+    )
+
+socklen_t                slen;
+struct sockaddr_storage  ss;
+
+slen = sizeof(ss);
+getsockname(sfd, sockaddr_cast(struct sockaddr *, &ss), &slen);
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

