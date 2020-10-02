Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5D38281218
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbgJBMRJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBMRI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:17:08 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B720C0613D0;
        Fri,  2 Oct 2020 05:17:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w5so1575731wrp.8;
        Fri, 02 Oct 2020 05:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ClGOcK8K4bwLNCZlny4rHtuf+I079Q5zH/tRqVkqwLA=;
        b=QKWgVvkaObAJqLyX7Wj1ADZikJM1rvrt8L6po3QozMFJi3T+bO5ZNz3vUiNR8OOOUZ
         6dP5YiGPBMTfDq20Q6KhoGw0ZTH7xHcYW5V6pBG/aGNydNSEoUsqftd/INjKicQ59yim
         DMfnoCPjUgZfG29WNOB7E3TZpKXpgNYoeykaAH55vXqO+3/vWfs3SE0p121AtKJumwtn
         4dfz75O00hxUqnCxMOu3wm48BVukLxPdiNw4MCEgR1+w+w2F+kVX0QbvBsfCCjq68KIt
         KZ9nj3H+MATmmGACfYT4RUzoWWpAcBVxC/2P8DOgMq9V6v1mSFBznJqxY2/Myjc9g03G
         5bUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ClGOcK8K4bwLNCZlny4rHtuf+I079Q5zH/tRqVkqwLA=;
        b=L+zr+urxF3vmaQrDVCfuLhbloRGbLFzhIGatwMlP+iTuP/KFMWslBZ4fXnEFMNhLLQ
         vXmLoXvvu67ZKP/t0LgRiilyG3Haej0tEyTs7OO4jYwxVg7/V86imAS4h22PrfYho+n1
         7791/waoq0sxbVBVKeKjUgJYDO93YZY/ZUMSIB21Jk1eMt1ZwSYXVhkiQgO5refk3beh
         7isaoae8qP8f4vqmMpwj9aKaeZuIGKCQ241XtQ1V8E2DEPfPiiCPbymGLKaZLAg9gwBs
         2RgYVfSiPxJn5tRsiUDDQCejxbz/phzeSsoS1S54Y8wu1pMhXnzF65+Tly3ncfIMwulj
         nJvQ==
X-Gm-Message-State: AOAM5311B7zfAg1GNOXx38+fWYiQLsVaz/601/W484PvbpNkjEpTssHN
        iHBzRYN9+7ibfsCnTALjNNM=
X-Google-Smtp-Source: ABdhPJwxqUn3NKKisE4gpmXi00ahH/0FvUFsaUvcRTK4XMzobjfgR7KS5jXWiiUli/CkreWGebTuFg==
X-Received: by 2002:a5d:6311:: with SMTP id i17mr2651029wru.243.1601641027306;
        Fri, 02 Oct 2020 05:17:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h17sm1710569wro.27.2020.10.02.05.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:17:06 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH 0/2] Document 'void *'
Date:   Fri,  2 Oct 2020 14:16:44 +0200
Message-Id: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

As you asked, I squashed.
And added the POSIX.1-2008 note too. Thanks for that!

Cheers,

Alex

Alejandro Colomar (2):
  system_data_types.7: Add 'void *'
  void.3: New link to system_data_types(7)

 man3/void.3              |  1 +
 man7/system_data_types.7 | 80 +++++++++++++++++++++++++++++++++++++++-
 2 files changed, 79 insertions(+), 2 deletions(-)
 create mode 100644 man3/void.3

-- 
2.28.0

