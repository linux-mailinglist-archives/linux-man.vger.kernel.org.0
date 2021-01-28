Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 674893079B7
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 16:31:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231756AbhA1P2R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 10:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231272AbhA1P2N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 10:28:13 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 623E1C061574
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 07:27:33 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id a1so5823167wrq.6
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 07:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mNszdr2dD7czIgpt0MIOnYwgox1tWEmsJr8ZbPKX0WM=;
        b=UyjsTzNHBnIMbun3K8v98EwhuKG0es1JSTlLJohj9rNi9k9XmFdQ3y7/SFVcBcfzVN
         RXNlMYIMtNrSEXF2BvKv4Xz3X2v9zirrIjZe/kmN2eLgOUCdKWe0+6pSS6LMuBg/Wl/T
         sMCmP5rZH6q25JG7pSvQGzQ24hgaYjfSZmiLoXuxdVZwC+a/bM4gS/XRZwC8kqjI94qg
         9rt2q5b/1L/F4zTxQODnvx5VVbNTr6rQjI1TEBBZyzPrLMDU+cN7AHYFGKvw+1hKmuH8
         pZdw14jJIPkp7CTFzccLjtB3MnUFtYwteeBMkUOz/K3EfDGw4yhiDHM0VHeFAM08fVCC
         avlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mNszdr2dD7czIgpt0MIOnYwgox1tWEmsJr8ZbPKX0WM=;
        b=Hrbhg500VhEgV3TYUo1ek22n81FeWiMHhcZ+Mx4x49qRFpJ8y82bp38jDt3rcg8MbE
         6xEfi1aR1sp+zKqjmSXftjRu4VjcdISkNQqkXPmHiLA1QVGWCg3RKjnfV3CTqhh5kwH3
         GZZsLLyYOxIWP3d81B+IhvNWTf6P7nLD6TeCgqlVv+nHv2Bh1L7TKaKc5Jv0n9PJ4wR2
         vc1S/Q2TWBsEqbA0+2Gu4bpWiMfuo3lXk5SSnD3/QQlcvZXQF/96jANt7bRBqZekXYbg
         8b2hjdXIBCfq+jjnBrJ6M64rRuUJKkxzWsbmj+8NWZYkb3iWOs1TOCwCbEpzROXhK7GY
         Z5wA==
X-Gm-Message-State: AOAM531pON3u3LrPNZaHuB9jf4Iz44XbMsLH/poU7/rfgCEPD8GB/u/L
        oxCo+QbH+hJVypr+JZYlJ2c=
X-Google-Smtp-Source: ABdhPJzaeh+s5881i1+Jufgjpw0bZlJOfYG1to8J7I1HY7vKU/KaLwazgswclnJLnp27wvkQ9raRJA==
X-Received: by 2002:a5d:52c5:: with SMTP id r5mr16550206wrv.208.1611847651453;
        Thu, 28 Jan 2021 07:27:31 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id c78sm6292848wme.42.2021.01.28.07.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 07:27:31 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, pali@kernel.org,
        linux-man@vger.kernel.org
Subject: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
Date:   Thu, 28 Jan 2021 16:24:31 +0100
Message-Id: <20210128152430.314458-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128152430.314458-1-alx.manpages@gmail.com>
References: <20210128152430.314458-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/netdevice.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/netdevice.7 b/man7/netdevice.7
index bdc2d1922..4acf05c10 100644
--- a/man7/netdevice.7
+++ b/man7/netdevice.7
@@ -390,12 +390,12 @@ flag set can be found via
 .IR /proc/net/dev .
 .PP
 .B AF_INET6
-IPv6 addresses can be read from
+IPv6 addresses can be read in
 .I /proc/net/if_inet6
-file or via
+or via
 .BR rtnetlink (7).
 Adding a new or deleting an existing IPv6 address can be done via
-.BR SIOCSIFADDR " / " SIOCDIFADDR
+.BR SIOCSIFADDR / SIOCDIFADDR
 or via
 .BR rtnetlink (7).
 Retrieving or changing destination IPv6 addresses of a point-to-point
-- 
2.30.0

