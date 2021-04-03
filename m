Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8B6353558
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236727AbhDCTl4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:56 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26BBFC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:52 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so3804448wmi.3
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kJYH9tpAtDL4EhejYbDB+JwVoNY7pJbsuEmcLrJV8zQ=;
        b=CIjlsliCZTuR/je1TsaJgsVck7t+tOK1jlBGVVbOgddHgnkgBLjh6FvbxOV90MTzPi
         Ekkx9T1ALKrjdsL++pVWrQytltTHRqjiIGyk4YZ1JehZARpvxQT7ZgMmNI+uERSrjqSH
         ioM9+W3i0sm23zEVCxjYwEFiAKn3igq7XCtQiqOHSlSofkQcd8IGEKKXlGkXlHkxq3UV
         WwmGQmm2DbVi5Sp0UBFMFIZ1mXbobCTP1UFnSgxjxnsAQVaxekIOhwXWYM2llrXBOVq7
         DVyMwuHygXNabHfLQBGjPyZXuEzRfuxV1xjZezkEnzF9wK4PaqK4Ts8xe54xd1Gzxz0d
         yjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kJYH9tpAtDL4EhejYbDB+JwVoNY7pJbsuEmcLrJV8zQ=;
        b=UqaIVcX3e+h0sA1dga42dfiR2sUQQL5dR8QGOsgaeMN1Ct6LqKedFRMfGcCSkRqc8Q
         qvzhSGD15NlGBPQYtTcZPd25LQIsWUtU0vjYQrjJIO/9mxOQuuPNiLoBZujtmCmeplra
         cbwuQ1F1SdJnOnKdfpsxx280z15JfEZMfoN2OBR04P1uVBSdtTp0Uzms/Da8nN3Sjbt4
         hCKSk3p5VI+SJ9100VoMuc7O4+EgNL4iiWVqbArBGZ2G+0IsfnfkFIuBVAiT7GW3ywyH
         fj63z6kZfRBLFY1HEGnPn+/0LpX6HyijIEcDYxBPxU7fCAMcgfSC97ySCt/BbtPk5fn0
         NT+Q==
X-Gm-Message-State: AOAM532Z5hxj9/x/rC46BRDpVskWyffwr1XEd8p6PbUTGkwmrtqtQ4vk
        pcGrd5WxFyoVzoPYp8fu8Fc=
X-Google-Smtp-Source: ABdhPJwDLXCO2YVSC2CW6WTJuEIBnO3+VtprVdk3asxh5iR/QYnj3UkoPCVedGjf9d0qZnTfFQD8kg==
X-Received: by 2002:a1c:5f54:: with SMTP id t81mr18258409wmb.84.1617478910089;
        Sat, 03 Apr 2021 12:41:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 03/35] system_data_types.7: Add 'socklen_t'
Date:   Sat,  3 Apr 2021 21:39:55 +0200
Message-Id: <20210403194026.102818-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 93c723a2f..e038aab1e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1251,6 +1251,34 @@ POSIX.1-2001 and later.
 .BR getsockname (2),
 .BR socket (2)
 .RE
+.\"------------------------------------- socklen_t --------------------/
+.TP
+.I socklen_t
+.RS
+.IR Include :
+.IR <sys/socket.h> .
+Alternatively,
+.IR <netdb.h> .
+.PP
+Describes the length of a socket address.
+According to POSIX,
+this shall be an integer type of at least 32 bits.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR accept (2),
+.BR bind (2),
+.BR connect (2),
+.BR gethostbyaddr (2),
+.BR getnameinfo (2),
+.BR socket (2)
+.PP
+See also the
+.I sockaddr
+structure in this page.
+.RE
 .\"------------------------------------- ssize_t ----------------------/
 .TP
 .I ssize_t
-- 
2.31.0

