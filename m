Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E50EF2744DF
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 17:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbgIVPAc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 11:00:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbgIVPAc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 11:00:32 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E414BC061755;
        Tue, 22 Sep 2020 08:00:31 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id y15so3680714wmi.0;
        Tue, 22 Sep 2020 08:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=usg4wSsmo9yfZpzURo8K/L+xg+b2bka9XCSX0nS4/tU=;
        b=aNEmeAVg49G/W7g21+lUs2KjLuOQThymhFqcaMgXHS2577CSVI4Z4iHlEE/XJX8Sox
         ArMJnsFOetYVXAumMH164Fz6Lyq7BzcDyeqKu8L1FQm+ZAzZj2Kf4DgE4kWDVkMathyU
         Ep0BhmwydSB4/LE6VwyZu6JNQ0P8idqED/981ye2xOotPf6xsNlB/3kbUaB/zGc3CwWX
         y0XGbCNR+1sFK+N2mO9XS3Dp81VYFANxoWl64zpXVMtAOglhy3tR8O5jj1nw9T6nRZCo
         WwQFi98f+UqYtzUU1Ja0Jfs65Mivhy/CxRa1EngpqSWxHX9OkPsVd8n1H84ibF4LcBp+
         yGRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=usg4wSsmo9yfZpzURo8K/L+xg+b2bka9XCSX0nS4/tU=;
        b=CrWQCTJ47IT88oHsWPxC4Se0uGbUCe5Oh+I16BWZGt9/pIXLXZqfQQ09gc5Nsk4SVc
         mYlpApK/CPtvqsyAAAZbcCiWyivKG4TbpBmEE9QWLv9Bgko1Q+p+BCHrK9j5KlnyYzTk
         0ZfUhwnS8kFYUauT8jgvDVm4ls+JMs1P5jXUsNju5/aDmpREyrBe9rqy7Jx3mSK8pcZ/
         OZOigOD3YXRb+gxEuobs5cYtlYuXc3ICozraRtoUEywyaaqjqY0rEc0/IgqLWj5MZtXP
         g+kUAkpOaPPIzHyXu1uV5h/L6HWj+pnzFR4fYaE2puQzvRKMUPCUY0Khp01vmkRKtQ+s
         4tIw==
X-Gm-Message-State: AOAM533F56/4xHVmz3winoniW2QXf1ncuV1RAQDRmCZWuZ82NmqHt2lE
        K3N0rTxYn9VxaomX5GLuahk=
X-Google-Smtp-Source: ABdhPJxVA6X9UxTMq9O+yob9ZOu3MDVkPMFmqwM4hwUs1DRHl+gXnTGn1T4sL5QqskI+Y7mjJ32lnQ==
X-Received: by 2002:a05:600c:1293:: with SMTP id t19mr1550063wmd.34.1600786830529;
        Tue, 22 Sep 2020 08:00:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y6sm27215861wrn.41.2020.09.22.08.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 08:00:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     libc-alpha@sourceware.org
Cc:     libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org, fweimer@redhat.com, jwakely@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC] <sys/param.h>: Add nitems() and snitems() macros
Date:   Tue, 22 Sep 2020 16:58:45 +0200
Message-Id: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <87zh5ixcn9.fsf@oldenburg2.str.redhat.com>
References: <87zh5ixcn9.fsf@oldenburg2.str.redhat.com>
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

[[ CC += linux-man ]]

A few more things:

I copied the contents of this patch into my system <sys/param.h>
and recompiled my projects to use these definitions, and they worked correctly.

A few more notes:

For linux-man (which is CC'd):

When/if this patch is accepted, I'll write nitems.3 (and snitems.3).

For LKML (which is CC'd):

Please comment if there are any conflicts with your macro '__must_be_array()'
(or any other conflicts, BTW).

Cheers,

Alex



 misc/sys/param.h | 57 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/misc/sys/param.h b/misc/sys/param.h
index d7c319b157..f11f5dd4fd 100644
--- a/misc/sys/param.h
+++ b/misc/sys/param.h
@@ -102,5 +102,62 @@
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
+# else /* __cplusplus < 201103L */
+template<typename _Tp, std::size_t _Len>
+  char (&__nitems_chararr(const _Tp(&)[_Len]))[_Len];
+
+#  define nitems(_Arr)          (sizeof(__nitems_chararr(_Arr)))
+#  define snitems(_Arr)         (static_cast<std::ptrdiff_t>(nitems(_Arr)))
+# endif /* __cplusplus < 201103L */
+#else /* !defined(__cplusplus) */
+# define __array_len(_Arr)      (sizeof(_Arr) / sizeof((_Arr)[0]))
+# define nitems(_Arr)           (__array_len(_Arr) + __must_be_array(_Arr))
+# define snitems(_Arr)          ((ptrdiff_t)nitems(_Arr))
+#endif /* !defined(__cplusplus) */
+
 
 #endif  /* sys/param.h */
-- 
2.28.0

