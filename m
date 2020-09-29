Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5321227C26B
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727634AbgI2Kbb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kba (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:30 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DD17C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:30 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id w2so4099107wmi.1
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LeZ7IaJkTPLvjw3p7a3pNNkRqNrrvDostLnloiu7KTs=;
        b=p8BlBFCn21zIFEIRY0Vjmm7B4ZZ2W++AI8TqVT6SdOxG4yz/aXal+akRmracV6EglT
         DKQnlJLdheV0NsUmEbPWKKfrtnD2uA59MHL893d7A9+cPs7b1avoUKnU21h6NlozAQiF
         2SVdN/3+HPM1Jf4z+vel4z6z1vrPwTk00nWdYA0brWi4BQZQ/uyFrH7lKMPTDfK7e6H4
         OnnjDq5MFgi4pPmhqKYCXaWPHKBRfHhlHodT6DT/cwmf6cbYTvbpzRMKYSf3Y/faQx84
         YP0AMj8HNRAW0ezhLx4KAb/Ag+MsFe4isYpzJt+kuVWbvBGMyNAOrZBvR0ow59vRVe7R
         ZPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LeZ7IaJkTPLvjw3p7a3pNNkRqNrrvDostLnloiu7KTs=;
        b=M/jMRVOS4DlGcC6WSJ7csNdv1SEp0vkxD8g2zcv1CPO+gH99FFTmcoJEx2oBZwDBUi
         qh5n+rafAxRlYyoylLUfEMyatQPEyYCdDCKj2xdPVY8Hx7vbqiDhqDwYTnWTEceoQX3e
         4Ih2sfwI0R5oYvmNwUM8ERouZkLePk9aj797g7faCN3k6Vnqc4k3OWFDRCUM48BDDkyF
         GUeLQppOe4oHI+e4ujv8651Pc7pBITeBGI+0puYhiUso904gsowv6cNRU7RZEUndopV5
         NrARv0c3KFOT/hOcJZu4lwq2pLitobhL9v2NGbti5TzZ7taj7vdoCAcdWYaHckSptaBG
         6XaA==
X-Gm-Message-State: AOAM532VqsnS7UZXj/PO5L9ihUYw+PezIyt4xjIBHi/voVlzk0NC7s2n
        NKGIGQTokXbW+Qs2CaXVYXk=
X-Google-Smtp-Source: ABdhPJx9qFaJ1ePWnTIo4sRlG2dgtD75V1yEHX3FakPnn3mtAwCjG4A7gKaUW4Ni39VpUDfHd+dTjg==
X-Received: by 2002:a05:600c:2312:: with SMTP id 18mr3685351wmo.141.1601375489155;
        Tue, 29 Sep 2020 03:31:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 3/8] system_data_types.7: Add 'uintmax_t'
Date:   Tue, 29 Sep 2020 12:30:25 +0200
Message-Id: <20200929103028.56566-4-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 55 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e718b3c30..2e7aca7d2 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1136,6 +1136,61 @@ See also:
 .BR getpwnam (2),
 .BR credentials (7)
 .RE
+.\"------------------------------------- uintmax_t --------------------/
+.TP
+.I uintmax_t
+.RS
+.br
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+An unsigned integer type
+capable of representing any value of any unsigned integer type
+supported by the implementation.
+According to the C language standard, it shall be
+capable of storing values in the range [0,
+.BR UINTMAX_MAX ].
+.PP
+The macro
+.B UINTMAX_C
+.\" TODO: Document UINT*_C(3)
+expands its argument to an integer constant of type
+.IR uintmax_t .
+.PP
+The length modifier for
+.I uintmax_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR j ;
+resulting commonly in
+.B %ju
+or
+.B %jx
+for printing
+.I uintmax_t
+values.
+.PP
+Bugs:
+.I uintmax_t
+is not large enough to represent values of type
+.I unsigned __int128
+in implementations where
+.I unsigned __int128
+is defined and
+.I unsigned long long
+is less than 128 bits wide.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.I intmax_t
+type in this page.
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.28.0

