Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACB4A29BB92
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808745AbgJ0QV2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:28 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:51916 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808740AbgJ0QV0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:26 -0400
Received: by mail-wm1-f67.google.com with SMTP id v5so1946524wmh.1
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s1Qjc7zCz9cRXXt+u9A5WHRxwvzqFmgVkghJJ0OwGsM=;
        b=FpnKBgCEse7bSmiLlXjJfDMqCYTplYgEbN4AebkIsNbc7KGOhSBFhBFvitiD+he1jZ
         TCMuCLwXgBUofZYOXxtWoMQewdaC7bxt6MnjZZEkRWjbYxM3y0ZqJWTLVf8hCwPxKe9y
         SuwRVO9Ary8eXjOH+eeKSuYq5CCqjsPKIH1tihr25MLn9XmI/2akTvd/9MHLzMKzYvFk
         U9UXvLTvXtesju+SaXe6sIQLEkEAkW9ZzTCl+1Hr2jsI41be96LirurV9fnoihdP10oi
         z2r5TIpHU1x3xGPvyNxyVxQWvNzQYsvlJiOqQfkoOPiafe9ebAm68o3QV0141hlVQRhG
         oUpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s1Qjc7zCz9cRXXt+u9A5WHRxwvzqFmgVkghJJ0OwGsM=;
        b=kE5qXimZHyEwspOpU+BKekPgReyOXnfJLFjOb63wJlZesxTlF3Zld5mU+rrf/e5Qe7
         gtjw6Xa0+WvPr/Ya96lYupka67JfhNDtMZWycV0039EsoG8UMf+PnfpRlYrMW/esRQdr
         jVCr5EDzjRHE1w69RLVYwSZuIo30D0i4akbDJMoZ44oyd7o4aPIsurOrVGmcKKIQaZNf
         6OSfQcPcWmaUqTltvsXQx9AgsqxdUBia5+6L7zlJdoS7f1zh0iMtwQ7oDKRwy+2idvIP
         CqWM0Nq6XxkO53ETSxYiu2G2h98QNPOhMMLZfTPg9fR5WvIKtLfr5ZVXekHFJHArD14Y
         ZrFA==
X-Gm-Message-State: AOAM531bS/Ucbh3F8rJd5zpIwvBF0M71/XsUv+XK08bCfvJuFzdvJAWP
        OcGO/WBFxqapDS+sBJBqBCM=
X-Google-Smtp-Source: ABdhPJxPd8H71jpexNn+SriY32AGIt7Qx5b/YiNWWQxUNQ9fja28W9UDbgUHgQUWcXa2VYW0VvVHXA==
X-Received: by 2002:a1c:44e:: with SMTP id 75mr3579562wme.117.1603815684763;
        Tue, 27 Oct 2020 09:21:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/6] system_data_types.7: off_t: Add note about _FILE_OFFSET_BITS
Date:   Tue, 27 Oct 2020 17:21:10 +0100
Message-Id: <20201027162114.47521-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c02782ed8..e846de68b 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -756,6 +756,11 @@ since POSIX.1-2008.
 .IR "Conforming to" :
 POSIX.1-2001 and later.
 .PP
+.IR Notes :
+On some architectures,
+the width of this type can be controlled with the feature test macro
+.BR _FILE_OFFSET_BITS .
+.PP
 .IR "See also" :
 .\" .BR fallocate (2),
 .BR lseek (2),
@@ -768,7 +773,8 @@ POSIX.1-2001 and later.
 .BR fseeko (3),
 .\" .BR getdirentries (3),
 .BR lockf (3),
-.BR posix_fallocate (3)
+.BR posix_fallocate (3),
+.BR feature_test_macros (7)
 .PP
 See also the
 .I loff_t
-- 
2.28.0

