Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2359D2E7175
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 15:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgL2OkM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 09:40:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726156AbgL2OkM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 09:40:12 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE980C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:39:31 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 190so2740269wmz.0
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zrpX/luVt/dLRJgualtUtOQEJ7W0aE5OeaybL0EXCA0=;
        b=WNCtfO2Gkuv/UGdyhDMRoMzYgRuOMeDBpZZ3klJ2P/KImsvD0q1m2I1xGTIHUvS7d9
         zBjuwBTGBXK4KPTLsDBIlhGh4lWDkS63gbrjeOK1L5HLKo1akw0INBA4evvCxPth5DN5
         fO5Q8lDx4bO1uDlUaFjR7YE35mTa6gR2lTDspgNSow012i9GM3Gr+rgivkKD3V0MXCe3
         Nv798Sux7aL8nNzalTga+IElALlzn1e+EU2AkPAMnZwywSUlwUvWKhAYoI6qXwSZtBoN
         AnnrtLzRNFgChbxFni1gvGWUj5A8mNiy1fOneJ1gJrBE9kelnxT+fZmnO0r0TXGW8Z76
         nZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zrpX/luVt/dLRJgualtUtOQEJ7W0aE5OeaybL0EXCA0=;
        b=FryYpibXykaUlEqJITI+37kEvGDIPlvvZ9AIyGjEIXIwo55q/LsTDOF8u1Kl4dDRiC
         Kmq6EF57gK4+ivNpOQ0eFyM1TAlvqH6Koy6V9S99XJkmKarAUk84Rk8khsbdG4TUGk1t
         /Ei+aqtlh3no4KI3c6F10Ij4QvXdBWGqgi+QVU4CaKTcqt0jj0dySsJmn3oMIcuZud83
         8zn1UayuUWaVusGUPIqRjZmeCgtyqA+T5V8Si7cLfNN5kXoJLFtCu26DCv5W+ExkDBS0
         U5QY1VB2rWwxVZhcVLJunUOtD+nM7WP1hPMoyErj0cQ9qVEBaFTlsMYdqzVuUCV3/9IU
         PR4g==
X-Gm-Message-State: AOAM5330KJPdIpbG5Wpdi3R9CVrCegdEpe1TvZrk4izZs1OPxL+GmMn6
        aRDiUf3xGizMJq5d60wE2AQ=
X-Google-Smtp-Source: ABdhPJzEnp3c8sLbHkuAIxu2Id3N8m8+fVrCrllK2X7dY7XZK1E2Zmt8jk9BJUikeloe5iGcgqpx+Q==
X-Received: by 2002:a1c:a9cc:: with SMTP id s195mr3760327wme.97.1609252770591;
        Tue, 29 Dec 2020 06:39:30 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id k10sm57992109wrq.38.2020.12.29.06.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 06:39:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Ganimedes Colomar <gacoan.linux@gmail.com>
Subject: [PATCH 0/2] Normalize notes about missing glibc wrappers
Date:   Tue, 29 Dec 2020 15:38:58 +0100
Message-Id: <20201229143859.17473-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here are 2 patches my brother and I prepared together.

There are still some pages that we couldn't find with grep,
so I'll send you more patches continuing these 2 as I find them
while fixing other things.

Cheers,

Alex

Ganimedes Colomar (2):
  Various pages: Normalize SYNOPSIS notes about non-existing glibc
    wrappers
  Various pages: Normalize NOTES about non-existing glibc wrappers

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
 man2/sysctl.2               | 3 +--
 22 files changed, 55 insertions(+), 41 deletions(-)


base-commit: c55f66855eccfcd92b35fe7b13a326121f2ee0fd
-- 
2.29.2

