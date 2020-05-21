Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF9421DCCB0
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 14:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729291AbgEUMPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 08:15:08 -0400
Received: from mout.kundenserver.de ([212.227.17.24]:33909 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727949AbgEUMPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 08:15:08 -0400
Received: from localhost ([178.142.96.94]) by mrelayeu.kundenserver.de
 (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1N9d91-1ixLH51mwn-015Ysm; Thu, 21 May 2020 14:15:06 +0200
Date:   Thu, 21 May 2020 14:15:06 +0200
From:   Tobias Stoeckmann <tobias@stoeckmann.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] printf.3: Prevent signed integer overflow in example
Message-ID: <20200521121505.dfh473amjvb37rwr@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:peKFXSoGmx6dqmrm76185KDpZnxSczsM3o8lIq862VPP/vtEIxp
 d/dt2UZMGikGt1UySIQMzTMn2+7mi17UpnB9Pze6yjwnors141ym3VPkyo/g+IJ/Ab6FtfC
 fNjJxMfgQP1qdD8l47d0V+X6d52j2NxTgAHqcffELaSOdxj/A9uTCdczAf43bG87q/JpEgm
 kpOyb6zjepqGdnTpwUZwA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oIZ8aq6CToQ=:wHDH29zSyljJLtRSDI3gnd
 tTthLmAL2RZhvB+pBK0iCmA9jewyX94XhUMgcr4SwhErbbqrwDzr5jm/FTuQbotj8Vck3ZnvD
 jMkRylX5nwRtcKmbpef6wLTS/F0zEOXR7jOpNoRmEhK883gxOmEyBn/mJjd5GZ5JBgPoTZz+3
 y62z4UJKYeXvehaMZ7ZCL5xUxZdUWBOXg3AtQyEI917BpsRdrZjXa9kFoZX+0yWwM+e655RxA
 x95upHzSiAuCQfbL256SlQTVxhNxM32hG3NYboX49HYRvg1dYMvAspqaRx0bbMotAs3twrRZb
 7ofcuAWrSyrx8Im+i1MDvwsoDFwPWLB7JyWVVthr+AnffpknSQQ62aHRzzijLncTdUwEtjPUU
 WiuOuaQyyurIqYEOD0bkOZGkqeqxQmmwDTzdYppP+riNwf4qWtfejeYQwEDtqXRaGxzFYP3kM
 OB9BtVKeLD4iv+OP6vHn3O3D8pnq+gOaj8HFYRAn42AqomPeANuTg5qmjXLAh3O3hDQdLwUrk
 rKgWxzVZHtPWbuUtYuAje6bvfM9PU1doUF9Wg1pSc8bXfDxFrHibL6JkHcXNR7o0uru+p7/dK
 ec8iwObLXeq5HJlznBjvmnytvnCb+o7BESq17V/aTUQt2+q/NSesygi/B/GF8BDgAYFgtrPeB
 tgoAN7+ELfsI3HRIZNqq3fWlzXau8jpnJdVFhI2eJHBMwQ1T+oQ0wXmD03BUmNYsZg4uERQJf
 /K+Bp2KharRRW0aBaktllVE7mdt/4r6QQBiyEQQKhW+4TVgVhsmC4NtAKSqvOFGR6WzeJbZQC
 lXKYaqg8PsJAJAnqa/Fy05OjeWIaxPh1Y/SHZR7PqJp9FfzRkCH3LCTYr21R8iGuUGoShtB
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The function make_message illustrates how to use vsnprintf to determine
the required amount of memory for a specific format and its arguments.

If make_message is called with a format which will use exactly INT_MAX
characters (excluding '\0'), then the size++ calculation will overflow
the signed integer "size", which is an undefined behaviour in C.

Since malloc and vsnprintf rightfully take a size_t argument, I decided
to use a size_t variable for size calculation. Therefore, this patched
code uses variables of the same data types as expected by function
arguments.

Proof of concept (tested on Linux/glibc amd64):

int main() { make_message("%647s%2147483000s", "", ""); }

If the code is compiled with address sanitizer (gcc -fsanitize=address)
you can see the following line, assuming that a signed integer overflow
simply leads to INT_MIN:

==3094==WARNING: AddressSanitizer failed to allocate 0xffffffff80000000 bytes
---
 man3/printf.3 | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 50e136ba6..827d9cbae 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -1132,29 +1132,32 @@ To allocate a sufficiently large string and print into it
 char *
 make_message(const char *fmt, ...)
 {
-    int size = 0;
+    int n = 0;
+    size_t size = 0;
     char *p = NULL;
     va_list ap;
 
     /* Determine required size */
 
     va_start(ap, fmt);
-    size = vsnprintf(p, size, fmt, ap);
+    n = vsnprintf(p, size, fmt, ap);
     va_end(ap);
 
-    if (size < 0)
+    if (n < 0)
         return NULL;
 
-    size++;             /* For '\e0' */
+    /* One extra byte for '\e0' */
+
+    size = (size_t) n + 1;
     p = malloc(size);
     if (p == NULL)
         return NULL;
 
     va_start(ap, fmt);
-    size = vsnprintf(p, size, fmt, ap);
+    n = vsnprintf(p, size, fmt, ap);
     va_end(ap);
 
-    if (size < 0) {
+    if (n < 0) {
         free(p);
         return NULL;
     }
-- 
2.26.2

