Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F307280409
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732096AbgJAQfV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:35:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQfU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:35:20 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D83AC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:35:20 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id y15so3843271wmi.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jkz4+6EN4jr5x65zWX+JHWtO7AUNsrtYAHex90SHSQE=;
        b=J8BFDsa5E/X79FirPNvFwUF9o4SxyaLBzqHY9iHyT3vknGo6eBqChg6jaZ8CKjluOn
         k/o7+CUM3yy7nBYQu7MdzQg8TqtFd/1+ZP8HwPArNgShl4kLhyy0uPisJ8ho1aeahimg
         UOy9ageH2RtzrergGQoV7sVidkJm60HdIglzwt4SNvKfaNY4T3KnyY5hR0WAF5zDENiN
         cfcj1kxlc4DMTzDSX0lZZc2D7kBhi6iHEyGNa1cXY6vfbXuc7M4uS0xOGabPGxIbVa6X
         uqA2Adk1DjKO01dLaf45LuuXn5j+5QQPlqoL94OVN1k1cx4Y64HXjSVhWgV0LC7DNNX2
         QOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jkz4+6EN4jr5x65zWX+JHWtO7AUNsrtYAHex90SHSQE=;
        b=CnWiUpiwAOGMy/GZu3LqYppP17mFr5Z1ol2ZcdFsv/+cGzMDXuqgXTPEir0A5nKM3U
         HYUPiM3wlYL73eAgDldEEQ/iVv0beZ3Yecd7ALby1vs0WglwtJ4CxItGgpYDtrkTZBIW
         a1hewakbNFBj0MpQm1b92mnO0JW6iIHUqoTt+nYLx5MOw7wDztPXZgV1j25/8HqYoW0R
         SU/rahV7OmKPOHS0YCVIi0bbNSJTekqVuxzzIJa+yRyq2KGFrIG3tmevFKyhMQfVz/zW
         CSuRF3RCmn+luCgxhkicWpXDSyYg+Zy2TpHgB2TEg2SUXK8SXhnoe189PWLzc/OSh6/d
         r9iw==
X-Gm-Message-State: AOAM532ddwaCySCWrYSQXOATzqOrnmEQdN05nd1yBXn48MDBPvSRgfRo
        mZprF5hhvktKOHj71aTdvTQ=
X-Google-Smtp-Source: ABdhPJzPZ2Zje8Ld/DrAWzmqtzi55LmwddUzFQnuc9n5JMZOnAA6LPP7pkN7zkHrpPco+SKWedLbnA==
X-Received: by 2002:a7b:c774:: with SMTP id x20mr905909wmk.102.1601570119219;
        Thu, 01 Oct 2020 09:35:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm10660997wrt.53.2020.10.01.09.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 09:35:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 1/4] system_data_types.7: Add '__int128'
Date:   Thu,  1 Oct 2020 18:34:41 +0200
Message-Id: <20201001163443.106933-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e545aa1a0..5f9aa648f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -40,6 +40,8 @@ system_data_types \- overview of system data types
 .\"		* Description (no "Description" header)
 .\"			A few lines describing the type.
 .\"
+.\"		* Versions (optional)
+.\"
 .\"		* Conforming to (see NOTES)
 .\"			Format: CXY and later; POSIX.1-XXXX and later.
 .\"
@@ -48,6 +50,44 @@ system_data_types \- overview of system data types
 .\"		* Bugs (if any)
 .\"
 .\"		* See also
+.\"------------------------------------- __int128 ---------------------/
+.TP
+.I __int128
+.RS
+.RI [ signed ]
+.I __int128
+.PP
+A signed integer type
+of a fixed width of exactly 128 bits.
+.PP
+When using GCC,
+it is supported only for targets where
+the compiler is able to generate efficient code for 128-bit arithmetic".
+.PP
+Versions:
+GCC 4.6.0 and later.
+.PP
+Conforming to:
+This is a non-standard extension, present in GCC.
+It is not standardized by the C language standard nor POSIX.
+.PP
+Notes:
+This type is available without including any header.
+.PP
+Bugs:
+It is not possible to express an integer constant of type
+.I __int128
+in implementations where
+.I long long
+is less than 128 bits wide.
+.PP
+See also the
+.IR intmax_t ,
+.IR int N _t
+and
+.I unsigned __int128
+types in this page.
+.RE
 .\"------------------------------------- aiocb ------------------------/
 .TP
 .I aiocb
-- 
2.28.0

