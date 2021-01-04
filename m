Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9472E9946
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 16:56:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727780AbhADPzu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 10:55:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727784AbhADPzu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 10:55:50 -0500
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1CDFC061793
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 07:55:09 -0800 (PST)
Received: by mail-qt1-x82e.google.com with SMTP id u21so18710060qtw.11
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 07:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eKCFwWB6PobMZGpgaat4DjzOh2CGfbIJwhoduKdyEN0=;
        b=ouN6B5goNDKUXpq/9i1dWxxt+20hHFE6y4dYE1+YoIj5pe/E6XvIxaj6BcJ9le1cBw
         510pd1QNgPWA89u1Iz+ufTXF/pJVLwhBspNZUZqURIC1wrB0RaQ2CYbYtJQEetmK5Iom
         IMcW4AB0CYSrGBzydNwbEPfuBhn7rcZ0vQ6sVcoYoFSQQTTx5tK1dkvuKTKnlugnSSej
         KyuXHkeDJT8XGp8BVIaD7KP4b9yz0ZKI2bW5VHCQFUdJojsE0gHZIfVkzTnpNfm/cMun
         hWxS+Q9p8mGyBB0mGl8FTVLdOSFp6nYOh1dQ9q2EDe7PIBmRxajbXo+x6nvhA3JNerMf
         OpOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eKCFwWB6PobMZGpgaat4DjzOh2CGfbIJwhoduKdyEN0=;
        b=PubqUPzd6ZCxKMMo2ugpW+siAq7Mf5HDE+jZ1yDaG0EQu79wCwzVRHMFl/lNfVnfPo
         5oOxxLR72us/8n7NC4mSuls/AHH6OZuqM1H91mxZQMCh504OpJzjNAuZN0VR8T00Cvw4
         M2C/OVo9Zc4v8xUHoR1R7yb+UUiClAqCAP8aV5Qm4tNZKNzwb8x0H9yt6H1oly7XL+UP
         B/hcWKTNQSoR9ocU4c1pGAP38iv6JpQtLyz+IchydVwmi+Npk2wLQn+MEh+SCW+wzS0K
         Eix1EKr7XizIWw4iBP2kQP8ZWVrJuLeHcFeYm/xm6u0yCHUubU04MMx1VnYrKYA8meBc
         G+7Q==
X-Gm-Message-State: AOAM533JmDhKHLwH4Xb2aVIEXXgWrudV7lIelOgOCwxnkkUB3k8ERb8s
        j9ciOxZpekBhj0p/X6CA5fjb4WnhvIfsrUmePL4P5xnB7dJHxg==
X-Google-Smtp-Source: ABdhPJxWygtLOnP4tZxdzY0NMTS63oHoxobRBHyDeubJnbHwfa5zO/WadfwWeSVH1NVhyygMt7vniQs5UOIY6UM9XF8=
X-Received: by 2002:ac8:6703:: with SMTP id e3mr71937777qtp.344.1609775708964;
 Mon, 04 Jan 2021 07:55:08 -0800 (PST)
MIME-Version: 1.0
References: <20210104151333.70955-1-alx.manpages@gmail.com>
In-Reply-To: <20210104151333.70955-1-alx.manpages@gmail.com>
From:   Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
Date:   Mon, 4 Jan 2021 17:54:32 +0200
Message-ID: <CA+Tk8fykJjf=KzYjW7YMonnZ1qAdQJhqKDRrX0FNGyAYjSnkqg@mail.gmail.com>
Subject: Re: [RFC] system.3: Document bug when the command name starts with a hypen
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 4, 2021 at 5:18 PM Alejandro Colomar <alx.manpages@gmail.com> wrote:
> If you report a bug to the Austin Group,
> please CC linux-man@vger.kernel.org,
> so that we can add the URL and update the BUGS section
> if it is ever fixed.


As notified on the glibc and man-pages issue tracker (sorry for the
duplicate notifications), the POSIX issue has been opened at:

  https://www.austingroupbugs.net/view.php?id=1440

Thanks,
Ciprian.
