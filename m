Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD322E7A41
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 16:21:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726348AbgL3PVi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 10:21:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726276AbgL3PVh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 10:21:37 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79FD5C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:20:57 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k10so5201313wmi.3
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CWA8xJjEa+P9OpeUdl3GvkiTtSf/MoS3Et0rRY2SxBw=;
        b=VDc64GzIkN1aq8Cdx2YkfJPIkfE0GHpPk+LmgSU2SCGihSFhYDUE1M3LphxJ8fN2PW
         cP2eK42zkZmERREsoJUQOfhTDGXCZwS+k0dt7jit7VVoYY7Duv5wcAVLmcR04ESBFo0I
         euGHzaAyn+pLhrqOjWbbGYIvqedqT7vuX+fqrmzbxBsziw3htfmnIYt1M2mF/V++Lzrq
         1gm5maCtzDNb+LWu1xM8Ju+FZGOAclfM27DfvEahU8Wckw+QlnAOfFwZgBxylp4Q9rNF
         +jRs6x6uzPo3qUrWN1dDGpa+qRiJ/JP1ifmBmbGgbg0bon8eAmuwWoTZ1kCdrMn4arSA
         wrzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CWA8xJjEa+P9OpeUdl3GvkiTtSf/MoS3Et0rRY2SxBw=;
        b=NF4tOxImuVwnETfqZ2iFsXBFNI8rW7T9h0BxY+MstQE2zLsKT0SxYD8B6AOaBLN7jv
         ZfS1jJHsT/GaBNCLXSvezao9L6OY0XHvJs+8qTRuEOwwTXH5BMye4j5/W7j921pH41rY
         YzveSjLS3s3qjdpj4AQAfL/6yj6BiCUFu0XEoQkA/tODlVjSJOJzacMNqyQeeIFp24qI
         LOuqNM+FY1hzGFp0/Dyp9kHCWxPxdZr0TH26DNbkRBTjKd0yfDPbkbOofyj/Z6Pc/5xx
         tyn8QgScb8gqP0ZsXNEvqSmWF7mw90SIY+x7K6SS4Zd2RAaAAwMv/zxgS+SEw9NHtbGl
         xvBw==
X-Gm-Message-State: AOAM531QQazhQL5P4qm95P1s27HJTPpk4dG2N7SxjWZ7LuHqybxoBDJJ
        ZnnkM0TCcjBOgWqL6k3gbMg=
X-Google-Smtp-Source: ABdhPJxqXDzO/e5aBI3z4bJJN3bAeeoxudqV6JNO7dMIosxSEsAEgTMePzXgIMCtjti+IvQXZSDI4A==
X-Received: by 2002:a1c:e2c2:: with SMTP id z185mr8366328wmg.49.1609341656238;
        Wed, 30 Dec 2020 07:20:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id r13sm65599786wrs.6.2020.12.30.07.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 07:20:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 0/2] Normalize notes about missing glibc wrappers
Date:   Wed, 30 Dec 2020 16:20:24 +0100
Message-Id: <20201230152025.300622-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
References: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* v2:
	s/non-existing/nonexistent/
	Fix seccomp.2, syslog.2, and some other pages.

Ganimedes Colomar (2):
  Various pages: Normalize SYNOPSIS notes about nonexistent glibc
    wrappers
  Various pages: Normalize NOTES about nonexistent glibc wrappers

 man2/add_key.2              | 5 +++--
 man2/arch_prctl.2           | 9 +++++----
 man2/clone.2                | 2 +-
 man2/delete_module.2        | 2 +-
 man2/getdents.2             | 8 ++++----
 man2/init_module.2          | 6 +-----
 man2/io_cancel.2            | 2 +-
 man2/io_destroy.2           | 2 +-
 man2/io_getevents.2         | 2 +-
 man2/io_setup.2             | 2 +-
 man2/io_submit.2            | 2 +-
 man2/kexec_load.2           | 3 +--
 man2/keyctl.2               | 5 +++--
 man2/pidfd_getfd.2          | 5 ++++-
 man2/pidfd_open.2           | 5 ++++-
 man2/pidfd_send_signal.2    | 4 +++-
 man2/request_key.2          | 5 +++--
 man2/s390_guarded_storage.2 | 6 ++++--
 man2/s390_pci_mmio_write.2  | 6 ++++--
 man2/s390_runtime_instr.2   | 6 ++++--
 man2/s390_sthyi.2           | 6 ++++--
 man2/seccomp.2              | 6 ++++++
 man2/sysctl.2               | 3 +--
 man2/syslog.2               | 1 -
 24 files changed, 61 insertions(+), 42 deletions(-)

-- 
2.29.2

