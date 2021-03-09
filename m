Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01033332977
	for <lists+linux-man@lfdr.de>; Tue,  9 Mar 2021 16:01:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231222AbhCIPAj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Mar 2021 10:00:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231651AbhCIPAW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Mar 2021 10:00:22 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48ACFC06175F
        for <linux-man@vger.kernel.org>; Tue,  9 Mar 2021 07:00:22 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id e10so16191116wro.12
        for <linux-man@vger.kernel.org>; Tue, 09 Mar 2021 07:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:user-agent:mime-version;
        bh=eHBqZhrYU8500nSDqaUZ2khZC/9Z5Z89UaqsLiqND4E=;
        b=X0/XeOf+nL1DQKoaz/xujkkrBg6sj46MCcok3ljueSG97wdl49ceGwqIyWnuEW783M
         As0ua5cxQI7WAd/EB4hD+jGjoBSw+P5GLmYTjqWZ+led/hFsWq1LWuCw7XiiMdKoxIfg
         lIyqGQj+k39SEYYpd8Jp0/sOo9HiQaw9v7fZPiU5DvHOy0iB7/KT6PJCNSZBe1UPdirL
         Yl5klLsvDrbLtArJn7Xv0MFUIEbTM6EGSYhOm3FAniBvBAdQieHowi4Yali3aouJlYw1
         h0xsu4nBasx9P0cMwraaYDWNciRMI/UEwQxtlDlt+0m0+zem+c+vHddPoMStV3h3lhz+
         pKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
         :mime-version;
        bh=eHBqZhrYU8500nSDqaUZ2khZC/9Z5Z89UaqsLiqND4E=;
        b=qaVT1pmhGyiY6XQ6mWIT1ZiGt5jjeix8LO1iGiSLL/hFML8fc91neYf67LSDfL/t0i
         nfS5tmSJSH6wshdiN0M6eFAuI1ga7HopacjXHj+yHNpWn/VcWpEJmmwXBSnXjqxCTANN
         tIYu4V7vaAUZrbTmdajiqq+4DcXPfJorULQJxHGRZjK4dmAF3qdxUl7wBzNC9f18VmQa
         7nUo+bVRaWwLHoyLuU82xpDrW1Cpj64TITErydh/cECcRzO6USUf2vs4DgVg7Xkb6T6t
         AxVAKsazP41h5GS7hTQUqGAdwKw1e3JnSFDFQp6IwoKGwfUUDJdRgeUzFS51lVVgXWEg
         6KXg==
X-Gm-Message-State: AOAM53098bFpdvkshf/fKuFCygBezbR1ugvrezdWi9W1nm2+Mset53Zd
        xUqwGpBLNas8NDUZ1g/lDt6yWcaZdw4DPA==
X-Google-Smtp-Source: ABdhPJw0usCuvs7SQg/OwNv3wl8nqm/wBKdpfdc62givVnX94ppk5CN/DheAGvdiwu2qEXcwOhPDuA==
X-Received: by 2002:adf:84e6:: with SMTP id 93mr27239711wrg.376.1615302021100;
        Tue, 09 Mar 2021 07:00:21 -0800 (PST)
Received: from zoli-laptop (fibhost-66-211-161.fibernet.hu. [85.66.211.161])
        by smtp.gmail.com with ESMTPSA id v6sm24693161wrx.32.2021.03.09.07.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 07:00:20 -0800 (PST)
From:   Szunti <szunti@gmail.com>
To:     "Michael Kerrisk" <mtk.manpages@gmail.com>,
        "Alejandro Colomar" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: user_namespaces(7) should mention overlay as mountable since Linux
 5.11
Date:   Tue, 09 Mar 2021 16:00:19 +0100
Message-ID: <87v9a0wews.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

user_namespaces lists in Capabilities section the filesystems that can
be mount:

  Holding  CAP_SYS_ADMIN  within  the  user  namespace that owns a process's
  mount namespace allows that process to create bind mounts  and  mount  the
  following types of filesystems:

      * /proc (since Linux 3.8)
      * /sys (since Linux 3.8)
      * devpts (since Linux 3.9)
      * tmpfs(5) (since Linux 3.9)
      * ramfs (since Linux 3.9)
      * mqueue (since Linux 3.9)
      * bpf (since Linux 4.4)

IUUC this list should add
      * overlay (since Linux 5.11)
