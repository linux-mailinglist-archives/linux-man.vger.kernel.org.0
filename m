Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A28B776E04
	for <lists+linux-man@lfdr.de>; Thu, 10 Aug 2023 04:26:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232388AbjHJC0M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Aug 2023 22:26:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232363AbjHJC0L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Aug 2023 22:26:11 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5606F211E
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 19:26:05 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-589878e5b37so6006557b3.2
        for <linux-man@vger.kernel.org>; Wed, 09 Aug 2023 19:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sargun.me; s=google; t=1691634364; x=1692239164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H2UOEOJqohtx273Pd0y9RPFXlELv6FQ71286pNVtQro=;
        b=jku9cIs3sRiA68sR0ka7YgYtVm6HB8VN7ugBdOOxvclGubByw7bKR+Q/2JCiNasxDg
         yghi2e++MFc7W8IYYmvxPuNvxSTpycD416g96j9+BrgaMj2TzQwD+LEXDYZfgYBMAIt5
         3UZsZw9hHNd4Wy0TKVSE6RZfC+lyM1m4FABZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691634364; x=1692239164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H2UOEOJqohtx273Pd0y9RPFXlELv6FQ71286pNVtQro=;
        b=FeSFT1X0Z5nnb/0wTokgALJWjpS5NZVZCpC6FFZ0ovciuNFLPqRdcabUSOB42lvCJC
         lQFYWBYDFsaCNDucn3/W9uKepFYwXG0lhJIub/L0xdSOFfoVxnPEpvETIev3+iAA7gQa
         UXeWW93tUgb4taPDBYT5l7Qgt8C2hwP0A9WpvgEHr2gxXFj1RCJqAg3aWFni5+FJUc+A
         94431v0uFKruEn+9eyyCTQ7iDsufqdA1lZooiqW2wgUtFY3Mka23ju0zZ9xN3s+9pM4y
         NbR6toYXNxhNuTvljEjUtvHI4IRqDvo5jowgRjx7p6Fi6nee+x+EHSarNS+ez2MfTj1b
         UGwA==
X-Gm-Message-State: AOJu0Yy5itCxUvNASjcCcIzbsqXEMlyOINlO5pR7tOG5eiNm06POKGf1
        /39kkbuMKIk+jzUHqEoeJYJoIL0F0sXW99TTCOevEQ==
X-Google-Smtp-Source: AGHT+IHUt9YlBMNv7TqMXl+ZABeHHyzt4bK1UavQWv3PMywFukj24TUSkOrNwiNB7K/KusS2kEzFtQ==
X-Received: by 2002:a0d:c542:0:b0:576:bfc7:1e43 with SMTP id h63-20020a0dc542000000b00576bfc71e43mr976463ywd.25.1691634364217;
        Wed, 09 Aug 2023 19:26:04 -0700 (PDT)
Received: from localhost (fwdproxy-frc-002.fbsv.net. [2a03:2880:21ff:2::face:b00c])
        by smtp.gmail.com with ESMTPSA id k6-20020a0dfa06000000b005732b228a83sm91418ywf.140.2023.08.09.19.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 19:26:03 -0700 (PDT)
From:   Sargun Dhillon <sargun@sargun.me>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
Date:   Wed,  9 Aug 2023 19:26:03 -0700
Message-Id: <20230810022603.947583-1-sargun@sargun.me>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It appears like the documentation is based on out of date information in
regards to using CLONE_NEWPID and CLONE_PARENT together.

For example, in this test program, one can see that it works:

static pid_t sys_clone3(struct clone_args *args)
{
	fflush(stdout);
	fflush(stderr);
	return syscall(__NR_clone3, args, sizeof(*args));
}

int main() {
	struct clone_args args = {
		.flags = CLONE_PARENT | CLONE_NEWPID,
	};
	int ret;

	printf("The main program is running with pid: %d, and ppid: %d\n", getpid(), getppid());
	ret = sys_clone3(&args);
	assert(ret != -1);
	if (ret == 0) {
		printf("This is the child, running with pid: %d, and ppid: %d\n", getpid(), getppid());
		_exit(0);
	}

	return 0;
}

This test program (successfully) outputs:
The main program is running with pid: 648411, and ppid: 648397
This is the child, running with pid: 1, and ppid: 0

Signed-off-by: Sargun Dhillon <sargun@sargun.me>
---
 man2/clone.2 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 4c5b4ac6b..96ad24b95 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -736,9 +736,7 @@ Only a privileged process
 can employ
 .BR CLONE_NEWPID .
 This flag can't be specified in conjunction with
-.B CLONE_THREAD
-or
-.BR CLONE_PARENT .
+.B CLONE_THREAD.
 .TP
 .B CLONE_NEWUSER
 (This flag first became meaningful for
-- 
2.39.3

