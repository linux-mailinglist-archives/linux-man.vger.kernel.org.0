Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9288E56229A
	for <lists+linux-man@lfdr.de>; Thu, 30 Jun 2022 21:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232653AbiF3TGU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jun 2022 15:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236719AbiF3TGT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jun 2022 15:06:19 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B92E63F880
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:17 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k7so4177975wrc.12
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 12:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yp9AncGJgXtCcbBTuEEa/XU5M/9Q7wme01CcaLIQ1Jk=;
        b=E+wK/+K6J/BKTqwiryMHRpIzUxU502R4lVqqiMABLq3Brq07mhfAV/NMAY8ylbhHmM
         iFqqmItdoJ8RE17S7a46YWfuvzoi6UQG8mNVEbazTcIOs9K8f5GzJZ+mrJFEmc//agrF
         F5d/U7zmZ+LgHmLGZekuB+4uzDOvSjE89YpQcDt+NlL86H/Ik8xJdAE2sZzIBnT8Tk2n
         BcstVC8z+0rEcBv4fxc64CvR2LHdrmql8OXxP9yPuBdExQffScMEUbkJdy9YDf3zMr48
         LGh0v4QkB8LCOPK5TW29wL1y+q1f2NTT4cqyZjWazEV6G0v9MLI1befkjlruTCVuZUs3
         R9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yp9AncGJgXtCcbBTuEEa/XU5M/9Q7wme01CcaLIQ1Jk=;
        b=yESBho39Q+TBV3LDvY3bxBBbTuBxbINX7JV4aFQTzAYkfRRbsJ8j9UW4aONX4oyeEe
         ccgNSzTnStiOx9e5AhLao5GWiO1AdHiBTzOBGspEuW5HLzs0UqmENcKiFS69nb/Mjzzp
         5yWrG9/ayPJouU0jx6SVgQ66pUpmQ/Rdx36GRkOZM/z7oNfjORe+FlMqeEEr1mkpjluW
         Z916YLdFz1DmFSsGPshr+TKx8ehvydKeuXZfBHsmOmgnFkJ3VvXe+IX6IVdOf0p7lq7E
         Glp0AiJAF99fewk1CrZAEVDtaFLU88pyIjSqfherZVJh79nlPCocF0ey178bvbWXjEEG
         gTVQ==
X-Gm-Message-State: AJIora9s0/iku4vGBjacaGZM9rW0kWp1QSe7MTcQc4gsK7SNRfqWEg/n
        cRmyBuo9+RhNIuML/MOFyOs=
X-Google-Smtp-Source: AGRyM1tLljg9JuVrG6Sx6cfss1eRKUHyq+ThzuQzO2SVMqYFWsCHqlQHpeL0ZyVL6JDhPAi3fELjWw==
X-Received: by 2002:a05:6000:15c6:b0:21b:ccda:fc69 with SMTP id y6-20020a05600015c600b0021bccdafc69mr9978368wry.411.1656615976254;
        Thu, 30 Jun 2022 12:06:16 -0700 (PDT)
Received: from localhost.localdomain ([5.29.8.191])
        by smtp.gmail.com with ESMTPSA id z21-20020a1c4c15000000b0039c871d3191sm7825220wmf.3.2022.06.30.12.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 12:06:15 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v3 0/2] fanotify man page updates for v5.17
Date:   Thu, 30 Jun 2022 22:06:08 +0300
Message-Id: <20220630190610.3043428-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

Hi Alex,

These two complementary APIs, FAN_REPORT_TARGET_FID (fanotify_init)
and FAN_RENAME (fanotify_mark) were merged to kernel v5.17.

Note that we used the fact that this is new API to fix a glitch that
exists in the old APIs - it is possble to request CREATE/DELETE/MOVE
events and flags FAN_ONDIR/FAN_EVENT_ON_CHILD for a non-directrory,
but those events and flags are only relevant for directories.

When the new APIs are used, ENOTDIR will be returned in such cases
and this change is reflected in the man pages updates.

The ENOTDIR error was added by later commits, one of them just merged
to mainline, which are also mentioned in the commit message of the
first patch.

Both Jan and Matthew re-reviewed the changes to the ENOTDIR section.

Thanks,
Amir,

Changes since v2:
- Rearrange ENOTDIR errors section
- Add more cases of ENOTDIR following fix patch

Amir Goldstein (2):
  fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
  fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME

 man2/fanotify_init.2 | 55 ++++++++++++++++++++++++++++++++++++++++----
 man2/fanotify_mark.2 | 41 +++++++++++++++++++++++++++++++++
 man7/fanotify.7      | 31 ++++++++++++++-----------
 3 files changed, 109 insertions(+), 18 deletions(-)

-- 
2.25.1

