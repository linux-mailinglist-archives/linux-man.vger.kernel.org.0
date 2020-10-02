Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3CA281C13
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 21:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388358AbgJBTdG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 15:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbgJBTdG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 15:33:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3C0C0613D0;
        Fri,  2 Oct 2020 12:33:06 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id c18so2961881wrm.9;
        Fri, 02 Oct 2020 12:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VBFPk/Qft386bd0Dt7tJ3BwvEnIwt2MzSPH7alB/dmY=;
        b=G6Be0hEZMa/j53dZd+gRkp5jt+f/frkOI+EsxPbSpOKSDZFdqzdJ6F0cNW4/qKbVek
         Zqe4orvZkxbEFMvLq2rgzbRoNhwEGIp9QdyC6yKBvqUs5IiQjRodJ4Vjhvhdgs+Lp+c7
         4dHdH8BGgSjWbSXOhROxgWpPelfysDLx7h78OyuTa2do1MFLzQm7OQY2yETa6Ejq8fDP
         tgim4J12oJ/7LiAvJWc4TKYnzioopPRwyQxhjaCrActlVCdOdUC3nzfpXMo1NqZDx07Q
         J4C/+1UWDmdd9nk3JHX5N4zyXwa6xYOm8WVuFLTgUBIn2o6IGo3jniqnDXqtTVas0/2p
         wnUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VBFPk/Qft386bd0Dt7tJ3BwvEnIwt2MzSPH7alB/dmY=;
        b=SCde0rFoBIbSXmTXZvSEikU75Vk5/wvEOPHAt8PJr4BQC8XgwGRN36PoaT7Q8011i6
         xwlGSDWSVO1XHePftcEzQ3hy5Ie1dnR6+nYxheaqCzzffy3XullLUGdHoYSdvCOqK6Uw
         +1Hd+wZihTWpkP1n0LIQ+buYcqCpN7ApqVd88SW01q8WCo1J+pUqwl6OxfkKOmh24W5G
         dL6WZN8NAg44VXTkX9Tzgx5M2vbDDQsgCK6+n/VoZhr55ztlzyVMVWo/pSISfSWao4eY
         8ux82zt30QUP8KpM1ORcYBTYPpxNEJwqxyi9m0Mmy1H1i+UBogULYw3Vr3R3OwR94Sde
         emfw==
X-Gm-Message-State: AOAM532KVQrgDTIRVhxqGyeXvGcIIX0quUSvHj9Ldi6qF2b/F0u8Dr8r
        4gVdURfaeWfu986qzZEA0i4=
X-Google-Smtp-Source: ABdhPJzRdcP1C/U7X5NIW2C1119M1D7zE/y6h08iotHPSHhQpQ1W5+CttUm/Yi+8VPj5/l7OKmZakQ==
X-Received: by 2002:a5d:5602:: with SMTP id l2mr4976722wrv.410.1601667185003;
        Fri, 02 Oct 2020 12:33:05 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id e19sm3384230wme.2.2020.10.02.12.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 12:33:04 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: [PATCH v5 1/2] system_data_types.7: Add 'void *'
Date:   Fri,  2 Oct 2020 21:28:15 +0200
Message-Id: <20201002192814.14113-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
References: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
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

system_data_types.7: void *: wfix

Reported-by: Jonathan Wakely <jwakely.gcc@gmail.com>
Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 74 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c82d3b388..7c1198802 100644
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
@@ -1814,6 +1812,80 @@ See also:
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
+the programmer should be careful not to convert a
+.I void *
+value to a type incompatible to that of the underlying data,
+because that would result in undefined behavior.
+.PP
+This type is useful in function parameters and return value
+to allow passing values of any type.
+The function will typically use some mechanism to know
+the real type of the data being passed via a pointer to
+.IR void .
+.PP
+A value of this type can't be dereferenced,
+as it would give a value of type
+.IR void ,
+which is not possible.
+Likewise, pointer arithmetic is not possible with this type.
+However, in GNU C, pointer arithmetic is allowed
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
+.BR p .
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

