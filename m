Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD6597B6D6B
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 17:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjJCPu0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 11:50:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbjJCPuZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 11:50:25 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07547A6
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 08:50:22 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4065dea9a33so10669865e9.3
        for <linux-man@vger.kernel.org>; Tue, 03 Oct 2023 08:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696348220; x=1696953020; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nfUwtjkeJkHiHt1gLCIJzPjSEVEqS8IXDRYMe3RZzfQ=;
        b=j26bnG+Kbrqt46IMR3MXzGQvegPUqGewjJyuZLSm4EbhVzITqEZaULX5rsIvx5t8nt
         Rkb20cjOSAHP6QBRa57Vn/1i540fzldRynV4pvZxfXAWwdp8kc0E57T4/9WksV0DQJTB
         6239IeHse1Pzt0WYZFi0lCeoRIAZsaaMb62Ro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696348220; x=1696953020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nfUwtjkeJkHiHt1gLCIJzPjSEVEqS8IXDRYMe3RZzfQ=;
        b=nDngdI727fAVDy8YTFZFHFlVXPoanBBfMHTfoWmjafXuNjWX1hRgKctsAeKfHHJhmI
         t4Jql+lDx/6UpPJxxpqgvIu4RWwof47dPcxxqM+uzoVllEpiV+OBFnNbloiQvRtNNrV0
         HJSwPPyc/suMNwqQpRAIZKnX00pcEbSlX2w6UlCkH9aG15990S3lp0UNHajLkcQu/83p
         VUPni3PUYm9S40vWwP+hEM0k6lj5bO3NJszHnAX7npq9JQ7mP7TB0MwKgzXmO2xXJ9EZ
         zWX49TXTZej56dPrILodd8vvahQ26T8HUE/NQBPZd+67mfRfDk+XeZox06/VJYa/3kh4
         oFJQ==
X-Gm-Message-State: AOJu0YxK+US3MfUpAJG/uPE9M9akSyM8eO726fFX5gCHF3xt2uOlKWiv
        k+ke6LkifeieJny8/JIohhHMuvoWIwY4Ux45l5M=
X-Google-Smtp-Source: AGHT+IGdRcd3LGVlf/EEYC7WYX5JSwCgU9bwCOp88KkYvDVIJWFo/ssF2if4AUeXf6YIPfsxAdXZ0w==
X-Received: by 2002:a7b:cc15:0:b0:406:44d2:8431 with SMTP id f21-20020a7bcc15000000b0040644d28431mr14284494wmh.6.1696348220196;
        Tue, 03 Oct 2023 08:50:20 -0700 (PDT)
Received: from revest.zrh.corp.google.com ([2a00:79e0:9d:6:242c:e6ac:e9e5:221b])
        by smtp.gmail.com with ESMTPSA id n9-20020a7bc5c9000000b003fbe791a0e8sm1604374wmk.0.2023.10.03.08.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 08:50:19 -0700 (PDT)
From:   Florent Revest <revest@chromium.org>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org,
        catalin.marinas@arm.com, Florent Revest <revest@chromium.org>
Subject: [PATCH] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Date:   Tue,  3 Oct 2023 17:50:10 +0200
Message-ID: <20231003155010.3651349-1-revest@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Memory-Deny-Write-Execute is a W^X process control originally introduced
by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.

Signed-off-by: Florent Revest <revest@chromium.org>
---
 man2/prctl.2 | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index d845b0905..67e6e2ff0 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2041,6 +2041,33 @@ the copy will be truncated.
 Return (as the function result)
 the full length of the auxiliary vector.
 \fIarg4\fP and \fIarg5\fP must be 0.
+.TP
+.BR PR_SET_MDWE " (since Linux 6.3)"
+.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
+Set the process' Memory-Deny-Write-Execute protection mask.
+.IR arg2
+must be a bitmask of:
+.RS
+.\"
+.TP
+.B PR_MDWE_REFUSE_EXEC_GAIN
+New memory mapping protections can't be writable and executable. Non-executable
+mappings can't become executable.
+.TP
+.B PR_MDWE_NO_INHERIT " (since Linux 6.6)"
+.\" commit 2a87e5520554034e8c423479740f95bea4a086a0
+Do not propagate MDWE protection to child processes on
+.BR fork (2).
+.TP
+Once protection bits are set, they can not be changed.
+.RE
+.TP
+.BR PR_GET_MDWE " (since Linux 6.3)"
+.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
+Return (as the function result) the Memory-Deny-Write-Execute protection mask.
+(See
+.B PR_SET_MDWE
+for information on the protection mask bits.)
 .SH RETURN VALUE
 On success,
 .BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
-- 
2.42.0.582.g8ccd20d70d-goog

