Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 074A16E8183
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbjDSSyz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbjDSSyv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:54:51 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2015D44A9
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:50 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f46348728eso7360f8f.3
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681930488; x=1684522488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xQVi3lJE/aR4Ib99y2rm7C243w5YRpQ1SOAepjbYKAI=;
        b=lBoibjP2Sbx3tJsjB3ldyRpEp+cCrQndhjEhEtrBDaUY+FiFIFbk2qKNzCXGR52PMj
         +pq3QlhZ4b9lCLkv2TKKsvYEL3s/FzxMmjXsoJI9/VFr5ybWQbnY3cpFZqxOk8jIW1vd
         wbbQB9fTgLu9SIXhhKDCHUb7D5S/HV3O60JLTYtD+3opuriL/ZBntuw4JW3+E1+fpMtc
         AIVfOvJx1XISmOMUMNsOOlM5N6H6yWLTbRIURNgGIF4FBf2ImlKVG5tMSK2Mkz/8yD9p
         8PCuYQkPRvk7t1PdcbhuSUxUxxXpgh+oWGJVHKc4rKSMuZyDEPAYFGtTl0w9qWUGF2DM
         4Xdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681930488; x=1684522488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQVi3lJE/aR4Ib99y2rm7C243w5YRpQ1SOAepjbYKAI=;
        b=DmPnuornomivMp2N0iGd1Hwt2ZCvvqcFMOMXJjwFpv+HkqD0VWmgEVXSaFbkH9kbMn
         nEkNMPMYt+QoFcDvwnH/URD5Swzy3Ex4nFRCzRHBUpOdu+7BXcdQ/4X5fZYbgjj/Vg/Q
         6cyEyc0dhLLcx5jV1Aye8t25bkYMl4S/f3OCdTu23xWnVsO38pEpmtiTJz8uUGTRc1m0
         9hvoFr678FD5f9wW7YeOa10WFzISSmFhNuHKgg3k1RMeocyGghDO1h4s7P0LiZ7iiYSv
         FHp1OCFvXMf1sDptWII0bslBS0OBdTIUKPrJywiKZpIlsN2to4AU1mg+FB9CAeyEwpIU
         vb8Q==
X-Gm-Message-State: AAQBX9cJKCPg3C21dRM1jtuxzbxVlhnTkt8dwIkZP2edU+z9ula1m8Zh
        7fIKdxXx8XRZHMECRUjPx8E=
X-Google-Smtp-Source: AKy350Y0m7Yz8an5Z6mlhIn076FhZ0qaNK79Gpp38MZR7YWS9zuBsE0pGKD6Gwhkt3zdR5rIFKRgwg==
X-Received: by 2002:adf:f8d1:0:b0:2f7:780e:ee0a with SMTP id f17-20020adff8d1000000b002f7780eee0amr5809274wrq.64.1681930488422;
        Wed, 19 Apr 2023 11:54:48 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id f4-20020a056000128400b002fe13ec49fasm4261528wrx.98.2023.04.19.11.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:54:48 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 0/4] landlock.7: Code example improvements
Date:   Wed, 19 Apr 2023 20:54:39 +0200
Message-Id: <20230419185443.7368-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Various improvements as pointed out by Mickaël Salaün in
https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/

* Checking system call results differently, for consistency
* Use constants for the compatibility table
  (I'm not very attached to the other solution)
* Better wording for error message if Landlock unusable
* Return instead of exit() if Landlock unusable

Regarding the EOPNOTSUPP/ENOTSUP discussion, the consensus seems to be
that EOPNOTSUPP is preferable, because that is the only of the two
error codes that the kernel knows about.

Günther Noack (4):
  landlock.7: Check syscall result with == -1 instead of <= 0
  landlock.7: Use LANDLOCK_* constants for compatibility table
  landlock.7: wfix: Error message wording in code example
  landlock.7: Return instead of exit() if Landlock is unusable

 man7/landlock.7 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)


base-commit: 6693a21cf73c502f2429b4ec07698130a2be9a93
-- 
2.40.0

