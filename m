Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF5DB58CB04
	for <lists+linux-man@lfdr.de>; Mon,  8 Aug 2022 17:06:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234034AbiHHPGj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Aug 2022 11:06:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236158AbiHHPGi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Aug 2022 11:06:38 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0654463B5
        for <linux-man@vger.kernel.org>; Mon,  8 Aug 2022 08:06:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id l22so11241759wrz.7
        for <linux-man@vger.kernel.org>; Mon, 08 Aug 2022 08:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u4653gr+ktJephBRwoYEOGvS9r2j651e1m6LxZ9rCzI=;
        b=dhlD4aM7wGV7Fb2tZoznn+p8aUElQ3S7G3vYk/c1yvuPvFNAnNj0WwGm0xJKVrqkmy
         hl6XIjpQm0E5CC3ZO1vXKSRByaDLV2bV4MWQBS4Adf3A2tWPnPaBgAPr5hBZO3FOCpnY
         yRRC3CnrwnX1oi/XzFlNWSyWIEzOvqDnxdGfGdcnV6O1U2HzbYsXeBgAJuegEtye+765
         ow3W1s78LV4sykFBt6YWtl9Hh47Yp26wjgUK45jQQjHdk01BxtUuarOr7TZGFXdZfNS2
         8sRQ1DMN8vSxzRm3nVHVm7FhyFHlkwKc3pid3Tnkfi4SAFBY+L/qOLj6uXb11otng1yq
         ezIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u4653gr+ktJephBRwoYEOGvS9r2j651e1m6LxZ9rCzI=;
        b=JsAB2+CDnYQ8U+EBYRgpEWq3Gvfqt8FyX5HMLwKvKpvsPyhZSJGfSJH9TUwI53obD6
         E6UjFp7GPP+zsDIMvUrUJx+XfwTvFMTmVLx4r1mKYYtWTj5OmCwL/y7MgAjZ7Jfqx1e6
         t1WyZeTF46h4lIpoldOgljSNuOAeD3pHPTwlGI5tKUlSTU1/a9Z3wk4Z+CMp5pvrteUh
         c5N6LFotdAlBuRwFo473SNmJm2KKx9sdo8CfE5qg19zK8onQwe0+ybX0vLwWOeMIOOq0
         8eEeLyMpATW6navBdvgF34l1LZmUJlqnjPTAZHp+dQTfI6X6mkcXAuULWEGXaxJz1+p9
         wVdg==
X-Gm-Message-State: ACgBeo2WB8dmV76VpKwi7ktO+maTegLMlQa3KBm8Vaf4+wq7grXb4ZZf
        PSBNfwvpcMJBMdSaU1Nmpjgr8Ka+imc=
X-Google-Smtp-Source: AA6agR6QLQzvyv9kk4++3Xg//kSudeX4AQ6rPnOeTN7Hzy3aTrdRXOGqJiKVBG+ZC7Y3a4NybB2BSQ==
X-Received: by 2002:a05:6000:1a4e:b0:220:5e43:9843 with SMTP id t14-20020a0560001a4e00b002205e439843mr11286919wry.566.1659971195405;
        Mon, 08 Aug 2022 08:06:35 -0700 (PDT)
Received: from localhost (internet-185-112-167-58.cznet.cz. [185.112.167.58])
        by smtp.gmail.com with ESMTPSA id x13-20020adfdccd000000b0021d65675583sm11939211wrm.52.2022.08.08.08.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 08:06:34 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] poll.2: tfix
Date:   Mon,  8 Aug 2022 17:07:46 +0200
Message-Id: <20220808150746.2227830-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fixes: 0bdda5d08e82 ("poll.2: Note that poll() equivalent code for ppoll() is not quite equivalent")
Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man2/poll.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index ff22045247f3..d98d94172b08 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -351,7 +351,7 @@ value.
 .B EINVAL
 .RB ( ppoll ())
 The timeout value expressed in
-.I *ip
+.I *tmo_p
 is invalid (negative).
 .TP
 .B ENOMEM
@@ -468,7 +468,7 @@ field in a human-readable form;
 if the file descriptor is readable, reads some data from it,
 and displays that data on standard output; and
 .IP \(bu
-if the file descriptors was not readable,
+if the file descriptor was not readable,
 but some other event occurred (presumably
 .BR POLLHUP ),
 closes the file descriptor.

base-commit: 226cd95d78c24dee169bb96913721221fb8f656a
-- 
2.37.1

