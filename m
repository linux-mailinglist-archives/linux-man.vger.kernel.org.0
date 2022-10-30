Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85C37612C82
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 20:56:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiJ3T4Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 15:56:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiJ3T4Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 15:56:24 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B377677
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 12:56:18 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id j15so13381741wrq.3
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 12:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UcB3i9BUIrAjXnXxDEnbwqGAFClZ19cdbfqUSjYizIE=;
        b=jxFUBW7oAHTAuWftHXueAGm5xokgqynpZWSXWr7o0/QLk8X3lmGcYuILRYObBbSGCV
         iJZEXl+4BvrTmiIYPEdz331DrwqsylTRuEPo3Y38R4opDEe3kxm5btqD0nJfJp9FGrXI
         YGa1h47TM9XMI5iSBNFQUZ/JRfvTXW8+cgW8kkcN3/m2/eaFSAEcs9ryBLkM/4UcTr/d
         /JGVFv03rIAJBb/BxoIOBv5XEBxZTuBxqK/Nf5fmxPzCunx0f7TRUy+ySGFVkQSlfx30
         cYWJhvym7/npId9H15VatfCBnAtcWpYiWIzcolqZsJ9U+wCcE2Fj69+IrKNq7Fvu1aDJ
         jEyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UcB3i9BUIrAjXnXxDEnbwqGAFClZ19cdbfqUSjYizIE=;
        b=7JwX+/lK8J4+wLiZ/wCXWzPlYJRUJXUL1ZcJBj6v7lH/YnCupuh8MH3C0Uw+u/88qU
         NYfFxi6QWyUkzQQ+eh9oHlqQbmPbdOeVL+MnOl0xaEpKrzkk/rzntwtNu/+Yq9IXzx+t
         FoRTHY3p67RIisgLE/Ku8AKsVjSZY9wcNcCtI+YDcEkVic+3S6tqwAydB9zA05impxZW
         NJwhkUBPrrLuA+CpcXfYyct+jmf9E4p4r8LtLfpsngw4fq9AGCHelsYqTfAetWiTU6CI
         dyjr2GRNYXBdovTm+SzdT10GSxrHiFqstD2QW3VOgXdxzWSCSrNNcvb4trecdAi3rmdu
         qrTA==
X-Gm-Message-State: ACrzQf0dfzgOvoNzemfeGwTjVLyT3BQ6wcMf7zPu/BNRkxDjgEmCSBNf
        eKHNzKD4VkQslq+4HrmSH/mCLawwA7A=
X-Google-Smtp-Source: AMsMyM605jUTcbK1VvbsvrLW3O0Zbx8Qo2/qBnyLL+QplBThqbpkkojgBXEfokfDMpIdxtEYmb1CEw==
X-Received: by 2002:adf:dd88:0:b0:236:57e3:fc86 with SMTP id x8-20020adfdd88000000b0023657e3fc86mr5682917wrl.493.1667159776952;
        Sun, 30 Oct 2022 12:56:16 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id bg14-20020a05600c3c8e00b003b497138093sm5398141wmb.47.2022.10.30.12.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 12:56:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Ingo Schwarze <schwarze@openbsd.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 2/3] Various pages: Use correct letter case in page titles (TH)
Date:   Sun, 30 Oct 2022 20:51:08 +0100
Message-Id: <20221030195108.548959-2-alx@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221030181651.98670-1-alx@kernel.org>
References: <20221030181651.98670-1-alx@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4924; i=alx@kernel.org; h=from:subject; bh=04cMUJcYa6r5rmje4l6VmbPkD2x95NqWSIeN1QZp5PI=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjXtWpFqJ387ihd6DVIj2/d8sal08IcV+DbEQYvXfz 9IZev3WJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY17VqQAKCRCejBr7vv/bMsv6D/ 9YIJ0BTxcTm8KDlLDxqtI/HwU4YN4CBDsCDPlFEqmqewG9BAzwhlVHMLLYVrwQICLJZhSJUFiAwaQf WgvkRHhQK6X6iIWTCb9dwQq4+9CnN9IR8rBtw42Njn96i8eGguNleiTXDng7XiJ00GqVfnrl5B8q80 g9uVa9Lw1Ye4f5CK8ocHeJokpk/mUmccBmaIYfTK32ZlCiko5Tx5KufImYMFlbF6z/x+xsp7ln4nm4 lEGClgEEBulHSDbsoB5hM53toJIdPif5l2RZYWfeAXWEDsnTQgxuXdHLvTfCoSK6LXD+2/PSBKH+IF pDYyuXtqRveMK6zR/PvzHsY21u6+IM6ZI6I2uw4X7ejYkzWTyfJlRutT2rMIGyI92rEGi75gvcSZpD Z37ZsaiZJ8sNBegDLJrfnYByfJZHcN1eXBrholYi9388xYtd6rJ8gVttRBPegf69pmREdcpZ5hSA6T ZDsC6OjbKKINTk+EMM6ycVsZPxtyphCDOs+Uxr9UUQvGONdUeWE3J95dKPY8eD+oq9tBwRHqUX56x8 fI9BywTAzEAgR9l3dUxrZmHOKz74v8AtFMw7RnfAj0hMa1nnzjbko5EKRio/UBQkHo1uBaqDImImJo z5J7mm3l2J5dGLCthcZbCRilJPBEiBGVpp2eYspv6PApGI/053/XQAt7LQjA==
X-Developer-Key: i=alx@kernel.org; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
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

