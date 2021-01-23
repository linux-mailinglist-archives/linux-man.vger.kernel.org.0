Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADE3130176B
	for <lists+linux-man@lfdr.de>; Sat, 23 Jan 2021 18:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725932AbhAWRys (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jan 2021 12:54:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbhAWRyr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jan 2021 12:54:47 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A02C06174A
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 09:54:07 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id n2so18062721iom.7
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 09:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3FEyZXVhyGJFarPEaNEqZSOR8r8zx1sFLnlfk4Uo5zk=;
        b=lCDugPURWmXrcxxLvd5JF8zFYZdaEgJPhf5tN40IXEsZTxwQHk/3ayFJpGVFGupOYX
         6YnGv/mrg/pbDyzKolJR7IuBCi1/iQsf1vZqjjQK6SmkEMI+lq+JLhiUOsXDB5X6EuE7
         5P5w22pTWDcBaqol/BIprog276pHuFbD1jcT2fbzSjjubnP6BXHkb76B5Dh9RUPL3jRV
         lXaSwPjDHzFfcCwOwZ/4Kmqcl77PdW7/XEcrhHULygrdS6PBO4bU4YvlLXV+3BA02uHe
         PuMGF6fDUZWnPQtjYwNkrw2rBmkg3mgiKYrUaSvw/pjeurwKItCF1yky1t8W2A0gUmMS
         ogmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3FEyZXVhyGJFarPEaNEqZSOR8r8zx1sFLnlfk4Uo5zk=;
        b=nveRIEifKIiYQ5o+AsZliywEk7vh9jQpdoRPR3nfvSJRVK9+xHl55h84GKwotN3KA2
         N4cFqebmYR/PuuF3XLdOgIOkaVz60m3VxqcxQotGTOloxPAeqXapnrbSux5CQ0I0Twbx
         KGGAXDzA9/NTLvjcO7p1M6BMwFFM52Hjz9HbVcEcTV8a8GbCfBVwCxlAJGwqALtCzTvG
         z/W7otiSo4AMslfMa/679BUerlLzYPebPp7JKj/ycv6sTk5T8Z0MR3F+In+zUx3U6n/A
         yMEBCPBl2x1JhPSmm8aLlLX/2QnJvg6b6JHQrTz09vq8ptYKS3O8Rg6+xY/0DKhnFEgv
         wfnQ==
X-Gm-Message-State: AOAM533F9qD6OTiLu0QkWLm2ANnTwuta0SYkn85efcZdgV8ODxymTIe/
        9tb+InkIb3Gi9Su9PAWL+NUqRec8qBCb8cAoEXvMZ60tbzI=
X-Google-Smtp-Source: ABdhPJzCOq2f5IQXakIo6NWcNWNo+RPtq9mtsQ21MP0BYM1ivzIzNVWOVZTZUjF57AQXENhP5COH3Gg2gfecE+TfFxI=
X-Received: by 2002:a05:6638:d8a:: with SMTP id l10mr7812162jaj.2.1611424446106;
 Sat, 23 Jan 2021 09:54:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a6b:c88b:0:0:0:0:0 with HTTP; Sat, 23 Jan 2021 09:54:05
 -0800 (PST)
From:   Peng Yu <pengyu.ut@gmail.com>
Date:   Sat, 23 Jan 2021 11:54:05 -0600
Message-ID: <CABrM6wk4Fy5d7EiqgdZEDGw8Cz31n47MLDUV7=eantZu1Apb4w@mail.gmail.com>
Subject: How to deal with colliding filenames?
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git

When I tried to clone the above repos on Mac OS X, I got the following
errors. The default disk on Mac OS X is not case sensitive. How to
deal with such a problem? Thanks.

warning: the following paths have collided (e.g. case-sensitive paths
on a case-insensitive filesystem) and only one from the same
colliding group is in the working tree:

  'man2/_Exit.2'
  'man2/_exit.2'
  'man3/NAN.3'
  'man3/nan.3'

warning: the following paths have collided (e.g. case-sensitive paths
on a case-insensitive filesystem) and only one from the same
colliding group is in the working tree:

  'man-pages-posix-2003/man3p/_Exit.3p'
  'man-pages-posix-2003/man3p/_exit.3p'

-- 
Regards,
Peng
