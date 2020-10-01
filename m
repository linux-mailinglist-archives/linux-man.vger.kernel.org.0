Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3941427FD16
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731907AbgJAKQk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:40 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C34DEC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:39 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id w5so4995537wrp.8
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zFGAHQ4tN0qBaxawcSu4iAIimfA+9SaHeUdt25mZxi4=;
        b=kNxRyKu7guuuMl6k8+T6UZzS/5d1uy/4XZv/neOkSFlj6sPMO1NylDou+jjJW1MxRl
         1j2RlFVLStdZjCx7oScG27usnWiWAfw/0CredzhU62lFNcWoCslMyXo25R0gqjD4M5qL
         /n15yQRnxEgp6oH2nT7KhVtF6GY5yiGDsPcphCJwuzLT2KRf/jKQ2mKg7GrDg3KsOTZt
         ve7ZAzzm+ne0HbbfJgdVyk4gcxVJ7TUiOPN2FK2iM7gtfb8ZMl24e8APQ3FYo6CxGWHE
         ufIXCfr2dOQ2oSIiUVHgowjLaWVjZlUQdiiQLxRaMBF55AkKv8wBTfaDfNYpsbsGRKi5
         WneQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zFGAHQ4tN0qBaxawcSu4iAIimfA+9SaHeUdt25mZxi4=;
        b=AGHt36kRXnJ+sCD4yyIXQrw8BtIQeZazp+2kUTzl9yAbUeNmYqA2vdyIZAQU6RkJo9
         jqOFLNW0yMLY5HLv1gDlMyhxXt0fa0qfUx1vJBurC4/Cyj+TUA9GlOZ6l5Dms97T9KEc
         YG2Gobj0dDKxdiq3iNjxij3GiVKMPJERePP0b97nMEwTR2UE+byENCRx4viOBJ4wdMpd
         65lpZX8rPQ+B823+k5VKm8IC9LifFSE4qbZbaiDztRF7TBZ5QL0qCAGvPOUDDLsIlYgU
         HH0F4bIpTQas5/wdw6RxY0ZDnvRJ6ROXLWLuNzZyyrdYRXsSqXmVwEXgbgvBzNNMcnMO
         jNqg==
X-Gm-Message-State: AOAM530mwJoSFkDn5mJuKh2zWiNmufhzdGxHi6Yp5LoUfNDz9jMhFvWJ
        UYVS6D5mOeEE7lmgKMn7nhw=
X-Google-Smtp-Source: ABdhPJzGcMv+O/PwCQkeGPBH1ROiDUCVsbIVqf4RlR71v10x+pPw/jv1UCSDF+By4GcxntgyXybJaw==
X-Received: by 2002:adf:91c2:: with SMTP id 60mr8684737wri.292.1601547398450;
        Thu, 01 Oct 2020 03:16:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 09/16] system_data_types.7: Add int_leastN_t family of types
Date:   Thu,  1 Oct 2020 12:15:53 +0200
Message-Id: <20201001101559.77163-10-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 72 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e3ebc2270..0b8057087 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -405,6 +405,78 @@ and
 .IR uint N _t
 types in this page.
 .RE
+.\"------------------------------------- int_leastN_t -----------------/
+.TP
+.IR int_least N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR int_least8_t ,
+.IR int_least16_t ,
+.IR int_least32_t ,
+.I int_least64_t
+.PP
+The narrowest signed integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT_LEAST N _MIN ,
+.BR INT_LEAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR int_least N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIdLEAST N
+and
+.BR PRIiLEAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIdLEAST64"
+or
+.B %"PRIiLEAST64"
+for printing
+.I int_least64_t
+values.
+The length modifiers for the
+.IR int_least N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNdLEAST N
+and
+.BR SCNiLEAST N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNdLEAST8"
+or
+.B %"SCNiLEAST8"
+for scanning
+.I int_least8_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.IR int_fast N _t ,
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

