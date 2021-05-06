Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE7F375333
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 13:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbhEFLtY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 07:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbhEFLtU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 07:49:20 -0400
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7685C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 04:48:20 -0700 (PDT)
Received: by mail-ua1-x933.google.com with SMTP id a12so1607755uak.6
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 04:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zh690uLWz79WOTLMS8/rTsPoI3Tcx8N3P/0RiByqM2c=;
        b=TlQhblw20LVlAg+31Hc6h2tsqhuCCHmVTw3OEW1t+UkWp/ic5k/40Y0j32oh3L/0aM
         ZB7wqHiS3aVrmj4gXOxDN9FS4TthHlg+57JuSz6AUFBviz7fLZKPgyGBaPxuyvLZc/Mk
         25bB9aMZtHuTtzYLIrfDRIDed+bJRvVh4rDTYm4TT8REaWVn1Nz4+yMzj4ELiO24Tz6V
         V0Fxs/Anp/68m5bBoZU60biWCDzUpLU4fZjG+LRtxQHhaZgi/EZYl5mYjBYRcnOzujjj
         q/yccbQzE+Q0cTXgHpMKT4kJuTrMSbA79b3BTKMfK2AtgaO1C8eQkmNuMz2LWv4w1rAD
         JoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zh690uLWz79WOTLMS8/rTsPoI3Tcx8N3P/0RiByqM2c=;
        b=LxijrzMsCMbsWoxhux8guAAKYOnzJ/uPSyI5aqVSSC0aSqIYhcyZ+KZ+i/bwWG8mgo
         dhSUZWJgJR0OizlaBUuk9RwUXluWeJbC4l5ksx0jM64aMT9tqqCuKF/lwozfNQK+IVkA
         zdZ9zbLxgCSpkq04pKZ2gXO/y40lX1Zk0dW5lGifW5gI0W2V8Jd1MNxmAq4paCTRcd/O
         gQG5p/U+lbR4+2Eis7ilhWz+BEGzU3+rSMaEAlj5s0h5bNbdIcusAseWJW4hyj52G0Os
         iqb2Um83G8gLoPnAoRVN2+K2I3YF8FkW/0j0/iTDJbTFj36VHPTm0lqgjLOpBHDDbL0f
         XSgA==
X-Gm-Message-State: AOAM533wcfpPWxbj1F/Rfm2nxQ3zpHKpFuA5VD+QZeVhw80Fd75bRPMz
        zBoHGLd5UNOPP39Wy2VJ+L1AeiNiyPX+1mubzMrqq2Xp3dYCHw==
X-Google-Smtp-Source: ABdhPJyzimcJrGrKYjtNQFOOSTUydj/rzZm5bY+yQeDPOTjV39P9/U7kDuBncWDvQOpbnuN3MXpBYdMkZXobqO28yRY=
X-Received: by 2002:ab0:6542:: with SMTP id x2mr2971736uap.25.1620301699891;
 Thu, 06 May 2021 04:48:19 -0700 (PDT)
MIME-Version: 1.0
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 20:49:38 +0900
Message-ID: <CALhU9tnH9QU-3oU3rhiPnH4TrEMOpQrLbbc-V6kzhdEuXw0Djw@mail.gmail.com>
Subject: [patch] shm_overview.7: ffix
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man7/shm_overview.7 b/man7/shm_overview.7
index 9c6ac7923..60e7b71d3 100644
--- a/man7/shm_overview.7
+++ b/man7/shm_overview.7
@@ -92,7 +92,7 @@ to link against the real-time library,
 .IR librt .
 .SS Accessing shared memory objects via the filesystem
 On Linux, shared memory objects are created in a
-.RI ( tmpfs (5))
+.RB ( tmpfs (5))
 virtual filesystem, normally mounted under
 .IR /dev/shm .
 Since kernel 2.6.19, Linux supports the use of access control lists (ACLs)
