Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E35B4338049
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbhCKWeC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbhCKWdn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:43 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A3BCC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:43 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so14058382wmj.1
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ISRbWxt5BOTUQqJXLJZP/v0n7VQCKV4S+csQFoKWIVo=;
        b=EifF47ta0InwNGt4rIhhD1fDtuT/E6IjQDv0AeX9pzaxPYxUjIaWP4TDeNq+spO4go
         kAiP6RQDfLeTkix+e2p3KzNRQmOABDIdvApIuVBVjz9rkjjvrwfhczw7WTTJ+YHMMq33
         MkJojJmkjvZHHHYEUIym0+nVBWdjONRGPxVrPIjuTixDtIi6ZsUvipgU8kYfpJljzc29
         hPoz96TzU75NIl0hjJ6tDv7LVVHTq/R+VEubwKOGPnE8PkZNKn9+F4Ez42qW7DFAVBVn
         cDzHJ8aNKV9/e4NN6OVDrB4Fop+lbm8I8lSN+yQHJypWRgP21PWOlTBU8BkTATOzREQm
         8yww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ISRbWxt5BOTUQqJXLJZP/v0n7VQCKV4S+csQFoKWIVo=;
        b=UxzI8dm8t9L1q2kH1Ic62PPM/SHgLKcT39pNJcsjXW/4LIVnSU6EAhblLDhQxVMqoa
         Mq7focQ/GVoCPVhI9/ieNJdRq0R26mefCSmLCJK+IGaPTh7Up/8Q5VFXlz7TrljNS/3o
         obExC5DOG5ElJkNtjm4xLTUXMTNNzljCd5uzfZ9C9tDdoLHZTR3CY0REl5Oo9/su5Bsg
         QY5NzY4IX8cGpEDhnsTqdZRT9aHJL+LGgbe7Wsq7Se+xDGYegkLfBioi4SO1N3GedMOf
         NWl43rdiBFnu7zVcX9BfTIvakCQD/KXUe/B4dZLjnf4mluMP9jgKcYPvR0WvjK0H4Seh
         4+Kw==
X-Gm-Message-State: AOAM532cXzeXWfSH7FtlRDu7ijOgUczZUyir3nMkNSoLLEVtMCDTTLTs
        dmZSc8h9MXUJLs8OgmtCW0GVB27vK8g=
X-Google-Smtp-Source: ABdhPJwAMrvsBKq61eSefRlsMH+bW4zQY0n7JxzHnqUGfln7fcLC8K2shz0uo/l+qJF2DrFUceeHsg==
X-Received: by 2002:a1c:21c3:: with SMTP id h186mr9915873wmh.32.1615502022072;
        Thu, 11 Mar 2021 14:33:42 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/17] man3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:13 +0100
Message-Id: <20210311223330.722437-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,
This fixes the remaining pages. With this, all pages have been fixed to use
'restrict'.

Kind regards,

Alex

Alejandro Colomar (17):
  scanf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too.
  tsearch.3: SYNOPSIS: Use 'restrict' in prototypes
  unlocked_stdio.3: SYNOPSIS: Use 'restrict' in prototypes
  wcpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  wcpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
  wcrtomb.3: SYNOPSIS: Use 'restrict' in prototypes
  wcscat.3: SYNOPSIS: Use 'restrict' in prototypes
  wcscpy.3: SYNOPSIS: Use 'restrict' in prototypes
  wcsncat.3: SYNOPSIS: Use 'restrict' in prototypes
  wcsncpy.3: SYNOPSIS: Use 'restrict' in prototypes
  wcsnrtombs.3: SYNOPSIS: Use 'restrict' in prototypes
  wcsrtombs.3: SYNOPSIS: Use 'restrict' in prototypes
  wcstoimax.3: SYNOPSIS: Use 'restrict' in prototypes
  wcstok.3: SYNOPSIS: Use 'restrict' in prototypes
  wcstombs.3: SYNOPSIS: Use 'restrict' in prototypes
  wmemcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  wordexp.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/scanf.3          | 16 ++++++++++------
 man3/tsearch.3        |  4 ++--
 man3/unlocked_stdio.3 | 20 ++++++++++++--------
 man3/wcpcpy.3         |  3 ++-
 man3/wcpncpy.3        |  4 +++-
 man3/wcrtomb.3        |  3 ++-
 man3/wcscat.3         |  3 ++-
 man3/wcscpy.3         |  3 ++-
 man3/wcsncat.3        |  4 +++-
 man3/wcsncpy.3        |  4 +++-
 man3/wcsnrtombs.3     |  5 +++--
 man3/wcsrtombs.3      |  4 ++--
 man3/wcstoimax.3      |  8 ++++----
 man3/wcstok.3         |  5 +++--
 man3/wcstombs.3       |  3 ++-
 man3/wmemcpy.3        |  4 +++-
 man3/wordexp.3        |  3 ++-
 17 files changed, 60 insertions(+), 36 deletions(-)

-- 
2.30.1

