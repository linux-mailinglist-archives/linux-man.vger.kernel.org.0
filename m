Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5E163551A8
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236271AbhDFLPH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:15:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231347AbhDFLPG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:15:06 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16BACC06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:14:57 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id a76so3960376wme.0
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fa8CzNOQabFqkuWBFxJqduxblvQKIjFQuvNcyEyu9pA=;
        b=X7KICwjY1mviXvifGBbNoEDUUQuPBJs2xUxye7CyaqiWWlg18XGWHDlmidZhq/amA1
         RfPWZ0nE13vP9ZLL0iM1K1x6xwsdlaoM0HAGDUhMGG9RRkFd5jAPCOQoN7wIPMMl+0qg
         O2FGGXeuXK4QJypQtvw5xHg6gcIviVjpJswHG2OAdDz5zbIQK12/yW0Cl4ASD3vxdI0l
         hIq8A8Z619EJ/hagPMWqOkTndUhxXlCNgzWD9dCMP+tumWpM3JRDkwyjhrKCzy9czEiz
         WIVhzftzGml6wNprqL4v68v9GutR8GIwsfiJph9VjHdtWKnw9wKP9/VanPOvylXt7CBn
         hOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fa8CzNOQabFqkuWBFxJqduxblvQKIjFQuvNcyEyu9pA=;
        b=Z517U0ZvmJoM7+vMEDXo7dSeUXtCVBNtBAJLj5G8W8DkK/sYUVOllcCtlvkGDJWmyA
         qeBTbXWRbpQpJJEuhw+e9/lRHfJB+HEm6EDX5vNvkIajKeC0K/ZY7EDbavja6+7Bb4Ma
         0GU1WF1a4ZNSQKvfbVUrroN0D3PZozGNXVUIZRqdpKSsnDFY/TQ/LrAu3/C295n5tgYX
         4osJRAU7C5fC8fTVWegNIxBGmQrWmz1eoJ6MQ6mAbYg1eHGRwhEOuYWB0tlYc5osXw3p
         XM5FIg87CwG/fABOS9jCVkHCAh12dUe02DI2/Xk2HHvSMVcw685IGdZUNqtIwt4RxDjH
         mvEw==
X-Gm-Message-State: AOAM53048TEtsH6baSkpZ5o8mCJkXMDtjrp/bUwJ5OylXD2aFw09/imI
        KOvsWeVpGrXgW633WHAggI7AGtDs7S0=
X-Google-Smtp-Source: ABdhPJzX1QYsE+HTqKlu9weoJguzja5LWYcoD8exIZigkK7ByMU9lCYQt3RxoCUuUiD29LPueI/rJQ==
X-Received: by 2002:a1c:f715:: with SMTP id v21mr3681240wmh.187.1617707695823;
        Tue, 06 Apr 2021 04:14:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id r11sm16552920wrp.70.2021.04.06.04.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:14:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v4 0/3] Use standard features in the Makefile
Date:   Tue,  6 Apr 2021 13:14:46 +0200
Message-Id: <20210406111448.20392-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210328190601.68165-1-alx.manpages@gmail.com>
References: <20210328190601.68165-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v4:
	- .gitignore: ignore everything new by default,
	  instead of ignoring specific things.

Alejandro Colomar (3):
  Makefile: Use standard features (IMPORTANT: default prefix changed)
  Makefile: Fix bug when running in parallel
  .gitignore: Add file

 .gitignore |   8 ++++
 Makefile   | 116 ++++++++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 100 insertions(+), 24 deletions(-)
 create mode 100644 .gitignore

-- 
2.31.0

