Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A833B27FD18
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731913AbgJAKQm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCBDEC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:41 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d4so2298218wmd.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7H9/TyijSU4iiA5tw9bYQf7DBtTkgkDlOMvZQUee45I=;
        b=WCWhOrbOQk7wAMeXThQNNc0zcvtp0LiaZgM/xs2S7w5WpSP4jbw9lLgljTuugup232
         9sjF5ueWrhn/Kplxy5nwMnV724Rc7Qk5jPIgGCtuIY7Q69hbbY2hUCj4s4zHriYYnDSv
         xfBgLBJV/MpijQCeJn7LdjDNoksXoDxbgg4oe5b/vd95Lku9D2aeGW20b43sHbxr81tg
         5CrvjILgQpdrqvpcQ1S3sZNDzx2l4qJpWSYdfOLX4WhPExKV72Bit5IBVjaZhpJW13nD
         ObCVCQpUdclW2RZZpgquS1kBb+NgVmyuTe62n2OIwP3QHCiBthP6cLeJkbV4h+np50gQ
         59QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7H9/TyijSU4iiA5tw9bYQf7DBtTkgkDlOMvZQUee45I=;
        b=TsO1njfjKpdBiFsTJFj7odnlElYPCRk9iNW7N6XZ9ckFJpSQXOWgIHWimrx9CwV4gZ
         Bx478qh0b6gnJzKKB5DLNYtPK34Y6AweXC8SB9i2BfQxkkPtIga4sZ6l234w2clhrQwZ
         xsnY6zntdb88wgJOx0l2jZKIdjrnqdmJW83ZiI1f3LwGyaf23UDHHZajWCoBYUv7MJA6
         omlRY/Fy4FmFJ+dbSlvK9k58I3ugzdheq0o+qDKh/jKES/KNc4TX8OIuP+ux6cf6m9TU
         VSSk7qvdcTsdRDt32NPcZ0MlEz9kXyAnrIH932H82kNkndb+SF+/ET0zNiBahBtnv78W
         J7PA==
X-Gm-Message-State: AOAM531jaG+uh6o/yUuw+a7+xO8+cZewWPZpnNVcovvqCkAwRPVn0CtA
        oePZB0cAPosvPjYpoToARay4Ng2vq6DzHw==
X-Google-Smtp-Source: ABdhPJzq9Gays+5KU/rV7VMCYbp9EhCb0WQwlP9i4PzsVH7xxkacM80Do8mMjAsBYRI7Uq9V8OTKEA==
X-Received: by 2002:a7b:cd05:: with SMTP id f5mr7594425wmj.116.1601547400549;
        Thu, 01 Oct 2020 03:16:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 11/16] system_data_types.7: Add uint_leastN_t family of types
Date:   Thu,  1 Oct 2020 12:15:55 +0200
Message-Id: <20201001101559.77163-12-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 75 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 0b8057087..f768e87ba 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1433,6 +1433,81 @@ and
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

