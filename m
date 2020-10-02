Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F2B28121D
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:17:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387787AbgJBMRM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:17:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387777AbgJBMRL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:17:11 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE2CAC0613D0;
        Fri,  2 Oct 2020 05:17:09 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so1459359wmj.2;
        Fri, 02 Oct 2020 05:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1jz81GvCHHwbiMMhfLuqkJObGuZK1aqG9396huA5nlY=;
        b=MXQt2ADgVy2FLKyDuvwpFQ5aWNVI/H/Squ2uKSyPx5xzRrLwUaIcPwgHZTSPKyR/S6
         c1xUfIqbq433ZXC9VhMxbtcinPZXwmANwcMJrs7cv5/94Zr9NemEOaAvWQxf/dYcTI7r
         cj8otJc7mcoRxVenfHKgs3S7XIccljErz6QpkqP4WayacJ4NEWeL3gTMs3Oc9TJKVmti
         gxk0RJSwxMMp9Y0vgJ45kN0VtdxjNmsYpDaq3OxTyCUS+8ZlqQARhwboDzt3cZAz+Yrb
         rTAbwSxRh5DdnF9P0tIKjB2wiV1MXx6B00CAjoI07aKW2gVltoeT0CMxeBGjXtSAxaoX
         sFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1jz81GvCHHwbiMMhfLuqkJObGuZK1aqG9396huA5nlY=;
        b=FwrggkW+NWM3Pb/83c2QFKQbDDS47M3mz/NXNXUsNQCl2oKOtBL9BeaxM4JV5X6Cm8
         DN6dSbWjdHivNGWCQrfwhkYnA2ZGjOgTgVFV6K/IbRTWj1kf4vsVVWSUF0qLzNSdjrZL
         /mLkb21Vc628na7IsbnsmN2461PPAUm/odXTAsQfMSQAYkPm34hULy7Pi8HKWniq30u9
         rsHVdnbnVyxdWC4fyRxdbrrIird/ZwIgu/HK5GTaIV3waBPNxTFwxNhRfs7Y7wkrXL1a
         30bIR3MRAmYezTM56gTDNKmkYzG8gfB9Nee9NQRVCy42jHFfnu5CQJCpbfpEjTSxmndd
         wzjA==
X-Gm-Message-State: AOAM533G7xeCGVFlAgO07MCgpJIttrDXUWbe0rWWtBw7NruPgVOybt5X
        BJKUgbMcRlgHKUtHvKPuLwc=
X-Google-Smtp-Source: ABdhPJzmQr4Fij7t6PVUNzclmBRRE7rmYPPR5h7Fstz4X47910ieGnMxoD3+GQD8ZpvxM5mZK+yTSg==
X-Received: by 2002:a7b:cb44:: with SMTP id v4mr2596003wmj.101.1601641028474;
        Fri, 02 Oct 2020 05:17:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h17sm1710569wro.27.2020.10.02.05.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:17:07 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH 1/2] system_data_types.7: Add 'void *'
Date:   Fri,  2 Oct 2020 14:16:45 +0200
Message-Id: <20201002121645.23646-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

system_data_types.7: void *: Add info about generic function parameters and return value

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Reported-by: David Laight <David.Laight@ACULAB.COM>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

system_data_types.7: void *: Add info about pointer artihmetic

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Reported-by: David Laight <David.Laight@ACULAB.COM>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

system_data_types.7: void *: Add Versions notes

Compatibility between function pointers and void * hasn't always been so.
Document when that was added to POSIX.

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 80 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c82d3b388..277e05b12 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -679,7 +679,6 @@ See also the
 .I uintptr_t
 and
 .I void *
-.\" TODO: Document void *
 types in this page.
 .RE
 .\"------------------------------------- lconv ------------------------/
@@ -1780,7 +1779,6 @@ See also the
 .I intptr_t
 and
 .I void *
-.\" TODO: Document void *
 types in this page.
 .RE
 .\"------------------------------------- va_list ----------------------/
@@ -1814,6 +1812,84 @@ See also:
 .BR va_copy (3),
 .BR va_end (3)
 .RE
+.\"------------------------------------- void * -----------------------/
+.TP
+.I void *
+.RS
+According to the C language standard,
+a pointer to any object type may be converted to a pointer to
+.I void
+and back.
+POSIX further requires that any pointer,
+including pointers to functions,
+may be converted to a pointer to
+.I void
+and back.
+.PP
+Conversions from and to any other pointer type are done implicitly,
+not requiring casts at all.
+Note that this feature prevents any kind of type checking:
+the programmer should be careful not to cast a
+.I void *
+value to a type incompatible to that of the underlying data,
+because that would result in undefined behavior.
+.PP
+This type is useful in function parameters and return value
+to allow passing values of any type.
+The function will usually use some mechanism to know
+of which type the underlying data passed to the function really is.
+.PP
+A value of this type can't be dereferenced,
+as it would give a value of type
+.I void
+which is not possible.
+Likewise, pointer arithmetic is not possible with this type.
+However, in GNU C, poitner arithmetic is allowed
+as an extension to the standard;
+this is done by treating the size of a
+.I void
+or of a function as 1.
+A consequence of this is that
+.I sizeof
+is also allowed on
+.I void
+and on function types, and returns 1.
+.PP
+The conversion specifier for
+.I void *
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR p ;
+resulting commonly in
+.B %p
+for printing
+.I void *
+values.
+.PP
+Versions:
+The POSIX requirement about compatibility between
+.I void *
+and function pointers was added in
+POSIX.1-2008 Technical Corrigendum 1 (2013).
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also:
+.BR malloc (3),
+.BR memcmp (3),
+.BR memcpy (3),
+.BR memset (3)
+.PP
+See also the
+.I intptr_t
+and
+.I uintptr_t
+types in this page.
+.RE
 .\"--------------------------------------------------------------------/
 .SH NOTES
 The structures described in this manual page shall contain,
-- 
2.28.0

