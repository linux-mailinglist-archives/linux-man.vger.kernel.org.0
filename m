Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D484F3316AE
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhCHSyK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbhCHSyF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:05 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D244C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:05 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so3115852wmq.1
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w0FNkaDOxFJq5/pcvXzzR8xfK5/5e0WBDYThm7W/5uM=;
        b=dCv5b7JbI3TdomELnKohyFIoJ5fWbMWMtOWbYkWRq9nclcWTmmoHcRsMUsACMRLtOe
         DEb0iYDLy4qyGh37sWw800oiHq3velqIrLRUfDwiQ7AjIz+XhsWms05g4Z6mcxccNx11
         XVa20Itvvp0vuwTB5FAU+Rewys3/1O18KQNf+0MJI0ywpM01ZndUSO0PzYQ9bqVTQzKB
         HMZr4Fl5QIcMevw0heoNN3PTmJg9BmMfRkk2g12uE5s01JwKXriDuSpXmLkGhz5jfoqU
         ruj36v/yjcOMbjVShNWjDZsDpU7cIYvSzbSUJPR8u2kESd991fBmUaOUhKE7s/mzj+du
         yxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w0FNkaDOxFJq5/pcvXzzR8xfK5/5e0WBDYThm7W/5uM=;
        b=F9aSvxzHTQiJwZmf2RZtMWst/JE0lZSinAEHeF8x7Q1YgeV8s2pwkvU0MBggS+/U9j
         AHy7QIry6WlPcVsIHWN56kP/I0DRYIr4BMSRWHa+5Nn2292t4KDKHE/X23/Yc8jReR1w
         m8Cq21CCiva3o2AXxdHSPeP4vsWopwRPN7Dq+/4s3z+sb+nMuWJzHwD2tzint2hctIgn
         4IMUll4BBfrsGpAE3Z+VUQrclgHycaVSSRHoYs5stYFLf/tFS7ItVOPNOVJ2IZqmClsK
         wXQOKuvsAJlozUwZuApTMtNMyFLssGieo5uoSzhnu7JXKSBWPSh8bEAF+kH28tqoPUwi
         Qc8w==
X-Gm-Message-State: AOAM531E1qX9aiDeOPQ2ex1cy/Mc0Gn4exP2RUctu8amoGV5G5oRP8wb
        CVz9gJKwfd1wdQiF+MXHeeg=
X-Google-Smtp-Source: ABdhPJyydrCApTJloY+whgYz44sewTzCdZX7cVaqTpJlkKkllsoo+g1oEMHCdTNW8pIYfQAPGEF4DA==
X-Received: by 2002:a1c:c20a:: with SMTP id s10mr208397wmf.144.1615229643944;
        Mon, 08 Mar 2021 10:54:03 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/23] man3: SYNOPSIS: Use 'restrict' in prototypes (batch 4)
Date:   Mon,  8 Mar 2021 19:53:09 +0100
Message-Id: <20210308185331.242176-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This fixes up til scandir.3.
I hope there aren't many more left :)

Please have a special look at two of them, because you may prefer a different formatting.  I'm referring to the previous email about "Formatting very long function parameters".  The functions are pthread_mutexattr_getpshared(3) and another one which I don't remember (there are only 2, and as I've finished with pthread_*() I highly doubt there will be any more).

Cheers,

A


Alejandro Colomar (23):
  pthread_attr_setschedpolicy.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_attr_setscope.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_attr_setstackaddr.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_attr_setstacksize.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_attr_setstack.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_create.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_getattr_default_np.3: SYNOPSIS: Add missing 'const'
  pthread_mutexattr_getpshared.3: SYNOPSIS: Use 'restrict' in prototypes
  pthread_mutexattr_setrobust.3: SYNOPSIS: Remove incorrect 'const'
  pthread_rwlockattr_setkind_np.3: SYNOPSIS: Use 'restrict' in
    prototypes
  pthread_setschedparam.3: SYNOPSIS: Use 'restrict' in prototypes
  putgrent.3: SYNOPSIS: Use 'restrict' in prototypes
  putpwent.3: SYNOPSIS: Use 'restrict' in prototypes
  puts.3: SYNOPSIS: Use 'restrict' in prototypes
  qecvt.3: SYNOPSIS: Use 'restrict' in prototypes
  random_r.3: SYNOPSIS: Use 'restrict' in prototypes
  rcmd.3: SYNOPSIS: Use 'restrict' in prototypes
  readdir_r.3: SYNOPSIS: Use 'restrict' in prototypes
  realpath.3: SYNOPSIS: Use 'restrict' in prototypes
  regex.3: SYNOPSIS: Use 'restrict' in prototypes
  rexec.3: SYNOPSIS: Use 'restrict' in prototypes
  scandir.3: SYNOPSIS: Use 'restrict' in prototypes
  scandir.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/pthread_attr_setschedpolicy.3   |  7 +++----
 man3/pthread_attr_setscope.3         |  7 +++----
 man3/pthread_attr_setstack.3         |  5 +++--
 man3/pthread_attr_setstackaddr.3     |  4 ++--
 man3/pthread_attr_setstacksize.3     |  4 ++--
 man3/pthread_create.3                |  6 ++++--
 man3/pthread_getattr_default_np.3    |  2 +-
 man3/pthread_mutexattr_getpshared.3  |  7 ++++---
 man3/pthread_mutexattr_setrobust.3   |  2 +-
 man3/pthread_rwlockattr_setkind_np.3 |  7 ++++---
 man3/pthread_setschedparam.3         |  4 ++--
 man3/putgrent.3                      |  3 ++-
 man3/putpwent.3                      |  3 ++-
 man3/puts.3                          |  4 ++--
 man3/qecvt.3                         |  8 ++++++--
 man3/random_r.3                      | 10 ++++++----
 man3/rcmd.3                          | 26 ++++++++++++++------------
 man3/readdir_r.3                     |  4 ++--
 man3/realpath.3                      |  3 ++-
 man3/regex.3                         | 14 ++++++++------
 man3/rexec.3                         | 10 ++++++----
 man3/scandir.3                       |  4 ++--
 22 files changed, 81 insertions(+), 63 deletions(-)

-- 
2.30.1

