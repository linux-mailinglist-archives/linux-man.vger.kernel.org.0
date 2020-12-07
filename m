Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B100D2D1726
	for <lists+linux-man@lfdr.de>; Mon,  7 Dec 2020 18:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726344AbgLGRJG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Dec 2020 12:09:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725822AbgLGRJG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Dec 2020 12:09:06 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96247C061749
        for <linux-man@vger.kernel.org>; Mon,  7 Dec 2020 09:08:25 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id r3so13496643wrt.2
        for <linux-man@vger.kernel.org>; Mon, 07 Dec 2020 09:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=phl+mNb0ub8u8EdVND2e7uK1Lx8kgP8u1JwUWYRO5n8=;
        b=W2nxUHRdhpwELvXzgb/ZxgxMcl+5vk5RhswqYUEu/fv38md+4Iy2lE9gT/IfC+YDGY
         4nVcVXP2w4q3Rpm5l38zUYpn6bRTuBqczANsu+TImoPjatzHMEa7LIM5DluefAkVvp0q
         z8jMeSSiQ1GvcUTW0QKIrKFOAJEkwBMjwWzzD/i5oEQ6kozp3NVPSFY2BYOVHrGheyLI
         Cfm0H3vj6XDbp3TO4d3qqEvTMvcWxpDCeE6Vwy0iSjCrjE+qb8cy9Z1TKXWgEue9IHD7
         HtBXeIU445YoEuAMy1O0Vs2V0WjvHNjgVw4HZOxkVHcafwxZF++CzHyV2SvCl9hjxGAl
         k/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=phl+mNb0ub8u8EdVND2e7uK1Lx8kgP8u1JwUWYRO5n8=;
        b=hrepscOiNSA+nSGFLn5r/+NONS1ufn6oede6zuZQsH60nwNuZsQjtSRGeLPlS1uyi7
         1p72B/EYt3EH3I2bpmm4NJSAGO2G+vLeXsq/FbtGFh3T4f6X78MxejLv47TAFj4KjFkX
         KPYE2uwNAkFvfBXlH+RzQCwkZtXe3oZX85GVaoXz7WfE8OxcUG8CWOSJG92YF4ivqZZv
         5ZgspNLE3ipPkcXNS/57dYKeqiGmT2VPbTyTbciHtf3k0Qv1I673n7IXCAy1gRRsH8BS
         iSaTtdf12A4jRQLokeUuPVY5Cna7YOKs+aDjuk2XBQIJLsEp9gMLheMXRZhi3fYsaLqz
         MS7A==
X-Gm-Message-State: AOAM532CpcfIrOCIbsejdnsWQ5dTuwK6lmW2aZUj5ojQeJlb89GCrOxn
        FVkaPWXvg3mdQTIohsp9oXyy++yMSJy+8Q==
X-Google-Smtp-Source: ABdhPJwib3X9Xt6BrIJksFbMnhWmbH9TYsC4yOvs0VR027LDXH1m4QMNvjIaN+5v/rVcint5TaEXfA==
X-Received: by 2002:a5d:530c:: with SMTP id e12mr3765463wrv.54.1607360904339;
        Mon, 07 Dec 2020 09:08:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 101sm9605724wrc.11.2020.12.07.09.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 09:08:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Philip Rowlands <linux-kernel@dimebar.com>,
        Eric Dumazet <eric.dumazet@gmail.com>,
        Hannes Frederic Sowa <hannes@stressinduktion.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: [PATCH] tcp.7: tcp_syncookies: It is now an integer [0, 2]
Date:   Mon,  7 Dec 2020 18:08:07 +0100
Message-Id: <20201207170806.64140-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since Linux kernel 3.12, tcp_syncookies can have the value 2,
which sends out cookies unconditionally.

Related kernel commits:
5ad37d5deee1ff7150a2d0602370101de158ad86
d8513df2598e5142f8a5c4724f28411936e1dfc7

Reported-by: Philip Rowlands <linux-kernel@dimebar.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Eric Dumazet <eric.dumazet@gmail.com>
Cc: Hannes Frederic Sowa <hannes@stressinduktion.org>
Cc: David S. Miller <davem@davemloft.net>
---
 man7/tcp.7 | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/man7/tcp.7 b/man7/tcp.7
index d983a8f9a..591f73d8d 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -830,12 +830,11 @@ The maximum number of times a SYN/ACK segment
 for a passive TCP connection will be retransmitted.
 This number should not be higher than 255.
 .TP
-.IR tcp_syncookies " (Boolean; since Linux 2.2)"
+.IR tcp_syncookies " (integer; default: 1; since Linux 2.2)"
 .\" Since 2.1.43
 Enable TCP syncookies.
 The kernel must be compiled with
 .BR CONFIG_SYN_COOKIES .
-Send out syncookies when the syn backlog queue of a socket overflows.
 The syncookies feature attempts to protect a
 socket from a SYN flood attack.
 This should be used as a last resort, if at all.
@@ -849,6 +848,17 @@ For recommended alternatives see
 .IR tcp_synack_retries ,
 and
 .IR tcp_abort_on_overflow .
+Set to one of the following values:
+.RS
+.IP 0 3
+Disable TCP syncookies.
+.IP 1
+Send out syncookies when the syn backlog queue of a socket overflows.
+.IP 2
+.\" commit 5ad37d5deee1ff7150a2d0602370101de158ad86
+Send out syncookies unconditionally.
+This can be useful for network testing.
+.RE
 .TP
 .IR tcp_timestamps " (integer; default: 1; since Linux 2.2)"
 .\" Since 2.1.36
-- 
2.29.2

