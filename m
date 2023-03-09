Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF8E6B2C70
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229806AbjCIR6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjCIR6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:41 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C45DD581
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:39 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso1791684wmp.4
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384718;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4awgWCkF5gAwoWIqjJidzAN6eqUFbbC1/ELxOyvdcCE=;
        b=jI9bXxfVOs00LrmS0cB+jTiLan+DFQb24vZyxd+ifPjoXZVUW5VPACCDrntfvquNit
         HA4n85WejubuvRUui4Co4fSfcir6Nuu6buPLUTMH572DbGO3EgS4/W+AzfA4F36+/7Un
         F6ucSOUdygtG2XdLvZu/Gjj0AFS70zn0AFNv6W0yi569PuSDtx5acI7ZOXzviMPfxjVB
         QhYkP3K421wdWMCoq//0rVXP0pnhVUkf5WD8ur0x93Fv62zhxPyw3SL3wqzKnEkWbsVf
         asaxfm6g4Ne+wMhIUiDXwOmbGYcGLUdqeIg26IosAejmEpXHa8GCF+gr0KsRf4yWZUZE
         e88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384718;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4awgWCkF5gAwoWIqjJidzAN6eqUFbbC1/ELxOyvdcCE=;
        b=Z22dQ0Ksmt20qN7iSmMhmOhXpd6fTjrREMyLzIjUaZj4sDWbADf/ae48I5AwN9n8UB
         J4YAXiH25aDBpdh9hqIhfpCvm0ZJxgPYgHWM8vXQCtQDr9SlKmTvOGDM8H6By6A5JdEg
         xn/o+lG0rRScffgAjQoYMosmVUifvZXkeQNQGww/gMdMHrcY3na75o7h6jtW0vpZxD6z
         PnEC2322tKFc4ss3vC+uOpYUBVtm/3LW6pTukWKpIitRW/uCx0QJ6kd/yzyd5wjdG4Cv
         YfSU+5AAaYWj1EmQ2GpW+74tRN13kfVRM+oW2QGLbrClQvFmpGwnS4Z+yW222nYOg8my
         vC/A==
X-Gm-Message-State: AO0yUKU2YwejYw5siwD4p9JKwXfwdrAmAJJYlNTYjJ/wdoSlQq4U1ydd
        ZfWVqA8AevmO/ETETFhqhVYpv65pRZw=
X-Google-Smtp-Source: AK7set9vVu9XFwFB94gqEpfDgPH+TDT1y/4xU1LXzAbgryUYUfaQmUFxd2RnYoNYbCPRlGhq1SUYuA==
X-Received: by 2002:a05:600c:3c9c:b0:3eb:4150:a476 with SMTP id bg28-20020a05600c3c9c00b003eb4150a476mr204867wmb.0.1678384718387;
        Thu, 09 Mar 2023 09:58:38 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:38 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 0/6] Moar granular linting of manual pages
Date:   Thu,  9 Mar 2023 18:58:22 +0100
Message-Id: <20230309175828.136591-1-alx@kernel.org>
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

Hi,

I'm working on getting the linters run by the Debian packaging through
override_dh_atuo_test (and hopefully other distros will do something
similar; and hopefully other projects will be interested, and will also
add some linting to their projects' manual pages, so we have better
manual pages overall, but I know I'm hoping too much with that).

One of the issues was that there are still many warnings in many pages
for most linters, so I wanted to have a large subset that would have
little to no warnings.  The only one that has no warnings at all is
'lint-man-tbl', and then there's 'lint-man-mandoc' which only has
warnings in two (external) pages.

To reduce that issue, and be able to pass more linters to the pages, I'm
splitting the 'lint-man-groff' pipeline into its elements, so I can
hopefully run most of them without warnings.  After this patch, we will
be able to run part of this pipeline in the packaging tests, since they
have no warnings, so we have some more testing.

And as a very nice side effect, we will have a complete set of
intermediate files produced by the pipeline, which allows one to inspect
any step without any manual intervention: just running the
'lint-man-groff' target will produce the entire set of intermediate
files used in the groff(1) pipeline (and also the output of col(1)).

This will help debug groff(1) when a problem arises.

Cheers,

Alex



Alejandro Colomar (6):
  lint-man.mk: make-lint-tbl: ffix
  Makefile, lint-man.mk: lint-man-groff-tbl: Split target from
    lint-man-groff
  Makefile, lint-man.mk: lint-man-groff-eqn: Split target from
    lint-man-groff
  Makefile, lint-man.mk: lint-man-groff-troff: Split target from
    lint-man-groff
  Makefile, lint-man.mk: lint-man-groff-grotty: Split target from
    lint-man-groff
  Makefile, lint-man.mk: lint-man-groff-col, lint-man-groff-grep: Split
    targets from lint-man-groff

 Makefile        |  8 ++++++-
 lib/lint-man.mk | 63 ++++++++++++++++++++++++++++++++++++++++++-------
 2 files changed, 61 insertions(+), 10 deletions(-)

-- 
2.39.2

