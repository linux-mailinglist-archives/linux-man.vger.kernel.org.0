Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F07497500E2
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 10:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232126AbjGLIMe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jul 2023 04:12:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjGLIMe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jul 2023 04:12:34 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378351981
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 01:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689149503;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=LUMInxN68BJidtKaidz4KkWCv3tuCNo0Ln3YVNmCSZw=;
        b=QrBjBBGAO042LFCWc91YD7itKbG0SaJUCM+2v6J8EvYMFh21UYcG/W2wukW0cpuIuOLzLt
        lJcA4Bnm6HcmVDui8ADHz/hpUazSoinHbCnlcVlG5l6IFjZyvpmG3g8Qr19SsctVJiea0p
        uihg8FxLXEpT8x9fKp/7X8q5Ip9BNF8=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-g9xolaCQNi6hU0kJdXZ7eg-1; Wed, 12 Jul 2023 04:11:39 -0400
X-MC-Unique: g9xolaCQNi6hU0kJdXZ7eg-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-403ab5a9a83so35755801cf.1
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 01:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689149499; x=1691741499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LUMInxN68BJidtKaidz4KkWCv3tuCNo0Ln3YVNmCSZw=;
        b=Aia/mQp5/XYYmO2AzpjtKTD1Hfl4g0IXzfPCeJ5i8+B2wrIzOAPL33Z9IZ3Wy8LafN
         zzgkRZbr0oLFY9ILgU5NNaqT3CfnK2BRVdDNqfY4CK5Lse/HR86Q3xgm/IGdqqUiBoDI
         NPysNM0sClgex+CWPL7l0bs4+GeBbWMbbB13sJMrNXydwA24jyFg+bDZTBVHF0k0ZIVB
         bzj3BgYvo96WVQZul8wsK0aZHEj4EJplROlqwlXFB9VADTBu+TOgRnmE2dTeHCcA5tcx
         j45l64jEtTeP+k7+pPdbTzhu+YrOLGISA+sw7VmHlEvsBdj1cQ7Ti28e7kAgeWJ5WuWX
         6trw==
X-Gm-Message-State: ABy/qLaLrZ4Rk2gc1Jd7QgUw3sTS+iqBxQoMcAQ8cQe3WfAVm1/EgNF0
        07j2yU5fZ7PUFL8YJ7IBxekDyX5YOuvEngrcmbhZDXCNTQt/oxpy9udWaPUwblFwYx6YZgSMrUQ
        7MSuXpkCwp6da4PDr8VxTDPXOBSDH
X-Received: by 2002:ac8:7fcc:0:b0:403:ad13:223a with SMTP id b12-20020ac87fcc000000b00403ad13223amr12138997qtk.8.1689149499316;
        Wed, 12 Jul 2023 01:11:39 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGBAxEmCvTMGH2fNLB80F5tonuMMFkUZ1Aa41fWbiGMPN1sqxQ6+Zb/Hi7gUDctn41dPNlhPw==
X-Received: by 2002:ac8:7fcc:0:b0:403:ad13:223a with SMTP id b12-20020ac87fcc000000b00403ad13223amr12138981qtk.8.1689149499133;
        Wed, 12 Jul 2023 01:11:39 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id r18-20020ac87ef2000000b003ef189ffa82sm2030882qtc.90.2023.07.12.01.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 01:11:38 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH v3] abort: clarify consequences of calling abort
Date:   Wed, 12 Jul 2023 10:11:36 +0200
Message-ID: <c4d5acae26ab43479e269a5a2f5b8e263a483a91.1689149490.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that atexit/on_exit are not called because those are called only
on normal process termination (as documented on their respective manual
pages).

Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man3/abort.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index c63eace5e..8e1554eae 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -47,6 +47,10 @@ function will still terminate the process.
 It does this by restoring the default disposition for
 .B SIGABRT
 and then raising the signal for a second time.
+.PP
+As with other cases of abnormal termination the functions registered with
+.BR atexit "(3) and " on_exit (3)
+are not called.
 .SH RETURN VALUE
 The
 .BR abort ()
-- 
2.41.0

