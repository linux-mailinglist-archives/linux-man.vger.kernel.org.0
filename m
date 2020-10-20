Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6466F293E97
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408043AbgJTOXq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:46 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3CCEC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:45 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n15so2409436wrq.2
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BqmXmbKrXg1DH/KrgyTuNS8q1K3WnyQKkzpPuJBr/pA=;
        b=mq0hWne21/+n11EMeSd09xqyuA1x5WwU3cFC8RynBgbFch5aNnW3tK9DH2THxU/dFH
         vFJOh1TQb8DxIKyVt4CAkZsR/ENROB5CpMGk5s2QNDEzwK0/dHLWKGjwUr+rsyNQMOYq
         YsOv8orDUIQmBBnZxspYsDwW0+wbZ7hX/HlRH/uLpVC8iDxWKtrBtR2V22qcUpvUtoO1
         zZZ4ODxLdRVQfqvP4+tKMRpw66cS7SACwG0nJLKynmAeu1+ahf0XtK05p9DN09gRhrHQ
         ETnmj8PAOAK+Udnnro5PnMRkmGl/vHrY3+aAofOLBmOuLWjvxkMSDO4gbn44tHCebU3n
         wqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BqmXmbKrXg1DH/KrgyTuNS8q1K3WnyQKkzpPuJBr/pA=;
        b=Yx+bpXnHMZ6KB7s9LxSmd5V0pIP2OT4fyJskrLPT3Be1h/6sDLSRjm+gacdVKlkPOL
         H4iXe6ylN4Ql/+LGzzgktCggcbp1aojtvu0rvrx804FyYRdjQ+A6GaEJ9aC6L4YvEPcz
         ZkO52mQ418xTriewr/2OwHXzKf+2PC+ELAG3u2BjDZtIBSGHHumOqW32ybn767v19uoA
         t2dUXPCEtDZ/RoogoZ46iF6munZ+kDaEuTP+WOIaq6QixkEnHfXTV/UzgZpnaLhmnnCi
         /SIMFO0Toefj0+b8Dz36UG4YCrsTGO5Wx8JnUjjaV2uIf3oH22SuSH8ccViC6Efw5nMb
         NMmQ==
X-Gm-Message-State: AOAM532PCBeUNRND1b8PsEwSeIrTRgUgAIP7Q0pp4fJ7MM+vzHj/FAX6
        92WNcFws4SwJUqOo/vBsLgZ/usslfYE=
X-Google-Smtp-Source: ABdhPJxS0wVAU5kxhUejvsqV3OdYhGP4VDXSwxFUsipovZAbeYi1WxxAFaMPJy1UohTVuS+I2mxaiw==
X-Received: by 2002:a5d:6407:: with SMTP id z7mr4059173wru.271.1603203824472;
        Tue, 20 Oct 2020 07:23:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 22/22] list.3: RETURN VALUE: Add details about the return value of those macros that "return" a value
Date:   Tue, 20 Oct 2020 16:21:47 +0200
Message-Id: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index 4aec14cc8..8233c3b3e 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -256,6 +256,20 @@ from the list.
 .\" and
 .\" .IR head2 .
 .SH RETURN VALUE
+.BR LIST_EMPTY ()
+returns non-zero if the list is empty,
+and zero if the list contains at least one entry.
+.PP
+.BR LIST_FIRST (),
+and
+.BR LIST_NEXT ()
+return a pointer to the first or next
+.I LIST_ENTRY
+structre, respectively.
+.PP
+.BR LIST_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the list
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
-- 
2.28.0

