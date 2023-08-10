Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2302C776D8C
	for <lists+linux-man@lfdr.de>; Thu, 10 Aug 2023 03:34:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbjHJBeg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Aug 2023 21:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231921AbjHJBeg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Aug 2023 21:34:36 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5707E1BCF
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 18:34:34 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-583b0637c04so5950087b3.1
        for <linux-man@vger.kernel.org>; Wed, 09 Aug 2023 18:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sargun.me; s=google; t=1691631273; x=1692236073;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e/h/l2C9gfPqjn9cKNjCuiMpTSUHZQvLRK3khkc+nk0=;
        b=KQowXKagBRpNfp42G0RFBzUfBySg8PZzWL2peY7H19CqJQB1q7Qszp1ajd93/Zs2Bj
         BBA/jhE+U8fKzGEqhl9yTG2ALa/uQpqAL7MGev/54jX0u/mY1K3gRGaPFh8DlidKYmKl
         sjyIpDFfw2IxLEhsykZEEWTptRcSf/H8chKE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691631273; x=1692236073;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e/h/l2C9gfPqjn9cKNjCuiMpTSUHZQvLRK3khkc+nk0=;
        b=BVXzpAHA2DU5OFW9fBKFveAyKor300jpSF+mFIvtNAUHvqGTlKHXSQeqMA3lQ3WuCl
         4cg5++dkXA2xZsTv52hhcVudgRn0zamvWCegsTAp7WXyPVNs8487K/6r8DyOUU9edJip
         6SmiC16Sk0Xc5ANFoNBCrda4EkaRrsIRDA+1uPEPVuDqCjPBFaxvD6s+2XJgICKZqgab
         5L4TtBWTxFFnFPMALn+GwvEkF5uvKN79JVXDrT4LBl/ZDPtkruhBQQ51f6654UGZwG8y
         VYS+KOcD/DSxLdOmt6I1Ez0wE8S/5V/ohvvX6vIMRb7d09mZGc1QG4BZZTVgCOaXOVGX
         YWFA==
X-Gm-Message-State: AOJu0YxEP5NczPd03Fr5PZI6575cIZrqVcxc64G9aA4UanZtcmIrHzCO
        o6YHTg4f1XQWzRwrmeMPVEUrpy6X+1UI1WnDiK0xzQ==
X-Google-Smtp-Source: AGHT+IE6WQQEbC59Dn7G8FzZltAaArchA+uvJ+d1XURsF+9HSH0c9SzyGeAkn27cU5nTXVr72WmkPQ==
X-Received: by 2002:a0d:e24b:0:b0:57a:8de8:6eef with SMTP id l72-20020a0de24b000000b0057a8de86eefmr722399ywe.24.1691631273017;
        Wed, 09 Aug 2023 18:34:33 -0700 (PDT)
Received: from localhost (fwdproxy-frc-000.fbsv.net. [2a03:2880:21ff::face:b00c])
        by smtp.gmail.com with ESMTPSA id g74-20020a0ddd4d000000b00589a1dc0809sm72276ywe.120.2023.08.09.18.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 18:34:32 -0700 (PDT)
From:   Sargun Dhillon <sargun@sargun.me>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clone.2: Clarify the behaviour of exit_signal with CLONE_PARENT
Date:   Wed,  9 Aug 2023 18:34:32 -0700
Message-Id: <20230810013432.396272-1-sargun@sargun.me>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It's documented under ERRORS that specifying a exit_signal with CLONE_PARENT
is not allowed, but it is not specified how the exit_signal is to be set
(or is set) when using the CLONE_PARENT flag.

Signed-off-by: Sargun Dhillon <sargun@sargun.me>
---
 man2/clone.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 4c5b4ac6b..0b2a60482 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -290,7 +290,13 @@ The termination signal is specified in the low byte of
 .RB ( clone ())
 or in
 .I cl_args.exit_signal
-.RB ( clone3 ()).
+.RB ( clone3 ()),
+unless
+.BR CLONE_PARENT
+flag is set. If the
+.BR CLONE_PARENT
+flag is set, then the exit_signal is copied from the calling process's process
+group leader.
 If this signal is specified as anything other than
 .BR SIGCHLD ,
 then the parent process must specify the
-- 
2.39.3

