Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BBB027FD12
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731888AbgJAKQg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:35 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE2FC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:35 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id t10so5018783wrv.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DUxvt3f3o57blBzUF8i4CGd9blKLoO6bLEUyvf4IIOM=;
        b=d+0bMM0QtvCV0NYOJ4EYLpAjyBZTme/HZAlFFoKZx87a6/haP4GqebgbRJFdmqHSOy
         M24ayScMzldYxvHGIHI/voXI1u2ntd+W/Ve0t73Yhr9NqjRhO8iLMwmFW8kpSjVam/ft
         n7LUdVvKCis4bsbaNsykfgXG/BVHonvJqwQnSUr6kBVKLiQhvVbE6t+v3TH3yuYdf1G5
         L+R3hiEyOLVUfZ4aciX+w+t9U8YUhRI/VvJP1mHB4PK+7rfal7ZvjH7lwtpd96w9XkDC
         si38SjTvm5vuWMhj3RGu/469vr4GeWYsU+zDCT9hrfMY9ialMV2rsFuoJtsEiZuob6jY
         4onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DUxvt3f3o57blBzUF8i4CGd9blKLoO6bLEUyvf4IIOM=;
        b=E1TRgsSvk+sMXmStW9mkC+ZAosi8Z06YsimTtJgjRU9rfjD+aFknsBh1qDR0pRKQwz
         Cke9vtuJnk3hI5xN09leOhW8c9BHzq77lXoFqm9R1EUU21i0GpiYmupt6Pl0frAWCQsi
         NSjoZzyvx2emjO1KToVxVuYvvnOfDfK/6wUNHo+NpnsLMIoSafFQQs+ILbA8s7jBjB0h
         ED/3Kz155281Zqf10jk5dJ/MYNmSqD4b+vbPZm/krcmAAJpLAxguUvCr/lGoHoyTtkIj
         F/1tnY+d5g5Gpsc0k0C0gVo3p540uVGxhMKjXzAwdZ6fSgxtqQD1kWr9BXZL1mV/RONz
         NpgA==
X-Gm-Message-State: AOAM533Cyy9EOfIzdfHUd8yLvcALCOpf9gx+r0ciwStTzFxUKgjmkuXl
        owakhAUbR/w6MNy5EFJov1A=
X-Google-Smtp-Source: ABdhPJybt41Ch8Tt5m8t9NrJ7UPEshrksFE9YVUuVYnanf6hFFbDbvQbYNmXml5XVwMwVId5APJ1Ig==
X-Received: by 2002:adf:f10a:: with SMTP id r10mr7755742wro.86.1601547394299;
        Thu, 01 Oct 2020 03:16:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of types
Date:   Thu,  1 Oct 2020 12:15:49 +0200
Message-Id: <20201001101559.77163-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a301c2309..07de6417f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -329,6 +329,82 @@ C99 and later; POSIX.1-2001 and later.
 See also:
 .BR imaxdiv (3)
 .RE
+.\"------------------------------------- int_fastN_t ------------------/
+.TP
+.IR int_fast N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR int_fast8_t ,
+.IR int_fast16_t ,
+.IR int_fast32_t ,
+.I int_fast64_t
+.PP
+The fastest signed integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT_FAST N _MIN ,
+.BR INT_FAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR int_fast N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIdFAST N
+and
+.BR PRIiFAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIdFAST64"
+or
+.B %"PRIiFAST64"
+for printing
+.I int_fast64_t
+values.
+The length modifiers for the
+.IR int_fast N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNdFAST N
+and
+.BR SCNiFAST N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNdFAST8"
+or
+.B %"SCNiFAST8"
+for scanning
+.I int_fast8_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+Notes:
+Some of these types may be optimized for size
+instead of raw performance.
+.PP
+See also the
+.IR int_least N _t ,
+.IR int N _t ,
+.IR uint_fast N _t ,
+.IR uint_least N _t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- intmax_t ---------------------/
 .TP
 .I intmax_t
-- 
2.28.0

