Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D49A27B50B
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 21:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726551AbgI1TM6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 15:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726442AbgI1TM6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 15:12:58 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88EFEC061755;
        Mon, 28 Sep 2020 12:12:57 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so2527601wrn.10;
        Mon, 28 Sep 2020 12:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vz8QchO9cmYjlrvcRjFTzSFLrDWK4NlG4rgcy0Z2ls0=;
        b=eZOsu7wLnWpgSk3ecwmrfrSrD/FefaVqzQUz8eDGKTOuBAiOxmJIQmNUyRwptMQ2nh
         RrFUxfuzAf/kYMF+Q3lUFUHubksh1KnI3cW/izilWr0u5vcX9jVF7BqMBJmtebAfLe3Q
         6FSpU9kcf70FwEhd4AOkAOk0vwPGmrKkcwK2lNN12mUnNXmfxPGEuLxPPyeTvG87QMRQ
         h9qOj2jtnX8VvqXhdQX0v5N8FA2StGEu8EdQhtDgdbLMXaJZu7DQLR0WPJtkolMp1T/N
         7edVHSN06lYkz54H4eG3KjNi5HhTZtJnCyM9IUXuY0yQ8Se/fYKitRVp57ujcB3/l2GB
         yFTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vz8QchO9cmYjlrvcRjFTzSFLrDWK4NlG4rgcy0Z2ls0=;
        b=QTo7RMO6kK7Vr6y09eMu6N7HA/YYwxsevvY8RtL5YSw90S+03hOO/42fOc7+7SQmdZ
         2BgM+oGsE1qr7Oo8WE99x0hMGumzvLks5BP4VWkK2ZTIM27I+p/LsudBwc7fdI9yZDca
         uNJ5s/fwvWveFkg9N/DuTzXd3qWeyYfxrJlThLZlCN5iT9irYXX2Q1m4Eh32f8zAoDqW
         8W8jf+gdwLMkUdE0dSZKshbaIVUnU6nOqZUdQvztwsYcbuOxu8tbZnbkV4Sc2uFiqx1K
         aHoUK1F1qvqyZKf1RCYLLCwWQqmI1EHceg7YDHgwx58EEEnjoY4LkpdTjmO0r0G+VOtN
         7fnA==
X-Gm-Message-State: AOAM533/889jyj43mhkzS+H42JrpyT0i27LyRB5dPKv8l98WleVwOYHM
        G7vkVjWvnQnQFQSTexyYKeY=
X-Google-Smtp-Source: ABdhPJxiovG5tEEYTxk/MpoF6F52R8oux8Nz02/E+YQwQi67lZw1/Wi5MOd0u/CLQO5ZyrON/8wPTw==
X-Received: by 2002:adf:dd0b:: with SMTP id a11mr3152720wrm.422.1601320376258;
        Mon, 28 Sep 2020 12:12:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u17sm3072159wri.45.2020.09.28.12.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 12:12:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     libc-alpha@sourceware.org
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        gcc@gcc.gnu.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, jwakely@redhat.com, fweimer@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au
Subject: [PATCH v4] <sys/param.h>: Add nitems()
Date:   Mon, 28 Sep 2020 21:12:37 +0200
Message-Id: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'nitems()' calculates the length of an array in number of items.
It is safe: if a pointer is passed to the macro (or function, in C++),
the compilation is broken due to:
 - In >= C11: _Static_assert()
 - In C89, C99: Negative anonymous bitfield
 - In C++: The template requires an array

Some BSDs already provide a macro nitems() in <sys/param.h>,
although it usually doesn't provide safety against pointers.

This patch uses the same name for compatibility reasons,
and to be the least disruptive with existing code.

This patch also adds some other macros, which are required by 'nitems()':

__is_same_type(a, b):
Returns non-zero if the two input arguments are of the same type.

__is_array(arr):
Returns non-zero if the input argument is of an array type.

__must_be(expr, msg):
Allows using _Static_assert() everywhere an expression can be used.
It evaluates '(int)0' or breaks the compilation.

__must_be_array(arr):
It evaluates to '(int)0' if the argument is of an array type.
Else, it breaks compilation.

__nitems(arr):
It implements the basic sizeof division needed to calculate the array length.


P.S.: I'd like to put this patch in the public domain.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

A few changes since v3:

- Macros don't need reserved names in their parameters,
so I simplified those names.

- I fixed some wrong indentation levels.

- Renamed __array_len() to __nitems() for consistency.


 misc/sys/param.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/misc/sys/param.h b/misc/sys/param.h
index d7c319b157..08d4093961 100644
--- a/misc/sys/param.h
+++ b/misc/sys/param.h
@@ -102,5 +102,52 @@
 #define MIN(a,b) (((a)<(b))?(a):(b))
 #define MAX(a,b) (((a)>(b))?(a):(b))
 
+/* Macros related to the types of variables */
+#define __is_same_type(a, b)                                                  \
+	__builtin_types_compatible_p(__typeof__(a), __typeof__(b))
+#define __is_array(arr)	(!__is_same_type((arr), &(arr)[0]))
+
+/* Macros for embedding _Static_assert() in expressions */
+#if __STDC_VERSION__ >= 201112L
+# define __must_be(expr, msg)   (                                             \
+        0 * (int)sizeof(                                                      \
+          struct {                                                            \
+            _Static_assert((expr), msg);                                      \
+            char _ISO_C_forbids_a_struct_with_no_members;                     \
+          }                                                                   \
+        )                                                                     \
+)
+#else
+# define __must_be(expr, msg)   (                                             \
+        0 * (int)sizeof(                                                      \
+          struct {                                                            \
+            int  : (-!(expr));                                                \
+            char _ISO_C_forbids_a_struct_with_no_members;                     \
+          }                                                                   \
+        )                                                                     \
+)
+#endif
+#define __must_be_array(arr)	__must_be(__is_array(arr), "Must be an array!")
+
+/* Macros for array sizes */
+#if defined(__cplusplus)
+# if __cplusplus >= 201103L
+template<typename _Tp, std::size_t _Len>
+  constexpr inline std::size_t
+  nitems(const _Tp(&)[_Len]) __THROW
+  {
+    return _Len;
+  }
+# else /* __cplusplus < 201103L */
+template<typename _Tp, std::size_t _Len>
+  char
+  (&__nitems_chararr(const _Tp(&)[_Len]))[_Len];
+#  define nitems(arr)	(sizeof(__nitems_chararr(arr)))
+# endif /* __cplusplus < 201103L */
+#else /* !defined(__cplusplus) */
+# define __nitems(arr)	(sizeof((arr)) / sizeof((arr)[0]))
+# define nitems(arr)	(__nitems(arr) + __must_be_array(arr))
+#endif /* !defined(__cplusplus) */
+
 
 #endif  /* sys/param.h */
-- 
2.28.0

