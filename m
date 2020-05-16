Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 738C81D603B
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2020 12:11:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725853AbgEPKLJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 May 2020 06:11:09 -0400
Received: from winnie.ispras.ru ([83.149.199.91]:25305 "EHLO smtp.ispras.ru"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725792AbgEPKLJ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 16 May 2020 06:11:09 -0400
X-Greylist: delayed 486 seconds by postgrey-1.27 at vger.kernel.org; Sat, 16 May 2020 06:11:09 EDT
Received: from monopod.intra.ispras.ru (monopod.intra.ispras.ru [10.10.3.121])
        by smtp.ispras.ru (Postfix) with ESMTP id 13943203BF;
        Sat, 16 May 2020 13:03:01 +0300 (MSK)
From:   Alexander Monakov <amonakov@ispras.ru>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Alexander Monakov <amonakov@ispras.ru>
Subject: [PATCH] dlsym.3: Extend discussion of NULL symbol values
Date:   Sat, 16 May 2020 13:02:50 +0300
Message-Id: <20200516100250.16402-1-amonakov@ispras.ru>
X-Mailer: git-send-email 2.11.0
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Avoid implying that use of IFUNC is the only way to produce a symbol
with NULL value. Give more scenarios how a symbol may get NULL value,
but explain that in those scenarios dlsym will fail with Glibc ld.so
due to an implementation inconsistency.

Signed-off-by: Alexander Monakov <amonakov@ispras.ru>
---
Hello!

Michael, in
https://stackoverflow.com/questions/13941944/why-can-the-value-of-the-symbol-returned-by-dlsym-be-null
you're in agreement with Petr Skocik that dlsym failure on NULL absolute symbols
is a Glibc bug. I'm also in agreement.

In any case, current wording implies that apart from IFUNC there's no way a
symbol will have NULL value, which is not true: the symbol may have NULL value,
only it can't be looked up via dlsym. This patch clarifies the situation.

Thanks.
Alexander


 man3/dlsym.3 | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/man3/dlsym.3 b/man3/dlsym.3
index 8a1ae7789..5ea151209 100644
--- a/man3/dlsym.3
+++ b/man3/dlsym.3
@@ -143,16 +143,22 @@ The
 .BR dlvsym ()
 function is a GNU extension.
 .SH NOTES
-The value of a symbol returned by
+There are several scenarios when the address of a global symbol is NULL.
+For example, a symbol can be placed at zero address by the linker, via
+a linker script or with
+.I --defsym
+command-line option. Undefined weak symbols also have NULL value.
+Finally, the symbol value may be the result of
+a GNU indirect function (IFUNC) resolver function that returns
+NULL as the resolved value. In the latter case,
 .BR dlsym ()
-will never be NULL if the shared object is the result of normal compilation,
-since a global symbol is never placed at the NULL address.
-There are nevertheless cases where a lookup using
+also returns NULL without error. However, in the former two cases, the
+behavior of GNU dynamic linker is inconsistent: relocation processing
+succeeds and the symbol can be observed to have NULL value, but
 .BR dlsym ()
-may return NULL as the value of a symbol.
-For example, the symbol value may be the result of
-a GNU indirect function (IFUNC) resolver function that returns
-NULL as the resolved value.
+fails and
+.BR dlerror ()
+indicates a lookup error.
 .\"
 .SS History
 The
-- 
2.11.0

