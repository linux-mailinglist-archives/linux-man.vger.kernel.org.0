Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46889280161
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732342AbgJAOf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgJAOf6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:35:58 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14153C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:35:58 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v12so3371436wmh.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zTgZMGAa3SqZGmU8slvI+fkVRXIKG2D+3meUIcZMU/s=;
        b=EF1nGJiFdXTUUbStpnfrJzkgIgUjdORZWXnVqKhTSlYK54aX5xmU3GJsz95OmSqUU+
         5LAEj+SOfLySYwbr8PEKab2qnIyfRhBwh0cK/kzRKpwtpAmdD/rz2drp9O7oT8BaxCYT
         6huHJMTLgb9bfEuH5kCB0EPxQBtAaXtWiy79Ef4HV3lmn5CEuBWaWpqt8+w2lRSN+5d9
         cKii6eqDMJPk8LRYQy+rZ3KPEJ8scjqbxLxkdjzCckBh8fJoi8IK0Iivi/ultnnWSaM4
         WaA0dcl5atzHQEmpa2gOiZK8OpAOSgawSbOEoUXTms2Dihad0Ixy9SrE0GjFeh9G1TqL
         NKiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zTgZMGAa3SqZGmU8slvI+fkVRXIKG2D+3meUIcZMU/s=;
        b=bzTFCQbrd4XN8g9b2zeFDadTJ8Y4WaUqHAn7Z5fNLHisg5/uTVGFiqdJRIClTjftyX
         PO4pGZFYpDag9Sv9pZ8pp946W50y24mlEByF5bOEFmyQTxLyihIQjYmD3NEVlXSDxlKK
         eqvql0EpREyIL4wlxloJ2xSc4c19YvU7Uxa5NsNhowHxQrMERkJrXMqNewvi0C/TfWt+
         IIiETi4ZVlKAaZ06I7cwKfAIJ1bpAaKHcuP2186CbvtocwKJim1OOud7DXTb81lRRn//
         I6yNrhK775dEyNl4gz3ExjxovQeV5toAHcXljMLTILXS68B1W0gDaKZdnRtXQ03DXoau
         cz2w==
X-Gm-Message-State: AOAM532ZC9iWwZN0ni8SkDe+e7qR8Qn+xnHu5xGE1USlPoJaLDUlS++y
        IA8Kq8TR68RQkCm6Fh+LQ9s=
X-Google-Smtp-Source: ABdhPJxHWYxunVFCTOAhl5mWM86QZGT/aJwm8EmN4LHAUu4nka9uvhZe8qFbx0YlIKgNrFlJl47DXw==
X-Received: by 2002:a1c:2903:: with SMTP id p3mr336333wmp.170.1601562956795;
        Thu, 01 Oct 2020 07:35:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm209976wmg.34.2020.10.01.07.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:35:56 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 3/4] system_data_types.7: Add uint_leastN_t family of types
Date:   Thu,  1 Oct 2020 16:35:35 +0200
Message-Id: <20201001143535.98990-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 75 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 3336de463..e42cf2557 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1500,6 +1500,81 @@ and
 .IR uint N _t
 types in this page.
 .RE
+.\"------------------------------------- uint_leastN_t ----------------/
+.TP
+.IR uint_least N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR uint_least8_t ,
+.IR uint_least16_t ,
+.IR uint_least32_t ,
+.I uint_least64_t
+.PP
+The narrowest unsigned integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range [0,
+.BR UINT_LEAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR uint_least N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIuLEST N,
+.BR PRIoLEAST N,
+.BR PRIxLEAST N
+and
+.BR PRIXLEAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIuLEAST32"
+or
+.B %"PRIxLEAST32"
+for printing
+.I uint_least32_t
+values.
+The length modifiers for the
+.IR uint_least N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNuLEAST N,
+.BR SCNoLEAST N,
+.BR SCNxLEAST N
+and
+.BR SCNXLEAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNuLEAST16"
+or
+.B %"SCNxLEAST16"
+for scanning
+.I uint_least16_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.IR int_fast N _t ,
+.IR int_least N _t ,
+.IR int N _t ,
+.IR uint_fast N _t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- uintmax_t --------------------/
 .TP
 .I uintmax_t
-- 
2.28.0

