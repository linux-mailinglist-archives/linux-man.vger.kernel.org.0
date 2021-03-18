Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 414943409A6
	for <lists+linux-man@lfdr.de>; Thu, 18 Mar 2021 17:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231738AbhCRQIa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Mar 2021 12:08:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231825AbhCRQIX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Mar 2021 12:08:23 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE54AC06174A
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:22 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so7178831wma.0
        for <linux-man@vger.kernel.org>; Thu, 18 Mar 2021 09:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AKP89d8RX3ufIasrBR2p130dygoSoZ6+iANbiW5E1JU=;
        b=VYxlHeph/PQn3kCA+nduvDKCEqbJEhG/97O6A+i72CuuOQM4NH4T1a/fgkmYMrkyU4
         1ONQE1sBRO50beahLQgaLG1xxPp9lUyfHs1jLKlRbAsjd6rxClKiQ3PzB8ku205hMytM
         CMRl+ihWOkWduz2UKZNyAHiattz55vXTyssM8vE6Pcw8vCGDoh51RJihmP8JZzi6tInd
         PEds7C7vzg9XP/bd+NketHlR+lZF2DchQnKI0YvT9PA5bICbfShjoKBtiyJRSZn0uj3V
         Tv42mmdhrwik4Aq3+hdnyWT3bawQZt0mTMpTPse5XG93+QCWZxmA0AhNu6R+NKVj0Zrq
         QzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AKP89d8RX3ufIasrBR2p130dygoSoZ6+iANbiW5E1JU=;
        b=F9Y13vTkKFk4h1yDCrbXHVaaq19DQcPWbPfmaWfHnKJFa/c30musSHSm+mEYMFcLJT
         B/KKAEBPiLSKQwH4DCmhZjTEYjaKaMrCk5J94Umi4Rdo2G1dDgK2dyEU+QWdEGTcHrb8
         aVtis2K4FrmFXUsIbebXyWXaAk1y4v/QQSPXPKgG3gGPCb+VBz1lbaigvf9Pk8yvW7Df
         2lX3qiCcaMj7K1biL04ljW/+lcxoz4VQfQoeOj/g7lM8TxgzrFek9fhIiZ9nFvhDxuce
         yohRGjaQWhVmpxhouTffWcapv/hySnnwF+WtHdgiDbsjA+pkc3WAeml2bO5YtT9RrOgl
         7Wxw==
X-Gm-Message-State: AOAM533Vx6Hmke0qyGkrZQVBytW8kUrGoXjh0sQ5H5LGAjaSLZpHdl+S
        uBt7q44R+2aiWImc60wHQq8=
X-Google-Smtp-Source: ABdhPJwoSAFwXd1fPFU23Bi4TqntCklVnvtbq3poi3rOvcVPhI0VR0xdA//WTXzBPWePz/T9ZymFcw==
X-Received: by 2002:a1c:a7d3:: with SMTP id q202mr4298387wme.93.1616083701613;
        Thu, 18 Mar 2021 09:08:21 -0700 (PDT)
Received: from localhost.localdomain ([185.240.141.204])
        by smtp.gmail.com with ESMTPSA id i4sm2510236wmq.12.2021.03.18.09.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 09:08:21 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/2] fanotify man page updates for v5.13
Date:   Thu, 18 Mar 2021 18:08:15 +0200
Message-Id: <20210318160817.3586288-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Following are updated for changes queued for v5.13 [1]:
- Unprivileged fanotify listener
- Configurable limits

It is still pretty early in the development cycle, but I am posting
them early for review.

Thanks,
Amir.

[1] https://lore.kernel.org/linux-fsdevel/20210304112921.3996419-1-amir73il@gmail.com/

Amir Goldstein (1):
  fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits

Matthew Bobrowski (1):
  fanotify_init.2, fanotify_mark.2: Document unprivileged listener

 man2/fanotify_init.2 | 99 ++++++++++++++++++++++++++++++++++++--------
 man2/fanotify_mark.2 | 14 ++++++-
 man7/fanotify.7      | 35 +++++++++++++++-
 3 files changed, 127 insertions(+), 21 deletions(-)

-- 
2.25.1

