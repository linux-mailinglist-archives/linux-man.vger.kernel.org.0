Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7CB3537E3
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbhDDL7l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbhDDL7l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F67C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:36 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id v4so8574492wrp.13
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2GlcMmH2kWCQoDG3vdgebvruVwKjcTNBhMWoT9Wxodw=;
        b=ius7lg8VNP8Vj4o7Smt6GCGMonFKznsCDsGEL/qXjjcfqthOSEYwAozQZXQG5hFvt7
         +nQdPiNGwrb83lVOAs1dRGglXJ6eFSxryes6/lJXOfmWIxfTT5Ol2wPkS9PvKUdfGDKb
         t4reRsM0/iH1S+ZyZvnW+PWiSTKEDmT0r+LVvrjpMfOMO2XGLzXq5pdGoGQTOHb7OMSg
         4+3j8+hCsbst/Ikd+8SVI2QU42zaXSGlkC2WAx+w5gmvBEgrKn0OQiKKRmRp1ci4fXXM
         hKtC4b7vRFX5eRbWPNXilm7YkysWRlT7OAvMnwLub1h5yYt4b4WK+SClFKlEWqpyZBHO
         Ip1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2GlcMmH2kWCQoDG3vdgebvruVwKjcTNBhMWoT9Wxodw=;
        b=qpweZQKMmSLO0nxe8J8gJTOwcHBjjsPtN/8SKOxXktIpuNwA3j47L6auz4a6sCvuii
         Uk/nUJWvYyKtBXOZJrE2BlSI++mTIVLjK1uI1W6RwJwUEOOFrCDYRWqUqgRksiu7wUdK
         sEeHgPEZ1Wy15BPE9xjxGiwY0Zs8RurWqSvZGfcxoyMFf9yKoyxLmLBviJ4VQm/Ci0CD
         ufvBE21RRu8gHokHlfsvjkD96zOCAY5NfsbksMPbOkqawV5bNCCvsE2K2Ldtw9r+v08R
         gXxn4t1iBrNdz+TiNa2oBDt4i00mqxnNYT/jq3LG7JNXsID/kybwbzSjTzkOjX2CTxSj
         4EGA==
X-Gm-Message-State: AOAM53131tM/VC/piCPhy4+8/8MvS0D32J3wo0P7LY5+HAkmY04nutH/
        eOyFu09pyj2zMpH/21U+vhepcV6G2ls=
X-Google-Smtp-Source: ABdhPJwF24bdcXhXduuoABj5mXFaKEhDzWvWCxgL5zqqRZqyooZtDIM7kcL6ny7ijI3OiUuAriMCSQ==
X-Received: by 2002:a5d:4905:: with SMTP id x5mr24255934wrq.201.1617537575745;
        Sun, 04 Apr 2021 04:59:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 04/35] socklen_t.3: New link to system_data_types(7)
Date:   Sun,  4 Apr 2021 13:58:17 +0200
Message-Id: <20210404115847.78166-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/socklen_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/socklen_t.3

diff --git a/man3/socklen_t.3 b/man3/socklen_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/socklen_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.0

