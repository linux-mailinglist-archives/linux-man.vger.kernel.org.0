Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0F9F279226
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 22:35:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728847AbgIYUdS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 16:33:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727067AbgIYUXf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 16:23:35 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25556C0613AE;
        Fri, 25 Sep 2020 12:38:14 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v12so185629wmh.3;
        Fri, 25 Sep 2020 12:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jbsgOVHvmUXSEBjLnfyZSNTlMb8phG4kk/fXxKZ+eRg=;
        b=CgaQei8lRddJ8NgvJLf0DNXjKCz/qNN2jDqyE8o0kPqx8+kXKWgG4p5cW4igqBWvH+
         d8V2y0Urtt5A4NqnNJ84knmZAdEnK//UE/VE1IOpzm4AXV69Yvi8h1nBwAtQGmwzgAvo
         jdbDxIgRDppT2IjpP2UL9L3Hg1Ni5O4THmuyVbDZqhzvsDXQhobCSzSQtykYJqKGXEYg
         7H1I02idgebVDnI7tQF3JMEHWrXUH3y0BOJWByEHOehEAfbr9MJsLhMmWvEtVwGmrMi4
         B3P8Sw2mEjDLog0IZN821nreyuN24M/5HorDeFwHwQlG41zTjbP6rOgYes/aBk88eGh9
         9ABg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jbsgOVHvmUXSEBjLnfyZSNTlMb8phG4kk/fXxKZ+eRg=;
        b=IglwbCMqaVCuSymij1ja5ycTuzFQ/011GdYO67NItKpOgwoKiPdRqLyYu6iu7JhQ9l
         9jJ6eZZAZI4LfICyQdi0Rs7H0BTaHhsVDXoUVZIv0HcoCfCBiJuozYzAgr2kd9eXhfQW
         lrXeLXdDy4BBoxs+L8rpwelDWuBeZhF4FMHWo9HYm68b3Mh6yGACVQqPKBvCe5Iw+9iu
         ljWLl1xBdKpRthCNhNGU0V+mmu2+lD2bXPJdXthTKJI8Mq9m5mZNpDOz3n5dZyJKwlVX
         16mOmWon5P2qk1maU3qIlNBei6fPlPK6A6oMZEBONNkudInNymGcro5Ze8LBNPnvlkut
         R1TA==
X-Gm-Message-State: AOAM533a9eAmVTk0IzpG1fJqdlN+64J81TwKt1dW+9cqZmzBzM9YQttO
        Cbm4nihVusjZ3YUfKv3J6d4=
X-Google-Smtp-Source: ABdhPJyqlDntoAWN5Ogrw2rGYEXT5bafB540fMrgyreKkEcl6WZOTJklZWUGNDReomLwbqLRszc1eA==
X-Received: by 2002:a1c:e389:: with SMTP id a131mr117683wmh.181.1601062692684;
        Fri, 25 Sep 2020 12:38:12 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id m18sm50368wmg.32.2020.09.25.12.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 12:38:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     libc-alpha@sourceware.org
Cc:     libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        gcc@gcc.gnu.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, jwakely@redhat.com, fweimer@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au,
        colomar.6.4.3@gmail.com
Subject: [PATCH v3] <sys/param.h>: Add nitems()
Date:   Fri, 25 Sep 2020 21:37:29 +0200
Message-Id: <20200925193728.30351-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <a7f33e89-4815-2210-7627-14757198a666@gmail.com>
References: <a7f33e89-4815-2210-7627-14757198a666@gmail.com>
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

__is_same_type(_A, _B):
Returns non-zero if the two input arguments are of the same type.

__is_array(_Arr):
Returns non-zero if the input argument is of an array type.

__must_be(_Expr, _Msg):
Allows using _Static_assert() everywhere an expression can be used.
It evaluates '(int)0' or breaks the compilation.

__must_be_array(_Arr):
It evaluates to '(int)0' if the argument is of an array type.
Else, it breaks compilation.

__array_len(_Arr):
It implements the basic sizeof division needed to calculate the array length.


P.S.: I'd like to put this patch in the public domain.


Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 misc/sys/param.h | 51 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/misc/sys/param.h b/misc/sys/param.h
index d7c319b157..d88cbacc9c 100644
--- a/misc/sys/param.h
+++ b/misc/sys/param.h
@@ -102,5 +102,56 @@
 #define MIN(a,b) (((a)<(b))?(a):(b))
 #define MAX(a,b) (((a)>(b))?(a):(b))
 
+/* Macros related to the types of variables */
+# define __is_same_type(_A, _B) __builtin_types_compatible_p(__typeof__(_A),  \
+                                                             __typeof__(_B))
+# define __is_array(_Arr)	(!__is_same_type((_Arr), &(_Arr)[0]))
+
+/* Macros for embedding _Static_assert() in expressions */
+# if __STDC_VERSION__ >= 201112L
+#  define __must_be(_Expr, _Msg)  (                                           \
+        0 * (int)sizeof(                                                      \
+          struct {                                                            \
+            _Static_assert((_Expr), _Msg);                                    \
+            char _ISO_C_forbids_a_struct_with_no_members;                     \
+          }                                                                   \
+        )                                                                     \
+)
+# else
+#  define __must_be(_Expr, _Msg)  (                                           \
+        0 * (int)sizeof(                                                      \
+          struct {                                                            \
+            int  : (-!(_Expr));                                               \
+            char _ISO_C_forbids_a_struct_with_no_members;                     \
+          }                                                                   \
+        )                                                                     \
+)
+# endif
+
+# define __must_be_array(_Arr)	__must_be(__is_array(_Arr), "Must be an array!")
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
+
+# else /* __cplusplus < 201103L */
+template<typename _Tp, std::size_t _Len>
+  char
+  (&__nitems_chararr(const _Tp(&)[_Len]))[_Len];
+
+#  define nitems(_Arr)          (sizeof(__nitems_chararr(_Arr)))
+# endif /* __cplusplus < 201103L */
+
+#else /* !defined(__cplusplus) */
+# define __array_len(_Arr)      (sizeof(_Arr) / sizeof((_Arr)[0]))
+# define nitems(_Arr)           (__array_len(_Arr) + __must_be_array(_Arr))
+#endif /* !defined(__cplusplus) */
+
 
 #endif  /* sys/param.h */
-- 
2.28.0

