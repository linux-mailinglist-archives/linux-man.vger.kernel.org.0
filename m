Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9E668711E
	for <lists+linux-man@lfdr.de>; Wed,  1 Feb 2023 23:42:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbjBAWmw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Feb 2023 17:42:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjBAWmv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Feb 2023 17:42:51 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E86522A982
        for <linux-man@vger.kernel.org>; Wed,  1 Feb 2023 14:42:50 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id ud5so950359ejc.4
        for <linux-man@vger.kernel.org>; Wed, 01 Feb 2023 14:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bk2k4OEervWIm/JG4sDUZJfadmiBQkYei0YR7xU2Ds4=;
        b=LsPxOuRDOrMaF+g/22ewDDtBWdq620CZ5DjrEMzSYn9Q04msOoBrtyfUxg5vC58z6N
         yr/qhjxuhgUT03CYqxTQ3kRR2YrCKb+XiGOQSvXLqrwcMqjrIh57wK3CQ2QzOPonj0cw
         hqKRb98/g1OD8krEye5Flwq889M5PH+JAvP1EEztQZLrnHJEc3xw6Hy2M0y8sv3XQOHT
         0k5I7Dc1Hp1OyADSFNI9tq0SE6nqdwStfHbWvXjZ7o+BwVRHCIdzCob1DLKyF2DyCF4I
         whk/gVUsAwv/e3M9hFpxZ1gpSzllYjPD+znpTevXnHrynj3QSgGXAy4nnGhtAS6hUzm/
         yE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bk2k4OEervWIm/JG4sDUZJfadmiBQkYei0YR7xU2Ds4=;
        b=TU5Kg6wS8nLdJwsHJRKM3OtvV6tWVRm+khCqDBrT0iPnyzL8RxGCq4OgQD65OcE+cl
         ts4VHoYT10E4afO5JYImHvXAaS4U/Z1suFnKFTjAbhYxLg6RvnLmt8G6BklmM2FfsrZq
         25fGBNjy3oC63oZllDZgPuQtViqR9TqsR/9bQirUbPi5muHjHeiHWjoo+5ZipZF2pyoY
         K1w/EhrkAOYUQtez5fMmDoh90vKZagKBmYBxEQxLBzspyTGtKAZkfKQ2W9zbIdu5TCzc
         bX6pNfqNaeufxk+qQ2Az+lyCju2/3pvRlJhiidXHix2YcyobTFACZ2x2GU9BQppOuo4V
         YjQQ==
X-Gm-Message-State: AO0yUKVdWmnUm7cRdg5B109ltrbZXS3Ickr/pCDuZS1rBzzWCXQtce0y
        TiWHrH0fkmAh7eUv9383XGngI24nBwc=
X-Google-Smtp-Source: AK7set/ucJzxHQDQMCtXXWePvwHCscci8DJOWWLwxuSBslrLUvM5lPLwfIvPmDwPRR6aPJAjCYKvDQ==
X-Received: by 2002:a17:906:135a:b0:881:d1ad:1640 with SMTP id x26-20020a170906135a00b00881d1ad1640mr4190509ejb.57.1675291369275;
        Wed, 01 Feb 2023 14:42:49 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id j6-20020a170906474600b0088ba2de323csm3599379ejs.181.2023.02.01.14.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 14:42:48 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 2/2] landlock.7: tfix
Date:   Wed,  1 Feb 2023 23:42:24 +0100
Message-Id: <20230201224224.16378-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230201224224.16378-1-gnoack3000@gmail.com>
References: <20230201224224.16378-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 84e422f3c..2b9c2f957 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -221,7 +221,7 @@ We first need to create the ruleset that will contain our rules.
 For this example,
 the ruleset will contain rules that only allow read actions,
 but write actions will be denied.
-The ruleset then needs to handle both of these kind of actions.
+The ruleset then needs to handle both of these kinds of actions.
 See below for the description of filesystem actions.
 .PP
 .in +4n
-- 
2.39.1

