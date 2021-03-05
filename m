Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BADAC32F6DB
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCEXvg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhCEXvP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:15 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 645ABC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:15 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id 7so3947410wrz.0
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KzSqTTh1AEi4UgtdPe6yOO/bHgAaiMTwJedd1yqDn4k=;
        b=MthCrX28ocgCCDKw4K2RD9TFMsYR4jsnA9CL45kNdGm/sA3HdNk3mj4qPXMVhVf2LE
         HZbA0nwJuhIBwElC7zpeVu1G9ydr9n1e0YnKQX+K4V9x13CD5aoAR+oio4+DXWqv0Q4q
         eIKhKNYlFx3pAUYyUKI5TWVZPXV1GTm/VOuz9rWOL/Qys7MOjX+UzR/Vd90imK2Pm4go
         lGJDbxVl9d6cZtIq81SQgWVa8oWmWa3mCQz/o6j3o4rMee7u3/haVx4mkDikcDVOlj5Q
         kIrDW4lfTgLOOaGXQLRFRttfXHx/Sx+mB28bjU/zm8+O0jK2IvQfViV60EO31kS2gzEd
         lqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KzSqTTh1AEi4UgtdPe6yOO/bHgAaiMTwJedd1yqDn4k=;
        b=kl8nArL5qAxNRCzVVqAksqtDTyyN2sUznd4blN0wBOEPW6ghWmyKHNC0nVAkUVKu0J
         H9hO2klQ7psN3oemPPocDhuaUtbSijevFwSytkeJxKr+OFSnnMdHmlxSZDmruqmYyli9
         RoLKCqJFWPjTfufXQuItCwNyNfUJVrMHP6P18q6Fh/nasUQ1rNrbnl7dbdLpEfD4i9aN
         Fh9xR04NkVBZYADPs84KxR6SsEJ5GeoN+VgVpxsmpLKNE2N/EAiKVD/TrNzk8gresRUO
         PeqO5AaqvVBbxVevBRRCZ79n5Etjsa/qtu/y21xnUTXt9o4Nm3br6ke1SuppIAzfrxjz
         nuQg==
X-Gm-Message-State: AOAM532xU48E+ZNCEYiPbtoBW0E5i520DCZaa+GkUP2/V0BPxAEJocJ5
        ZvFZWvvttsaFTP/ZZT+tzuI=
X-Google-Smtp-Source: ABdhPJwFgD5e9G058wW1yA/eOFlWTucD5WkvZvFxnHlKXI7NjIFJiRgHAGQa4xTShxbisBNU1VepXw==
X-Received: by 2002:a05:6000:147:: with SMTP id r7mr11843775wrx.25.1614988274192;
        Fri, 05 Mar 2021 15:51:14 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/22] man3: SYNOPSIS: Use 'restrict' in prototypes (batch 3)
Date:   Sat,  6 Mar 2021 00:50:44 +0100
Message-Id: <20210305235105.177359-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This fixes up to pthread_attr_setguardsize.3 to use 'restrict'.
Please have a special look at printf.3, because of the ffix.

Also, I included in this patchset one patch about 'volatile': malloc_hook.3.
I introduced it by accident into this patch set,
and I'm too lazy to remove it :P
I have no other patches related to 'volatile' pending.
If you think it's likely that there are more cases, please tell me,
and I'll try to have a look (I'd have to create a list of
man[23] variables for that, similar to man_lsfunc()).

Cheers,

Alex

Alejandro Colomar (22):
  getservent_r.3: SYNOPSIS: Use 'restrict' in prototypes
  getsubopt.3: SYNOPSIS: Use 'restrict' in prototypes
  glob.3: SYNOPSIS: Use 'restrict' in prototypes
  iconv.3: SYNOPSIS: Use 'restrict' in prototypes
  inet_ntop.3: SYNOPSIS: Use 'restrict' in prototypes
  inet_pton.3: SYNOPSIS: Use 'restrict' in prototypes
  lio_listio.3: SYNOPSIS: Use 'restrict' in prototypes
  makecontext.3: SYNOPSIS: Use 'restrict' in prototypes
  malloc_hook.3: SYNOPSIS: Use 'volatile' in prototypes
  mbrlen.3: SYNOPSIS: Use 'restrict' in prototypes
  mbrtowc.3: SYNOPSIS: Use 'restrict' in prototypes
  mbsnrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
  mbsrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
  mbstowcs.3: SYNOPSIS: Use 'restrict' in prototypes
  mbtowc.3: SYNOPSIS: Use 'restrict' in prototypes
  mempcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  mq_getattr.3: SYNOPSIS: Use 'restrict' in prototypes
  mq_receive.3: SYNOPSIS: Use 'restrict' in prototypes
  posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
  posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
  printf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too
  pthread_attr_setguardsize.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/getservent_r.3              | 21 +++++++++++++--------
 man3/getsubopt.3                 |  4 ++--
 man3/glob.3                      |  4 ++--
 man3/iconv.3                     |  4 ++--
 man3/inet_ntop.3                 |  4 ++--
 man3/inet_pton.3                 |  3 ++-
 man3/lio_listio.3                |  4 ++--
 man3/makecontext.3               |  6 ++++--
 man3/malloc_hook.3               | 10 +++++-----
 man3/mbrlen.3                    |  3 ++-
 man3/mbrtowc.3                   |  5 +++--
 man3/mbsnrtowcs.3                |  5 +++--
 man3/mbsrtowcs.3                 |  4 ++--
 man3/mbstowcs.3                  |  3 ++-
 man3/mbtowc.3                    |  3 ++-
 man3/mempcpy.3                   |  7 +++++--
 man3/mq_getattr.3                |  4 ++--
 man3/mq_receive.3                |  6 +++---
 man3/posix_spawn.3               | 18 ++++++++++--------
 man3/printf.3                    | 29 ++++++++++++++++++-----------
 man3/pthread_attr_setguardsize.3 |  4 ++--
 21 files changed, 88 insertions(+), 63 deletions(-)

-- 
2.30.1.721.g45526154a5

