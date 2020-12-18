Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F0D82DE697
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 16:32:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbgLRPbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 10:31:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726299AbgLRPbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 10:31:43 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CD2C0617B0
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:03 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m5so2576228wrx.9
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lydOTeBWmhC6RNazMCEHf+vsXtvuHm3R1kNQnzKlS+Q=;
        b=QZ/OpfYaqlv6bRDaMEcJgZSBDXE118WExvReWBGSEeeAIFUzbus1MYagl7qS//0jYO
         tMZTDDoipU0z3jImQi0m7cTrLnuUzHMmxGJGIzmK2A0ZUjMo7KRStYNfnWIQgtGFHxcA
         A/zV41dgWVBp4gWY6lvR4QF9AUAxLmjohVTqP1Du3Qx7oRzc/3mCy1+ZUUwgJBxOAQ7B
         AqKZPPlfqDvrJj1myzw1GTyIwSb+R7OcjpInttWv5JJjjXSl7VoLZl9o73X9R1waiDVB
         Ci1YXxs0abvELv2OCD4UuEDg5+0bflR+jXX9tC5B3f7QMt0/MT9+TnirteyvLcMqE+lM
         g4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lydOTeBWmhC6RNazMCEHf+vsXtvuHm3R1kNQnzKlS+Q=;
        b=LId85Ke/UXPMHbejvjN8to7cqgZcjRUsOoU8UTGMdCZ2na1zVP8tCqbeE8gb6Q05/M
         R+LCoSj1yzG/BYqNgD/uPYO8INmvq6ayZaSUmd1mJgj4aUswfhP/9DWfgxIqTia259bw
         V27Iz2xGvQbA5VNf7ojA/C6IMrrNNSS4ECeDOKSvwJ3m9/K4lrDoWslry5ry1LWb+8dU
         Cr1hKuEOKStswXesVPE4zL7ZKLBV0F/9L9uUQTK3hCD4OwprKYkSc9nLj/UkbZYpjImR
         7qUFLKwqTDNuA+/npVs+JYwpVO1hdZ3N1o3J50IcoLgNWUBeTQyCKvvcXJnUm1HNtw9w
         dx/A==
X-Gm-Message-State: AOAM532AWTPuds3++gop5m3fvSuk7h0Kxk3PVvEu+i22LoplvdJ9OuCn
        GJoHMZJpysKwksnMBnfDX2U=
X-Google-Smtp-Source: ABdhPJzKiG8CXQrwwFEZCLsJiKu/bbiIhBfMBCSPlu95RD4wjrq3CLoV9N/atTMRx33T8OYZtzkCMQ==
X-Received: by 2002:adf:dd92:: with SMTP id x18mr5086275wrl.311.1608305462014;
        Fri, 18 Dec 2020 07:31:02 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j10sm13730492wmj.7.2020.12.18.07.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 07:31:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: [PATCH 0/3] filesystems.5: Update & wfix
Date:   Fri, 18 Dec 2020 16:30:34 +0100
Message-Id: <20201218153036.25244-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Please merge these patches.

Thanks,

Alex

Ahelenia Ziemiańska (2):
  filesystems.5: fix link to user space tooling for ncpfs
  filesystems.5: note ncpfs removal from kernel

наб (1):
  filesystems.5: wfix: ntfs: remove FAT comparison

 man5/filesystems.5 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)


base-commit: 300ef55cf2eebc7b123fba48a40bb05a14e261e2
-- 
2.29.2

