Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E3F76B652E
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 12:03:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjCLLDS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 07:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjCLLDO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 07:03:14 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5FA222CF
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:03:12 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id ay8so866916wmb.1
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678618991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kcDblhdUVX9Z8kZuoqutHE7z4xHm5CshB+AdIxn0vSc=;
        b=quTGcu1QyBo3zNIWyIkQsiT9FhL6UQkV6snGEIe8Nt5UFgEFYcNyyG2xBamX/ifdWD
         JomXr8l6si1xHOBbSMhN4ZtPOl2Rwj8ZtNOccQozNUuBbxi4AxCbVMIQxU1JPP+1s8l2
         BXw77zRXurChv97WR32bj3yZh77m/t9tjyhsVg3xLyDD3THCu4wFX+IB9Od4TcSY79Lb
         x4gGcfJFQql8KMS9KMW05FkaJmhH7E2uu9GBN8jePM11VmfwxdktpXx7kYB8plI/wBT7
         xJ9rpvqxvPho5lEU/lDCa8pJGr9IaKIFt0vrWN9NDGx/gwhEtUQy3l18h4M8TQCNyS2p
         +scw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678618991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kcDblhdUVX9Z8kZuoqutHE7z4xHm5CshB+AdIxn0vSc=;
        b=hutLOGmB4FCaqENPxidfilOg4wS7Y6W6UMTIhwmM+bwCHY8BASUONYwpxGa+Xo1PBV
         PrsaAcUcSB0N9r0W1LtqbzSnJpJI1w9Q64Paxv3W+ZPl94FbgZiSLJ2qWTDHs+UKsfVJ
         tMJNA8cOGLJX2Z1M2rC4R03YDMHynfrYmQswoBY5PNuSQ8veeiXe9ELqGW7CoPcuZHDl
         +dX4S3Qh2iNQhZYfjNP3wsPGc5XYE5kAV7byEjlWjmpO3meEisHLrQXCbFUfScpUxN6V
         U6MVmK6NGo3j2JMHCuzdTYChYE8XXRFrc53wbtaWxTuQYb9cPbKFW5uZHFgMRT+cWChv
         8MuA==
X-Gm-Message-State: AO0yUKXuyrYll3PnuewTCRu9dqEJRL9ui3uxpQMr7Rf1ssjVodQ9HUeM
        LQHbIkSoqBDptHXC2oAega7oIOF90EY=
X-Google-Smtp-Source: AK7set+Mk5TFi2fYOUU0Ddpp9/INVEvejsLXtmclj4rYt0Rm3p7BaU3A2lSm5D/iAI/yqUtno5rPOw==
X-Received: by 2002:a05:600c:45c6:b0:3eb:4cb5:e13 with SMTP id s6-20020a05600c45c600b003eb4cb50e13mr7587419wmo.31.1678618991232;
        Sun, 12 Mar 2023 04:03:11 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id u15-20020a5d514f000000b002c563b124basm4830945wrt.103.2023.03.12.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 04:03:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org,
        Helge Kreutzmann <debian@helgefjell.de>
Subject: [PATCH] man7/: ffix
Date:   Sun, 12 Mar 2023 12:02:04 +0100
Message-Id: <20230312110203.3898-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden,

Should I apply this patch?  I'm not sure if the variable part should be
bold because it's part of a heading or roman because it's variable part
within italics.  How would you format it?

Thanks,

Alex


 man7/time_namespaces.7 | 2 +-
 man7/user_namespaces.7 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index 708099934..8c31b5f95 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -56,7 +56,7 @@ .SH DESCRIPTION
 .BR setns (2)
 in order to move into the namespace.)
 .\"
-.SS /proc/\fIpid\fP/timens_offsets
+.SS \fI/proc/\fPpid\fI/timens_offsets\fP
 Associated with each time namespace are offsets,
 expressed with respect to the initial time namespace,
 that define the values of the monotonic and
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 6647b02bf..737dd54ad 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -739,7 +739,7 @@ .SS Interaction with system calls that change process UIDs or GIDs
 .\"
 .\" ============================================================
 .\"
-.SS The /proc/\fIpid\fP/setgroups file
+.SS The \fI/proc/\fPpid\fI/setgroups\fP file
 .\"
 .\" commit 9cc46516ddf497ea16e8d7cb986ae03a0f6b92f8
 .\" commit 66d2f338ee4c449396b6f99f5e75cd18eb6df272
-- 
2.39.2

