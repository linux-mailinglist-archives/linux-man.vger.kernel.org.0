Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8092520D237
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 20:51:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729342AbgF2Sro (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 14:47:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728009AbgF2Srm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 14:47:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E850C02F03C
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 08:08:47 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id o8so15729203wmh.4
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 08:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SHqCrKjgTZrIBenxr3G/PaJf5Hdk7bathTejrXAwG2A=;
        b=gxEyALL5pJEhAsRuN4UZQy7CynViyDY3KwaB4kYSXzhSyZDNaXHDEH3TwWml7DKpHW
         PU4vAwY67B5dVZSai8mXionZ0ToyarBBkNL8f+Ro7IGjonMi7nuEzhRhbTchammY1/S8
         BfM900OcQ0f44YJdkIUV8gL/N+/C3GUJbbTB/Jx6LAqH+eyzy0yNXerSazQV2leOSx/i
         n2l+anRZuGvQw6nm0cofKPCRDaOpj7S6Gc4NKRWzFM1FWSq8I5Cg+zoX7EFsTZYeSy2E
         hn1pVjqp2nRYX/DOqoLzBMkGU8WT4N18aLw5mUDTyq3B3bGJsrz2/xzpAZwH56xnTZVi
         TEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SHqCrKjgTZrIBenxr3G/PaJf5Hdk7bathTejrXAwG2A=;
        b=HWy+ZVigM3cDdDknhZdttXAGgAs7jLnmCETNjHZCnPJKiWp2Wx0eVxNqoXlkSoM8hy
         hMx/G5dW/zKSF3em43ssVpAnp6r8MhseaxVKWCKONUqmzzIl2tTdXpF5w4rzeNUMPIfg
         DPkyCJ4UlkvZsogR1JkH7vnNUzb0QudXt7Fqpnbxqe/eBUP60Fe1C+mFLbFiNIRPoZDj
         wl5YM2AdVCh8ws07VjU67RqG+BFr+WnHzzTrjBXNO312LbGCP/7tV1NV9Lmdj3RJ+dlV
         9C/TPmN+RWSlV6sDeUxHD3EwWHLiatWYw4sGyjob9CmJU6M+4Nv6Ujvl9xb+CCBrR1kb
         /gFA==
X-Gm-Message-State: AOAM532SQIGWfDRVItaXlSohXdlde3WTS0mv8lsOxM4blq75iSBb1+6/
        H9aY61LCBAAkrLnmI1h4kh8=
X-Google-Smtp-Source: ABdhPJw1hCviHrjtn3TBD5k3iwAJD1Ks3FtrA0zl4vFVp7ARiOZizTadZh26j8NAncj0QiCTtlr7hw==
X-Received: by 2002:a1c:2049:: with SMTP id g70mr17971866wmg.90.1593443326327;
        Mon, 29 Jun 2020 08:08:46 -0700 (PDT)
Received: from Thomas-Laptop.fritz.box (p200300dd0f244700f94b99e16515bb46.dip0.t-ipconnect.de. [2003:dd:f24:4700:f94b:99e1:6515:bb46])
        by smtp.gmail.com with ESMTPSA id r11sm124926wmh.1.2020.06.29.08.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:08:45 -0700 (PDT)
From:   Thomas Bartelsmeier <t.bartelsmeier@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@i4.cs.fau.de,
        Thomas Bartelsmeier <t.bartelsmeier@gmail.com>
Subject: [PATCH] hosts.5: Clarify capability for IPv6 outside of examples
Date:   Mon, 29 Jun 2020 17:07:16 +0200
Message-Id: <20200629150716.3086-1-t.bartelsmeier@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Resolves https://bugzilla.kernel.org/show_bug.cgi?id=208279

Signed-off-by: Thomas Bartelsmeier <t.bartelsmeier@gmail.com>
---

The first addition should be relatively uncontroversial.
As the prevalence of IPv6 continues to increase, it is about
time to not only mention the IPv6 compatibility of the hosts
file in the examples at the very bottom of the man page.

The second addition is in relation to the Bugzilla report.
It is a simple statement which is true even for the default
version of the hosts file and its two entries for localhost.
However, I do not consider it necessary for any casual user to
add both IPv4 and IPv6 addresses for any hosts.
Therefore, I cautiously did not change the wording criticized in
the bug report in case of any possible negative interactions.
As a result, the second addition is meant to be for completeness
and for use by people who know they actually need this.

 man5/hosts.5 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man5/hosts.5 b/man5/hosts.5
index cb055f5f6..1230f9303 100644
--- a/man5/hosts.5
+++ b/man5/hosts.5
@@ -42,6 +42,7 @@ line should be present with the following information:
 IP_address canonical_hostname [aliases...]
 .RE
 .PP
+The IP address can conform to either IPv4 or IPv6.
 Fields of the entry are separated by any number of blanks and/or
 tab characters.
 Text from a "#" character until the end of the line is
@@ -53,6 +54,8 @@ alphabetic character and end with an alphanumeric character.
 Optional aliases provide for name changes, alternate spellings,
 shorter hostnames, or generic hostnames (for example,
 .IR localhost ).
+If required, a host may have two separate entries in this file;
+one for each version of the Internet Protocol (IPv4 and IPv6).
 .PP
 The Berkeley Internet Name Domain (BIND) Server implements the
 Internet name server for UNIX systems.
-- 
2.17.1

