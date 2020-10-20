Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEC54293E81
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407983AbgJTOXW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407945AbgJTOXW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:22 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F1BC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:21 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g12so2383768wrp.10
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q1x2W8I95W3CLw/9PUByWBG73WKcy4zn1xzJz/NM4fU=;
        b=cCeQcnG7lNwmsu7WPwoyvEp1Txj/rh6hWlv47Is5LC4/8j4VPC+2lWq9g3No8AhxC1
         YWLrEE5O7iRgVW7IUhgdT15nbSRodrlKoLMuufy2IIj49YCEtvTZi34/l3/3yU9ygwaa
         M5dt8x4d30NrS9zXXVRzzjgS9u8vH6gA9ke4F2Qkzkrkt2jpb7eNqs9KRez3NGFxObQ4
         H2S/DdFNZV2RscZpK9diRxlYWCgq0Yz/ShQODd7Gx3614s3NuX8JN80kkAYAW1dC5HDv
         x50gW+BhMSyWextThssZFgoMHq7UJzOF+7N/6DSn4GJY43kjEr1hqfhn2p1yIRC2SdSC
         85Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q1x2W8I95W3CLw/9PUByWBG73WKcy4zn1xzJz/NM4fU=;
        b=EPcwX7X1T8w5+zI0Xccs2mYyqcC1UYSqlOIaXPkN67+LSDBrXlAgv8GjlV1FXiyhyF
         Em8OhoPHwJbqv8r/bkyn4xCYcZtjHVA3vl1Ti06D7ry11UzTkriih9KqxLgRXGgsjZLV
         usgk8yQy3ViKAhT1W63UIRE/mHBC/ERLSMvVXdynw96+w0NvYlHdgqQBQTueTy0vyEUE
         LqQ5AHFcqFxQOMkY1l08FXtlzlBh1eqMOltiiJtCOIuGyGWwQTBZxR061hIs8eceDplc
         FZF+1DwC4wV+U1XtbHPlO3FZwAanXb+oyfNZxzQmgkcxO9KbHWKcmusDq5Sb3F4NmKBs
         8vDw==
X-Gm-Message-State: AOAM5317gKgumbti/uI5zXAYXvNVCaEZESKpY6JFPeB58/yZIXWSbHW3
        1yIUwGHtkGqvKhPvkw+rWZc+dXPXJ2A=
X-Google-Smtp-Source: ABdhPJyyRfvKkiNHFoIDMIQqxFgW/GNBSDBeaJTBIgVrmUS8NkYfhWCSWRb7iZLusQLULGKkdjEH6Q==
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr4134764wrw.229.1603203800575;
        Tue, 20 Oct 2020 07:23:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 00/22] list.3: New page forked from queue.3
Date:   Tue, 20 Oct 2020 16:21:25 +0200
Message-Id: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I finished one of the pages: list.3

Would you maybe call the page LIST.3 instead?
I didn't write the link pages yet in case we call it differently.

Please comment any improvements you may find.


There are too many patches, so you may prefer to pull from my repo,
where I created the tag 'list_v1' for this patchset:

	https://github.com/alejandro-colomar/man-pages.git  list_v1

As you can probably guess, if you prefer to pull from the repo,
I'll create similar tags for revisions of this patchset (e.g., 'list_v2').


Cheers,

Alex

Alejandro Colomar (22):
  list.3: New page that will hold the (list) contents of queue.3
  list.3, queue.3: NAME: Move code from queue.3 to list.3
  list.3: NAME: ffix: Use man markup
  list.3: NAME: Add description
  list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
  list.3: SYNOPSIS: Copy include from queue.3
  list.3: SYNOPSIS: ffix: Use man markup
  list.3: DESCRIPTION: Add short description
  list.3: DESCRIPTION: Copy description about naming of macros from
    queue.3
  list.3: DESCRIPTION: Remove unrelated code to adapt to this page
  list.3: DESCRIPTION: ffix: Use man markup
  list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
    list.3
  list.3: DESCRIPTION: ffix: Use man markup
  list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
  list.3: CONFORMING TO: Copy from queue.3
  list.3: CONFORMING TO: Adapt to this page
  list.3: CONFORMING TO: ffix: Use man markup
  list.3: SEE ALSO: Add insque(3) and queue(3)
  list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
  list.3: EXAMPLES: ffix: Use man markup
  list.3: BUGS: Note LIST_FOREACH() limitations
  list.3: RETURN VALUE: Add details about the return value of those
    macros that "return" a value

 man3/list.3  | 347 +++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/queue.3 | 237 -----------------------------------
 2 files changed, 347 insertions(+), 237 deletions(-)
 create mode 100644 man3/list.3

-- 
2.28.0