Semi-scripted change:

$ find man* -type f \
  | xargs grep -L '\.so' \
  | while read f; do
      P=$(basename $f);
      T=$(grep '\.TH ' $f | cut -f2,3 -d' ' | sed 's/ /./');
      p=$(echo $P | tr '[:upper:]' '[:lower:]');
      t=$(echo $T | tr '[:upper:]' '[:lower:]');
      Tn=$(echo $T | sed 's/\.[^.]\+$//')
      Pn=$(echo $P | sed 's/\.[^.]\+$//')

      N=$(man_section $f NAME \
      | sed -n '/NAME/,/ - /p' \
      | sed 's/ - .*//' \
      | grep -v '^NAME$' \
      | tr ', ' '\n' \
      | grep -i "^$Pn$" \
      | head -n1)

      test $P = $T \
      && test -n $N \
      && continue;

      if test "x$p" != "x$t"; then
          echo 1 $P $T $N;
      elif test -z "$N"; then
          sed -i "/\.TH /s/$Tn/$Pn/" $f;
      fi;
  done;

Most of the changes produced by this script needed to be reverted,
but the some of them were good.

Cc: Ingo Schwarze <schwarze@openbsd.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man7/man-pages.7            | 2 +-
 man7/persistent-keyring.7   | 2 +-
 man7/process-keyring.7      | 2 +-
 man7/session-keyring.7      | 2 +-
 man7/signal-safety.7        | 2 +-
 man7/thread-keyring.7       | 2 +-
 man7/user-keyring.7         | 2 +-
 man7/user-session-keyring.7 | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 03b0e6c15..73c0522d1 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -7,7 +7,7 @@
 .\" 2007-05-30 created by mtk, using text from old man.7 plus
 .\" rewrites and additional text.
 .\"
-.TH MAN-PAGES 7 (date) "Linux man-pages (unreleased)"
+.TH man-pages 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 man-pages \- conventions for writing Linux man pages
 .SH SYNOPSIS
diff --git a/man7/persistent-keyring.7 b/man7/persistent-keyring.7
index a93c9d84f..2a7fe49c2 100644
--- a/man7/persistent-keyring.7
+++ b/man7/persistent-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH PERSISTENT-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH persistent-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 persistent-keyring \- per-user persistent keyring
 .SH DESCRIPTION
diff --git a/man7/process-keyring.7 b/man7/process-keyring.7
index ec6fbc8f1..864b05bcd 100644
--- a/man7/process-keyring.7
+++ b/man7/process-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH PROCESS-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH process-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 process-keyring \- per-process shared keyring
 .SH DESCRIPTION
diff --git a/man7/session-keyring.7 b/man7/session-keyring.7
index 1921ce8ab..cece09fa4 100644
--- a/man7/session-keyring.7
+++ b/man7/session-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH SESSION-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH session-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 session-keyring \- session shared process keyring
 .SH DESCRIPTION
diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
index b6a563b91..8833dbc3e 100644
--- a/man7/signal-safety.7
+++ b/man7/signal-safety.7
@@ -2,7 +2,7 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.TH SIGNAL-SAFETY 7 (date) "Linux man-pages (unreleased)"
+.TH signal-safety 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 signal-safety \- async-signal-safe functions
 .SH DESCRIPTION
diff --git a/man7/thread-keyring.7 b/man7/thread-keyring.7
index c093b8fed..b47f68243 100644
--- a/man7/thread-keyring.7
+++ b/man7/thread-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH THREAD-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH thread-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 thread-keyring \- per-thread keyring
 .SH DESCRIPTION
diff --git a/man7/user-keyring.7 b/man7/user-keyring.7
index 4634f5570..a6e29c9db 100644
--- a/man7/user-keyring.7
+++ b/man7/user-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH USER-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH user-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 user-keyring \- per-user keyring
 .SH DESCRIPTION
diff --git a/man7/user-session-keyring.7 b/man7/user-session-keyring.7
index 009c404aa..bd0ba3d23 100644
--- a/man7/user-session-keyring.7
+++ b/man7/user-session-keyring.7
@@ -3,7 +3,7 @@
 .\"
 .\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.TH USER-SESSION-KEYRING 7 (date) "Linux man-pages (unreleased)"
+.TH user-session-keyring 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 user-session-keyring \- per-user default session keyring
 .SH DESCRIPTION
-- 
2.37.2

