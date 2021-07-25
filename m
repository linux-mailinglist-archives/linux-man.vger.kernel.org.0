Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D6573D50A9
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:30:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhGYWuQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbhGYWuQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:50:16 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D279C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:30:45 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id c2-20020a0568303482b029048bcf4c6bd9so6960768otu.8
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=1wtDuDxvyJSrDbbsoLO4s4COpfKvPPNtaupyaVTY/N0=;
        b=CgJih5NwQj5q9C/kEWa/q8DZvOm6Xky0yzQRHIlDOKwybEK/cFKTmJPjY6JJcQr3Sv
         odl8mQDRWRRpJQZ4hiZBz44ymnAilDFPmDST2qWuAnwDI+2B8AcyksmBhfzW67hN097a
         8TyD8F47KJx+DE4gu/7tIxoNbDBT0JXLtyoBtX575Maq3Yu/EpXgUn8dorv0Qo9s8TG5
         +8chQX+6YmPd1+G1PbxaSXkDSroFj5Ra5UQJwFSYLxRft9Jti7Um/56TpJv+HljylfwU
         3QLPy3o+hKjt+dp3IoTMO0tMoA/wJktz8l/MxwSFyq2Tere6oRt1zD/Tv/8UVU9ylTAm
         EXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=1wtDuDxvyJSrDbbsoLO4s4COpfKvPPNtaupyaVTY/N0=;
        b=giMLbc5CbQjqdV2M9UKMbNPdIgkSCvMpaP9cPt12D2/525VCLRTWIQTpbg+8fYE8xy
         Wquw4zq8LpvNefAZJ2MiauEtgmWEcOI4i1fkicWGRLuAMi3kY2ICKvGsMg36so3HpUen
         F1NqrmR3Xb/0ZFLU6BhAPvh3VlFsVet4IfXUX1cz90jD3b3S1bScW8/F3wxdePTfBZIW
         5JjQ0+pHJ/qQS32bbrC1SeH8se+ZLsOXy3HleyVLpcrF4FQENPWmNq3XaogJUraVMKGF
         0u1dD6W8Zjx0seip0OXgsKmPa2PYBTrRmPv5Ktot2OWppsYdDcKyNvEmaqM2SiYordy8
         Cs5A==
X-Gm-Message-State: AOAM532Eb9Dqkb4Z53bW8WYR7eOt+xfd4slaPefUkZ6Ki6LR7mYWSmkz
        FVSCclhca++LGXiSe171TBw0gLj3jClzsugrLDg=
X-Google-Smtp-Source: ABdhPJw0C7gDWEzyCCAIWHEthTuq8SDy5FsK/qLQj+1nZTdKRsh99VkMHJrwr68w5wUDzq7YF0zeBZaW4/ptemcfnPU=
X-Received: by 2002:a9d:172e:: with SMTP id i46mr9901243ota.308.1627255844549;
 Sun, 25 Jul 2021 16:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <CALBoerdTNOd0w0gj4XQMd8Y76MP4tRhSvhAXcQifH1RgydNw-g@mail.gmail.com>
In-Reply-To: <CALBoerdTNOd0w0gj4XQMd8Y76MP4tRhSvhAXcQifH1RgydNw-g@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:30:33 +0200
Message-ID: <CAKgNAkhdFSWtCyOOb-nXgOXD2AeEFtwqCV_3ECGaLx-nF47Wng@mail.gmail.com>
Subject: Re: typo in systemd.unit(5)
To:     snow under <hikigaya58@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, but this bug needs to be reported to a different project.

See https://man7.org/linux/man-pages/man5/systemd.unit.5.html#COLOPHON

Cheers,

Michael

On Mon, 19 Jul 2021 at 09:30, snow under <hikigaya58@gmail.com> wrote:
>
> location: [UNIT] SECTION OPTIONS > Upholds= > first line "but as long a this unit is up"
> checked from online page: https://man7.org/linux/man-pages/man5/systemd.unit.5.html#[UNIT]_SECTION_OPTIONS
> thanks for your great work.



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
