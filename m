Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438DC278958
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 15:21:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728652AbgIYNUP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 09:20:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727733AbgIYNUP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 09:20:15 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E0BC0613CE;
        Fri, 25 Sep 2020 06:20:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e17so3033468wme.0;
        Fri, 25 Sep 2020 06:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ctCRRBMXBs6kMpZcuPxnX56lRnYkUGrCUb67xAJsOfY=;
        b=ldwrKLkhQdaRphySlnkUcnORC/28bvFdDoFF1eRdlRzrVNfzr0v881BAm5vMqA6IaJ
         AMLT+JPdCJKkfeIpFxgF8MJj37nYcNijBVxa5gjuIGVcOvICMnUU78s5Z7P7nvKvOHsp
         VR7DoTlpWnWUtLbzdOeIvOlcQgzo4bXZvgmF0ZyxKS+iamy0PnKCYqxr/40agxKNqTyn
         O3Pob3ArUBG7vJnnsP5gWhgd11Dr4O31MpUg370ITJF96KYeOR1zNPI8gzVsIeg0HpCM
         LTcFK2szZBfT9uSGwqWxH3XzvqOrEIDwyjCUBgAIpXymtZohhYbVs5wHtfL16KCZm+IP
         hMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ctCRRBMXBs6kMpZcuPxnX56lRnYkUGrCUb67xAJsOfY=;
        b=bxjwALyCxlfVfIWP4wVqVtsq5DRYMovSkQ4z+TUp6nhJAzRJ7XmYy3WZJYwM/qgBBA
         JoOm+1TSSMTqr0peoBu8FZCdKz8lUTSF+kNv0XvvcI9JJKD4VLJKrp0lpMvvprJlGfra
         WSpkpKn2JiwBv3rNNv+9lW/17+lg2fn1TgL5h2+F0Q3IMWAB6tN8jzeCG8vH4iv8iCX+
         xyUPi43LEOB6Q0HE0ZgY0auL68Tm4qsnkcw+PibtHa2cE8WxZEBpeZPyXrNHpVVUDLUf
         FGA4gy50zbU3aETeELw4DcZn80GDGA2AbdxHcUe+9+dUl0Xcri5o8S4nW00LgMHSo+fJ
         nxHA==
X-Gm-Message-State: AOAM533mLE8NTBdTO9KMm1fxkcqT1P5S8bU9/zSqCmcthSSmWnniPvBl
        y8TZxDpDlcFloLSQg9WcE8Q=
X-Google-Smtp-Source: ABdhPJx7WgtlsBquBISAJGIrFfzINAei+kh2aFn9YKbsA0GYSp5DIoWlYBfSFuxhbbFmeBKDRV1m2g==
X-Received: by 2002:a1c:1d08:: with SMTP id d8mr3285621wmd.78.1601040013526;
        Fri, 25 Sep 2020 06:20:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l4sm3004917wrc.14.2020.09.25.06.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 06:20:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     libc-alpha@sourceware.org
Cc:     libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        gcc@gcc.gnu.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, fweimer@redhat.com, jwakely@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com,
        colomar.6.4.3@gmail.com, rusty@rustcorp.com.au
Subject: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
Date:   Fri, 25 Sep 2020 15:20:01 +0200
Message-Id: <20200925132000.235033-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
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

'snitems()' is equivalent to nitems(),
but it returns a 'ptrdiff_t' instead of a 'size_t'.
It is useful for comparison with signed integer values.

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
 misc/sys/param.h | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/misc/sys/param.h b/misc/sys/param.h
index d7c319b157..88e95c2dba 100644
--- a/misc/sys/param.h
+++ b/misc/sys/param.h
@@ -102,5 +102,65 @@
 #define MIN(a,b) (((a)<(b))?(a):(b))
 #define MAX(a,b) (((a)>(b))?(a):(b))
 
+/* Macros related to the types of variables */
+# define __is_same_type(_A, _B)  __builtin_types_compatible_p(__typeof__(_A), \
+                                                              __typeof__(_B))
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
+template<typename _Tp, std::size_t _Len>
+  constexpr inline std::ptrdiff_t
+  snitems(const _Tp(&)[_Len]) __THROW
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
+#  define snitems(_Arr)         (static_cast<std::ptrdiff_t>(nitems(_Arr)))
+# endif /* __cplusplus < 201103L */
+
+#else /* !defined(__cplusplus) */
+# define __array_len(_Arr)      (sizeof(_Arr) / sizeof((_Arr)[0]))
+# define nitems(_Arr)           (__array_len(_Arr) + __must_be_array(_Arr))
+# define snitems(_Arr)          ((ptrdiff_t)nitems(_Arr))
+#endif /* !defined(__cplusplus) */
+
 
 #endif  /* sys/param.h */
-- 
2.28.0

