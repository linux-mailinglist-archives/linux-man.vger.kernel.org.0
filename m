Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEDAC40794E
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbhIKQC7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232995AbhIKQCz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:55 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD5BC061756
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:42 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q11so7342181wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kvdDbXYFdm7nfPcaq/FFC3Qha5ZpoB2a3D4s3roMsbQ=;
        b=YkB5ADWq9K//+chXTHhDBOeXRwuuspRIcGOyfI1F+Jq0P4/V4ZMzvd5P64dNAZd/fh
         FaJCC6TAo0cQjLS0kQ4KPbBRL9Uw7ihaMqOdXF3KvJX5kPtlEUisVJmfuwuHJ/Gy7aR5
         OeN8zqtdMJjJ57Dtk1yQlOWDXSR+kF697xLci/ajKhp27ayuKQVSV2LStqYv6IB8y8FQ
         4C0ynTgJurc+xA4wL7oISi9qpAymmQfh1ZnuF3PRyhK+gz6eJxMcyA7wxIjwlvM7K/an
         Gva6gxXElh/kgKmZuyws9sz4c+UdWLAwX7vgNlzFKossdEDfiml0yr3M66xXbeWtWwOp
         x9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kvdDbXYFdm7nfPcaq/FFC3Qha5ZpoB2a3D4s3roMsbQ=;
        b=FCnWbB2bSS4jhbDZyZIsYW/xZvMYp3AxhZQVpcwQmeCiRpQhr99aQ0ompkbu3rkBqm
         VWW3CCWI8AAM2cw+e+9OtjTNh9GhKLxnPPuWhCcuC4T6m47ZDHhXNiH6D7VlEJWpcNTq
         rwN6HBhvajFjCyc+uMBYI2z5fvWPRh8zhhyisXvi6hoCwmPoRTvmt/Au04nP7cDe/Vd+
         pBXpZ2R/PotaP7D1CHzlf9+88y1YiYjn386imaPR7tRvG3RK7fITAOdsQF+dlnD8DIoD
         0EZ0AbM/vfASpPW+W5Ruu40Zs6LvQUC+jmpMKdSsGZ3EJ/JKe74ux4UP/kZsP1o20Puo
         2ErA==
X-Gm-Message-State: AOAM531QYmUL+VoYCEkDqdlhlpfLOuynWhvOG7ykDTP/NERo2ZAv+dFg
        hhQTQLrK/DydkxPAYatnayqvnBBAlIA=
X-Google-Smtp-Source: ABdhPJywmnrK5YkS7+8IXH5nwKf7JolMixorIBJx7kpQ7zSAOtt7onsbVTdIEIojiaj3ID1GMAGZZQ==
X-Received: by 2002:a05:6000:363:: with SMTP id f3mr3697827wrf.142.1631376101460;
        Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 15/45] userfaultfd.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:48 +0200
Message-Id: <20210911160117.552617-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/userfaultfd.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index cee7c01d2..d55c6e19e 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -27,6 +27,9 @@
 .TH USERFAULTFD 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 userfaultfd \- create a file descriptor for handling page faults in user space
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
-- 
2.33.0

