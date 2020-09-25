Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CB552781A0
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727427AbgIYHc5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:32:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgIYHc4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:32:56 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E08AC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:56 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id w5so2402707wrp.8
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m7EE+Og+NXjEfY3jRsWa0kERcLGt1SRkDekmTeZa9kE=;
        b=TiHDW1bZmozq2N9AZ+elngDJfO2uDc8uYFkvao2i2qBS4i+ZQyxMNUwHqIDL1LcI1q
         KN1uYuyYF/PscMuPWjVR/905KwzhrIqu6LxPdEUcVOqqPev4Ik1SmBSKv1BbSiIGdvth
         ebFp02wZzZ1RxOFTy45x0aGthewEcTdPXvLVK9gPBFADYVdm84dkG5XOnlduzhbxgIoX
         rLGN1l16ocf27B54qPsdi9IUM3rQBUuBlGNt9ZPPIRdmCS7WorQCcKdOdIdEK9Xnnfda
         a53Xoqiu/J3+BJH0WPoC8XmzJcaOFZIM2LTmhjdZru6GlWmY8Oqg9jbzL7J7GyHyUnnd
         477Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m7EE+Og+NXjEfY3jRsWa0kERcLGt1SRkDekmTeZa9kE=;
        b=HkALdrUbmBtk/n3tI1ZXW3cX6jwI9ynNQU7TNTVyUQV/OOKb+zRylt6weHGTpGxjSu
         PiA0tzkvqgCzohWcbr94tHnsOkPERDlXMkkeW+Hu3PYqHo1914AvGAwUb4yAljq6ydW2
         CVS1M1Oo9nF9mlPLvXkrWUlVJjWVq4Ki4Zr7x7VvtL6e0qEBS3tpLLpzuPWt4Fp+uU5M
         NsIJb+qPhSRt7nN7uNPKdtpAdNNvEjmog+PK2Nc7Kj/CKTYn9NJpC4F8PcqRnUukoe1Z
         cav1GUG3suc2SK8j5ugVuba7O/ntfNrsN8jk8YynCSeKDh9bYyaWaGOIujor50Tqm0ON
         vmpQ==
X-Gm-Message-State: AOAM5303sQLgLbuG0C88N4FmDQhnItd6/MaTtBrZoFE2djmr8X7abRkJ
        wn4AmQaafru0YLkAlBfv3CQ=
X-Google-Smtp-Source: ABdhPJxBOILSMGOgDyMqk3yU6s2BWNAeUgpl/n1xUA0sqhbCy33ZvlzM+ydI6XN+BRtYz8tSQ9ZwEQ==
X-Received: by 2002:adf:eecb:: with SMTP id a11mr2990207wrp.356.1601019175287;
        Fri, 25 Sep 2020 00:32:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:32:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 00/10] Add types, and some fixes
Date:   Fri, 25 Sep 2020 09:31:31 +0200
Message-Id: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

The .RS/.RE Branden and you talked about
in a previous email was useful here :-)

Cheers,

Alex

Alejandro Colomar (10):
  system_data_types.7: ffix
  system_data_types.7: Add lconv
  lconv.3: New link to system_data_types(7)
  system_data_types.7: Add float_t
  float_t.3: New link to system_data_types(7)
  system_data_types.7: Add double_t
  double_t.3: New link to system_data_types(7)
  seccomp.2: Remove unneeded cast
  seccomp.2: Use ARRAY_SIZE() macro instead of raw sizeof division
  getgrent_r.3: Declare variables with different types in different
    lines

 man2/seccomp.2           |   3 +-
 man3/double_t.3          |   1 +
 man3/float_t.3           |   1 +
 man3/getgrent_r.3        |   3 +-
 man3/lconv.3             |   1 +
 man7/system_data_types.7 | 121 ++++++++++++++++++++++++++++++++++++++-
 6 files changed, 127 insertions(+), 3 deletions(-)
 create mode 100644 man3/double_t.3
 create mode 100644 man3/float_t.3
 create mode 100644 man3/lconv.3

-- 
2.28.0

