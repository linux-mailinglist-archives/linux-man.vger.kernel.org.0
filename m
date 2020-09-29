Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6979927C26F
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727908AbgI2Kbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kbg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:36 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D30AC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:35 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z4so4792857wrr.4
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=44YDyqjMDZT8Jt75wxSHSoU6KW8MrzLMmFTUVNZEZVI=;
        b=qu+AWljue7H+nN5M5kzbSnsNmcqBeISy0MuDtKQFr723Vrs0ps0IMqZ/gwHWXAJ2EE
         J4cLXjqqah+ep+PmhnRrCdmFYaZXYAknrob+Q0vrYlh+fJM0xFfcJPBgnSEt088SbYZg
         hupIbEO87MYxIPUSxGZk84m13Vl1883f+MVRXKK/tWhbsiApFFrPKQlnUPcZF0k6lEKC
         6H/M8XsxRdUWrtNuv2sGArOaVz5p/e3mn9V5mjBSeu1k8xReVp2HxOZVubrgtBIuJufk
         yRMxHJzOUSRg+TjnsaJ2x4S0sQSdqjLHqrm6OTpI4NfY+1sjritQgwOFouCwHxq1LkNy
         0XAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=44YDyqjMDZT8Jt75wxSHSoU6KW8MrzLMmFTUVNZEZVI=;
        b=OseJJ81uCUzeO3BdOlYPJDEsXxAZHIQ/xV8sRHH0ry15IcYr1iK+cXjI/GD4Iks3RG
         WiSvqe/NxUJxOWsjMBlejy46j+0kQ/hYzqOHYd37fg0ja7OXuhy1kAqsPW93wK+RYaF9
         pNTQ9mxjoLIfP6ZmSElAFceQXvOBQZ4zU8342f1BFZBM+Ek5zruB5A9F1MOYGdHsD2C2
         8YclprRvQuCtnMpdNS6kyF/aL9DE9pzn9anP9dUTX9uooUuUZ32hObNpaweoMTGBrfCU
         F+1BwI4N5zkVEq/y+keN/NW99UZ4Qm6TAgn2liEzrCCL7CY1wCP4exVwZwX2/7wXI610
         0+6g==
X-Gm-Message-State: AOAM533lOizRgrrSeSzJC2+0UlKNrWMZzgkRZ13Gi/lvdXsHPWZsE9PN
        /l/nK48UgsJ3aEmEKm2ah04=
X-Google-Smtp-Source: ABdhPJxT9ufeaWz+SUJdncTQGF8Db3v/xGfFpZSrfF9tsq4Ya/qD8SPskqaHVEz0M8q2ct/O6o++bQ==
X-Received: by 2002:a5d:6343:: with SMTP id b3mr3686820wrw.179.1601375494305;
        Tue, 29 Sep 2020 03:31:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 7/8] system_data_types.7: Add uintN_t family of types
Date:   Tue, 29 Sep 2020 12:30:29 +0200
Message-Id: <20200929103028.56566-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 82 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 9b8244649..2f21e6849 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1270,6 +1270,88 @@ See also the
 .I intmax_t
 type in this page.
 .RE
+.\"------------------------------------- uintN_t ----------------------/
+.TP
+.IR uint N _t
+.RS
+.br
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR uint8_t ", " uint16_t ", " uint32_t ", " uint64_t
+.PP
+An unsigned integer type
+of a fixed width of exactly N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range [0,
+.BR UINT N _MAX ],
+substituting N by the appropriate number.
+.PP
+According to POSIX,
+.IR uint8_t ", " uint16_t
+and
+.I uint32_t
+are required;
+.I uint64_t
+is only required in implementations that provide integer types
+with width 64;
+and all other types of this form are optional.
+.PP
+The length modifiers for the
+.IR uint N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIu N,
+.BR PRIo N,
+.BR PRIx N
+and
+.BR PRIX N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIu32"
+or
+.B %"PRIx32"
+for printing
+.I uint32_t
+values.
+The length modifiers for the
+.IR uint N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNu N,
+.BR SCNo N,
+.BR SCNx N
+and
+.BR SCNX N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNu16"
+or
+.B %"SCNx16"
+for scanning
+.I uint16_t
+values.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.IR __int128 ,
+.IR intmax_t ,
+.IR int N _t ,
+.I uintmax_t
+and
+.I unsigned __int128
+types in this page.
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.28.0

