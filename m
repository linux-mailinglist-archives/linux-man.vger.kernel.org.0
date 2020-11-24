Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 294C52C2B1D
	for <lists+linux-man@lfdr.de>; Tue, 24 Nov 2020 16:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387697AbgKXPVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Nov 2020 10:21:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728352AbgKXPVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Nov 2020 10:21:20 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E97DC0613D6
        for <linux-man@vger.kernel.org>; Tue, 24 Nov 2020 07:21:20 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id e7so5174259wrv.6
        for <linux-man@vger.kernel.org>; Tue, 24 Nov 2020 07:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6PUeU/ecvYQM3htZWzD4R485553ZneBuoaes83PWDHc=;
        b=cBp4FSiIaOBaPBDY2IL8xY2dyyd+KRzRcgC7LHN/KSvQEfWLP/gsHJgC3DwZKVVmZG
         52WmruY0neyrYjFxEcDyQzr9anSqFCRD9pnmhU/nGeQGhjkFRi9DsixdJhOre4vAMrdf
         NyNg0k3Cvg7dLG8DPGvJN0wcgrIBPPo0dv7odBT2/bkEZrs506TyRArcA48oBj/Rv/09
         8yhQ3hUB4DODfhy5fD74ooaZWXNizr8Bts5iiL+CwZwYPf69SQbBkuoXcQMv1xkh7jC9
         qp481rUgj26mWetGS1ka7cMiS+5veOLOcqPuLwZxTAUVdPfWSLdn8P3zKyJsF9c7uchJ
         VQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6PUeU/ecvYQM3htZWzD4R485553ZneBuoaes83PWDHc=;
        b=A1ygqTZYjzI2swc/kJ9/uBNdPTNFwH8SgRkuS/3repbn/rFM1ofjrdDC+4BCuAr/6B
         6amzhHtIg0CQdHw6bhdOAz83V82kM7ciugd1APdvqsIiA5ZxxmxY7jxmjMYSqjAYLi51
         ezCwI5xafVPFsj2GzQNdIVNpcSvFFUd/RCK3mzhFnqGmG27OEoz0pK0uGd980jUjnv6u
         6Iz2Iks0D6DpwmdP7gw+JSSMboU2Ea19Y72/qINA3R0LVAsOqolQlrtGosvj11BKuH6t
         HlUoURXuUzc44J0PEepP9gchOm8+lxTcvzTijiMY1hjpuiGMDv5uGK0BV6/0vZ0WjDcI
         /WJg==
X-Gm-Message-State: AOAM531o9PexGamahFzjeQ3wqdiuz4HZ+cX7BxA6jTene/ctMVmat8Ew
        OYex1MkkCqaff48kP+xR2rH7PVGq0i4=
X-Google-Smtp-Source: ABdhPJwJvArjt1Ns7yNaY1bZhPBAvOXmH5fVJn3dqCVuQHAg0FAagqoCveqIG8BlpnAweNeea8A+Kw==
X-Received: by 2002:a5d:654c:: with SMTP id z12mr5745394wrv.46.1606231279223;
        Tue, 24 Nov 2020 07:21:19 -0800 (PST)
Received: from localhost.localdomain ([141.226.183.73])
        by smtp.gmail.com with ESMTPSA id n126sm5956299wmn.21.2020.11.24.07.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 07:21:18 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH] fanotify.7: fix outdated description
Date:   Tue, 24 Nov 2020 17:21:09 +0200
Message-Id: <20201124152109.30027-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man7/fanotify.7 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index c4f5397e4..5804a1f30 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
 The fanotify API provides notification and interception of
 filesystem events.
 Use cases include virus scanning and hierarchical storage management.
-Currently, only a limited set of events is supported.
-In particular, there is no support for create, delete, and move events.
+In the original fanotify API, only a limited set of events was supported.
+In particular, there was no support for create, delete, and move events.
+The support for those events was added in Linux 5.1.
 (See
 .BR inotify (7)
-for details of an API that does notify those events.)
+for details of an API that did notify those events pre Linux 5.1.)
 .PP
 Additional capabilities compared to the
 .BR inotify (7)
-- 
2.17.1

