Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12126357E89
	for <lists+linux-man@lfdr.de>; Thu,  8 Apr 2021 10:57:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhDHI5v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Apr 2021 04:57:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbhDHI5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Apr 2021 04:57:51 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B683EC061760
        for <linux-man@vger.kernel.org>; Thu,  8 Apr 2021 01:57:39 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q26so1237425wrz.9
        for <linux-man@vger.kernel.org>; Thu, 08 Apr 2021 01:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=waMzWN38rkM+Tnx2HgKuC4I8QWJthO47FCF9FrjMFHQ=;
        b=QboBqvUOVzzs7SnZsALoHuCkUvikhyEJJEUSMo8O7KiSDABxdL0DdTRMGX4O/b6ChR
         +boWtGoJmDuELyYFKzWRe37ENWUfIdbWyldkl/wGQOKDa3t4xbVSEK5rVkV63TXHYJBV
         d4Z83Kf3Ip3bpKC2EzUddQqSpULSBNkoEg4qPcmIUWi92Bx8AzsT6BHVIKuSURw6/cx7
         fbMSjlp6qdBsUfISt/ELgYVKeu2t+omVq4ph7l+ttmXUPyC5QFS25kiIs8apKxTAK+9w
         Yykb9HN3aVww5PK0r4Rrh97+YvVHBvt1YX8pX86gICTYiYlDuVVrJIXjTtzZrt5+4dKI
         0RMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=waMzWN38rkM+Tnx2HgKuC4I8QWJthO47FCF9FrjMFHQ=;
        b=o+Eb8I4SQPlWAqR3QLcUWS0rOxTopoch1+PsIzW6EUJ/XAZqKvyU/jLmb957SZ09bp
         6xXu0EqDi/gODYg96/s+Sp7w9eM4je11yzre0bK9kIpWonj2USAHCLWt+wnvW7K0rkdZ
         40Wm99bAlv0bLnkTIDZVvfPsYg89OkU4wkCuzKOntKyLI+Z1qVtd0F7SdeSYX2IXI7iD
         IFDLS+p/a1bwiK4RnD3iep3RiNV9hfBMxLRaORxVQZG9Kx20ekKxT4mFjUouXIBz/FC/
         raw2JI2IwA4Td/oTzGfnSSvdR4GtlJtj2CHGTH5TSt5yBkjxVQvHGMRyEwp7YFtevRff
         /v1w==
X-Gm-Message-State: AOAM532iHURIScKcQj7L8SV2Wiw8qQUdXnAHngpG1aFqjaN/oanFG0Zg
        XfPF7tiW5yUSQzJuVZ4BsGY=
X-Google-Smtp-Source: ABdhPJzg8orgdIbtjxM/xqICPMU5WNNmmnccn4av2s8Rf1ty71s9SW4pc6pyA2kla8JqV1q7p4/fOA==
X-Received: by 2002:a5d:65d2:: with SMTP id e18mr9581484wrw.256.1617872258496;
        Thu, 08 Apr 2021 01:57:38 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f2sm13071875wmp.20.2021.04.08.01.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 01:57:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v6 0/3] Use standard features in the Makefile
Date:   Thu,  8 Apr 2021 10:57:11 +0200
Message-Id: <20210408085713.7093-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210406111448.20392-1-alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I was probably a bit distracted when I sent v5.  The .gitignore I sent had
many issues.  I rewrote it from scratch and did some thorough testing this time.

Alejandro Colomar (3):
  Makefile: Use standard features (IMPORTANT: default prefix changed)
  Makefile: Fix bug when running in parallel
  .gitignore: Add file

 .gitignore |  12 ++++++
 Makefile   | 116 ++++++++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 104 insertions(+), 24 deletions(-)
 create mode 100644 .gitignore

-- 
2.31.0

