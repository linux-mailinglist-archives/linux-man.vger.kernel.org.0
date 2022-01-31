Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84A024A4E6A
	for <lists+linux-man@lfdr.de>; Mon, 31 Jan 2022 19:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356506AbiAaScV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 13:32:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356481AbiAaScU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 13:32:20 -0500
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E463C061714
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 10:32:20 -0800 (PST)
Received: by mail-vs1-xe35.google.com with SMTP id t20so13016739vsq.12
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 10:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=R75ZXmczzQwrPH+qU+z8TxbMUrSiHclmP4Fq8LKsWmU=;
        b=JkQf8w8YDlOAlYHZdefDB8+qYxIlUIZttLaWBG/jnZA8NbO1OmV7MKvsUTNhWNLjPs
         TJza2J9AV5EGjWqWKoeVqMncY/eh4ZuheuB1Fk5JPUsQmswXXsg6p3vMB/h8t5iWfKSm
         o/kOq9NDk2cyEN/Xik1EstZ1mlDOhdfaALUuOGp96RFgcGoPcuCqjWFkaJEqaRMoE16D
         Ai5OmG3PCCbiwivR5W+SorwHXOeePIsYZcYMpxvUlhJy7JPlYh7hcsx1abjny8IZ7pNH
         wGR0SUPPOHxtkrnJBkPOGdIFOL0XoUiO67UKt+mPFUU+7zioJpWKDzBHfnxvzqp5b4Vx
         3Fjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=R75ZXmczzQwrPH+qU+z8TxbMUrSiHclmP4Fq8LKsWmU=;
        b=yhicxTQ8AhlFNI8RlPQCUwdMN+qraB1TPASs1iBst/6xk7TdAr1nvcxjQji6cWZOyF
         RVVri7qTMgsDQWGUfAl2qWjQ1ZBePVhv+r+JOZBqe2/SgBy1E/K5dy01P4wzjH4VKRvg
         zHeKShvt7F8nFm+w5S7zwTJNgqQTW44Td8c1uXJS0ECIpsdETgtkPvBX++sc0C/oG4K1
         30dI6Ou2sbKQU35k4GZkiJaG10GVrrqKUr7Hi74ycm2c8Y2haqQo3bjSl7uweCxjdvNJ
         7W8fSQB7gNlG+nrG5Nr8m5+aimKiHS6+yCvOEV/5Q6f31Oth/sdPBdThD0EkQf1jB0mY
         jAMA==
X-Gm-Message-State: AOAM531GJFPksqXnLqc5Jqlrxz4WdXRb6TF+R63wfeL2iGbjwNjXZIDX
        AQH4UgQgjo0bV+WcI2/0P951d2ycChNmyd+34Uo=
X-Google-Smtp-Source: ABdhPJzM1S3WHGBjCYT6WHe0Pnt+mTu7ZPLToT2ZwBwMJmuCF88K9uV1OmZlDxAPx8qQFuZ/a0AHsD9xKZ89z4DaOXI=
X-Received: by 2002:a67:ed14:: with SMTP id l20mr8047171vsp.7.1643653939213;
 Mon, 31 Jan 2022 10:32:19 -0800 (PST)
MIME-Version: 1.0
From:   Mathnerd314 <mathnerd314.gph@gmail.com>
Date:   Mon, 31 Jan 2022 11:32:08 -0700
Message-ID: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
Subject: EINTR for fsync(2)
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The POSIX standard says fsync(2) can return EINTR:
https://pubs.opengroup.org/onlinepubs/9699919799/

The man page does not:
https://man7.org/linux/man-pages/man2/fsync.2.html

I think fsync can be interrupted by a signal on Linux, so this should
just be an oversight in the man page.

At least, fsync on fuse seems be able to return EINTR:
https://github.com/torvalds/linux/blob/5367cf1c3ad02f7f14d79733814302a96cc97b96/fs/fuse/dev.c#L114

Actually there seem to be numerous error codes that can be returned
from all filesystem calls on fuse: ENOTCONN, ENOMEM, etc. But EINTR is
at least documented in the POSIX standard, whereas these others seem
really rare. But for full correctness I suppose these should be
documented as well. It would be quite an undertaking.

-- Mathnerd314 (pseudonym)
