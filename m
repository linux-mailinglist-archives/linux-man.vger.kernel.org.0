Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8329544355E
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235017AbhKBSSO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235009AbhKBSSO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:14 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF30C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:39 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 133so75405wme.0
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F+kzMmKamYejgGMkJZMLW8ljAkxyFNPPdI/wv3eBs3c=;
        b=H3FOTOf9B0k6wA410olE6ij5L0PavoCwM+m/aCUa+Oi0oHFgnAEhC4aJkXqxdhumx0
         9xfQqluLMjXYFzEVYifdCF3OVBm0VE77V2ZqHGKc6+gwgukWpfyaZDNBHQZTw1g6YS9M
         iSq2mVubOVP60ILf3oxWF+Y7mBfzGmCcW5xfbETAUPhRtUVWkDYQ/IVSCPCnKNITMmEW
         lvHqg0V+mvxLsMHCVZ+WDopKDyGneb4ZUwr31nhcgbK9T7jLySg2xo77J0yGNMqG75SL
         V/GDhrr8FUyhk0CieGK+4Wnb2uXhk2E3G7pF/aGUEtcdmlmvKtf8nsepS1aHuaOcXnXq
         bIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F+kzMmKamYejgGMkJZMLW8ljAkxyFNPPdI/wv3eBs3c=;
        b=cqEj13IrE9J3hQC2KDHQu6QoqZQd4tLBCDa63l0Aa8CzIMZ8nUjbYpYGesVQEgwFiH
         fzaosDdjQiVW0gK2Bz/xFQ3zkrrG2AlcvQTheNdY8RRfI8Y5koCQnsiWxKcfA7md42Gy
         vs4MvuJ+5GmfF7JL3mUX11ojp8fEjfn93lPN4zx6zTxFW7D6fgOQBuVSMX9PKF6yc69T
         bAEKURAwlczZ4X+oDFj809+pYKyOnvKY6sHl9CW2P36/Qvtm1ayuJOYOYAOWHVy/FoXJ
         9Xt1G6RFWG64jLe3hI8v88HZXCtYkW+SlfuYDQqA3QiixP0xzwgcHeRGKa3VyeoMn9cP
         SvQA==
X-Gm-Message-State: AOAM533MWtvLgRr57/8aNW/qOANcbre5avZ3Jvc/FZo/HZE1bGtvzR7+
        qwCoJpGmn9o6xR0bIG/ZKxL5KDsOhEU=
X-Google-Smtp-Source: ABdhPJz4MYmCV7MPbxh+bB/r9+YnBwHgIoedyK8nOE9kDXq9N7/cR9nhGQ9n39zzNUHuG9OUJpemsg==
X-Received: by 2002:a05:600c:4e94:: with SMTP id f20mr9356553wmq.52.1635876937866;
        Tue, 02 Nov 2021 11:15:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 33/37] intN_t.3: Document the [U]INTN_* macros
Date:   Tue,  2 Nov 2021 19:14:50 +0100
Message-Id: <20211102181454.280919-34-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/intN_t.3 | 53 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/man3/intN_t.3 b/man3/intN_t.3
index b7642545f..f633620af 100644
--- a/man3/intN_t.3
+++ b/man3/intN_t.3
@@ -16,6 +16,41 @@ uintN_t, uint8_t, uint16_t, uint32_t, uint64_t
 .BR typedef " /* ... */ " uint16_t;
 .BR typedef " /* ... */ " uint32_t;
 .BR typedef " /* ... */ " uint64_t;
+.PP
+.B "#define INT8_WIDTH   8"
+.B "#define INT16_WIDTH  16"
+.B "#define INT32_WIDTH  32"
+.B "#define INT64_WIDTH  64"
+.PP
+.B "#define UINT8_WIDTH  8"
+.B "#define UINT16_WIDTH 16"
+.B "#define UINT32_WIDTH 32"
+.B "#define UINT64_WIDTH 64"
+.PP
+.BR "#define INT8_MAX     " "/*  2**(INT8_WIDTH - 1) - 1   */
+.BR "#define INT16_MAX    " "/*  2**(INT16_WIDTH - 1) - 1  */
+.BR "#define INT32_MAX    " "/*  2**(INT32_WIDTH - 1) - 1  */
+.BR "#define INT64_MAX    " "/*  2**(INT64_WIDTH - 1) - 1  */
+.PP
+.BR "#define INT8_MIN     " "/*  - 2**(INT8_WIDTH - 1)     */
+.BR "#define INT16_MIN    " "/*  - 2**(INT16_WIDTH - 1)    */
+.BR "#define INT32_MIN    " "/*  - 2**(INT32_WIDTH - 1)    */
+.BR "#define INT64_MIN    " "/*  - 2**(INT64_WIDTH - 1)    */
+.PP
+.BR "#define UINT8_MAX    " "/*  2**INT8_WIDTH - 1         */
+.BR "#define UINT16_MAX   " "/*  2**INT16_WIDTH - 1        */
+.BR "#define UINT32_MAX   " "/*  2**INT32_WIDTH - 1        */
+.BR "#define UINT64_MAX   " "/*  2**INT64_WIDTH - 1        */
+.PP
+.BI "#define INT8_C(" c ")    " c " ## " "\fR/* ... */\fP"
+.BI "#define INT16_C(" c ")   " c " ## " "\fR/* ... */\fP"
+.BI "#define INT32_C(" c ")   " c " ## " "\fR/* ... */\fP"
+.BI "#define INT64_C(" c ")   " c " ## " "\fR/* ... */\fP"
+.PP
+.BI "#define UINT8_C(" c ")   " c " ## " "\fR/* ... */\fP"
+.BI "#define UINT16_C(" c ")  " c " ## " "\fR/* ... */\fP"
+.BI "#define UINT32_C(" c ")  " c " ## " "\fR/* ... */\fP"
+.BI "#define UINT64_C(" c ")  " c " ## " "\fR/* ... */\fP"
 .fi
 .SH DESCRIPTION
 .IR int N _t
@@ -54,6 +89,24 @@ are required;
 are only required in implementations that provide integer types with width 64;
 and all other types of this form are optional.
 .PP
+The macros
+.RB [ U ] INT \fIN\fP _WIDTH W
+expand to the width in bits of these types
+.RI ( N ).
+.PP
+The macros
+.RB [ U ] INT \fIN\fP _MAX
+expand to the maximum value that these types can hold.
+.PP
+The macros
+.BI INT N _MIN
+expand to the minimum value that these types can hold.
+.PP
+The macros
+.RB [ U ] INT \fIN\fP _C ()
+expand their argument to an integer constant of type
+.RI [ u ] int N _t .
+.PP
 The length modifiers for the
 .RI [ u ] int N _t
 types for the
-- 
2.33.1

