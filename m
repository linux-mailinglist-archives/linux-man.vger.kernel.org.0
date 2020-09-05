Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB83B25E89A
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:17:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726468AbgIEPQl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727875AbgIEPQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:12 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFDECC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:17 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id m6so10345506wrn.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rCgWtz+u6PYUC2JolAnz1yarXg7wwb7cqlKt96uQEJQ=;
        b=R+XeVyybdcqQh7HSYBn8LPJDb2qZRfJzX1wDjCkO5/Pm90/CNXyYnTMOi+jaYjzD3J
         vItdzIsGm4FSKO15ob4zNIh/K8E8Ja/YumWPdvWhLTr4qAc2OSrzIW8EZpeMDD+X7xGQ
         PbsHYz7UYEBv23ouPAO6x8BSxDmZah0pVxtOrQMJqQU7bHR58qbhmZ8dF6Jldyup8F4r
         SnsuypVUKFCB4vkUw1Ta4k5In8SwI4mofW44Z2PjcsmCNkpZgETR/eiCE+VM0XdvLbHE
         14fC56ZKyB609JG/pjK8BV+b0M/sPsjTzvLkC0c0D7cImn/lQXp6n3kCxjddYdlyGF8s
         yB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rCgWtz+u6PYUC2JolAnz1yarXg7wwb7cqlKt96uQEJQ=;
        b=DMe6zj2hHRjEi9cznK2Eevcyx3XJEnf4li7B5old7ZJzLy+Bun7dKjsJV6uKJgarwa
         qxCDAQh55f7VId8SuEXpAqSnbR0FSLiY6BtG3VD+CHHqzuv/+PRgbZ169YQ/5lsg/YET
         klTcCxIV1Nt+WLPghJQvy9fkHnY9UZbQcR+PUIBaZzDQkWzbyEx0pRJFbKyaAhqdMY4t
         xoUd+UZ0rHiUKq1/lO4JGgc6D1Et28d7WFZJqHGT3F6jsDpZBJ9yoe9jadPb+pIHK+cZ
         1LgmjDU1zt2MDBMXUX2pZfOePFaqEqCZzGplDiybud2tSnYejvEpYO/Frv2/7uhgOV1V
         PMtQ==
X-Gm-Message-State: AOAM531AfcYXV1qc41yoXhtktyDnx+HM79BhtJIgVPJEavG6w9ES2Ami
        s+NgDoqFTmGSd/1g3LcCeds=
X-Google-Smtp-Source: ABdhPJw3/u1dkgV+9XfD9KbUmhOY68NYtUBCSBUWwHVxdbtBE0LmimxnkoRhdWLVrSqsUYw+uSxmNQ==
X-Received: by 2002:adf:e610:: with SMTP id p16mr13762068wrm.71.1599318916412;
        Sat, 05 Sep 2020 08:15:16 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:15 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 0/7] Remove and/or fix casts
Date:   Sat,  5 Sep 2020 17:14:54 +0200
Message-Id: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

[PATCH 1/7] sock_diag.7: Remove unneeded casts
[PATCH 2/7] pthread_sigmask.3: Remove unneeded casts
[PATCH 3/7] msgop.2: Remove unneeded casts
[PATCH 4/7] user_namespaces.7: Remove unneeded cast
[PATCH 5/7] dlopen.3: Remove unneeded cast
[PATCH 6/7] bsearch.3: Fix intermediate type and remove unneeded cast
[PATCH 7/7] qsort.3: Fix casts

Here's a set of patches removing unneeded casts when they are
unneeded or incorrect, and fixing those that are incorrect but can't
be removed.

Regards,

Alex.

