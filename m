Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 310D03542E6
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 16:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237174AbhDEOhc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 10:37:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235915AbhDEOhb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 10:37:31 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93683C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 07:37:25 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id y20-20020a1c4b140000b029011f294095d3so599084wma.3
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 07:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hyJX3XPv9qQYBSmxRNfatpYcfKCbsOP3p4RsuBYtLN4=;
        b=iW7nMRNRchNKme8BFYBQ2p+NrCPgKq3VUK+BPmPDnKyxJIoEbU90UtTvYfXkykq3Es
         hQ043ghinYpSb21TnQ/qf6YcUK6ppiW0cXkQRuKW7830e6NY/0Vi5u0ewMnlOU1Y31La
         Rn1iel0tlgUhegBglygD47nDf4xR7YlWzuX8fUecDej2iObfAJLXMcdQ7Tl8ua3sye2k
         c1FdQYFgaHbwplHeqRjGRvnmg67oNVy5Rz6kz0h+9nW6N6McMx2lAnaq9Pfpri1HbEIx
         3D9w72qDagosBflQFN6I2X8fxU3Ua7PpuKApHrSyMZfWLiW6NPE8o0OjBaS1WXvmsG9i
         S7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hyJX3XPv9qQYBSmxRNfatpYcfKCbsOP3p4RsuBYtLN4=;
        b=s1sIigkgPr8tAgaWZvJwswYUw2U2BF0D8yIw0B5G5dP1SvnxCHH5iEuHnbeEaVIReI
         /Nht64ulOb1yqCNySMUelXSK9uoHQgA4s+IvswkBlioS2CkoxyePPolpZS/nGD0Hu/8T
         1UkSApkl6JX3TDMKKjH1M8MQpIpQQ9Wt7+84ZbX1zwlRG3f/dmoStwvHYGPHqRy43X84
         xVEpkU0u1iqIWItlkQ3sjJs7yZOCGic5qTPBP0dcaBweU1Rz2YK/wgAAIQdzC+77IHPE
         s5sbS3lHSlfVeXNK2YNn0Lelyb7xQVMyE2groy82sKEbjQOrW4TlO83MRQ5h9WLI50DR
         ll0A==
X-Gm-Message-State: AOAM530SUNVzZCdFv3LtolJD32BC5dfBrY6b91n0uLbPlhORx/0r10d6
        +SiFh1+zfVjCkvwUkYpqhVVkEhWRq9NoYGSGSzs=
X-Google-Smtp-Source: ABdhPJyupvF9puv24Smz8dnaEivPu6L3A9j1RMljSfjC7btKxtpJ3VlH1F5PpxWYYqV7AS5QKgXFZFHmDWzYgsOh+Mo=
X-Received: by 2002:a1c:2683:: with SMTP id m125mr25653303wmm.178.1617633444352;
 Mon, 05 Apr 2021 07:37:24 -0700 (PDT)
MIME-Version: 1.0
From:   Jon Murphy <jonmurphy1618@gmail.com>
Date:   Mon, 5 Apr 2021 10:37:14 -0400
Message-ID: <CAAdZR6t0wXTVhqiYYvDEM_oja90VKUN8bTRpjM5-3DxeeyB0Vg@mail.gmail.com>
Subject: [bug] tfix: shm_open.3
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There's a word duplication typo in shm_open.3. The words "to tell"
should be deleted from the below text.
"Post 'sem2' to tell the to tell peer that it can now access the
modified data in shared memory."

From release 5.11 online manual.
https://man7.org/linux/man-pages/man3/shm_open.3.html
