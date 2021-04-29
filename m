Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12EA136F0AA
	for <lists+linux-man@lfdr.de>; Thu, 29 Apr 2021 22:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233754AbhD2TrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Apr 2021 15:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhD2TrF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Apr 2021 15:47:05 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 762E1C06138B
        for <linux-man@vger.kernel.org>; Thu, 29 Apr 2021 12:46:09 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 4-20020a05600c26c4b0290146e1feccd8so428524wmv.1
        for <linux-man@vger.kernel.org>; Thu, 29 Apr 2021 12:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flodin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L2US6k9/NRuXpfqdPLSMoPdn96oSiBAwfE9XCCQrD7k=;
        b=HAj7M5FCReW/JYKJisw7Xfoq87HXo9eRrIXNeYojN3uOffmY/cXJ/7M+QmS+oAKa6T
         n4YbOU20b9W7k5M8QiD3NpT4riIpBXJwg/w+IxZBDhtoQOR7KvunHwwqaX/q9aIIOEuo
         azK43hOMRkyuMLGfBZXDqi+DqqhU25fYZbTayKmir/uK5+azvIK6ckbytcLHCo7INuzD
         TPxeFm47YuH7vFVa8SSy2YPawLIoVsCemtLzzsuSwW3UaEWFCzto5UhEmWDAGd7imePG
         RPpffIg+Nv+QxydN+W/1DiI0gSrgDDaej84pYFSnjvWFkF2bHTVIJc9ohn8Dap4fx8PA
         OSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L2US6k9/NRuXpfqdPLSMoPdn96oSiBAwfE9XCCQrD7k=;
        b=oy+vupnScDcC6CI6rM7ZSeooBV60xisD6yPnrvMzLsCtg0ah1PKLfhcJD/hjAvdokP
         X3FltqxcKFF3aaFHBjqaZtPAYS8BM+IUqTJvpr/x9yitgg90vImNgjxXA2834cUAKSqB
         Dgeb/j6TwGJx7L6F4A7MBFW9CeTkrNISr3WzOS0WpTdvnjNz4x6LQOEZgkYJOonr6GbH
         p1KtxVFmuHk68L9NieY+vArdJnmSGHDvqz2sepA7t0V63dof2u1P4abd7aqUa12u91VP
         bHsze4TH/jNBZIZjte8mBMobrOm6Lp1eh2ZPDJK5dLt0B6LEMF+90DOvM39Rfu/USXtA
         TgSg==
X-Gm-Message-State: AOAM530QjtV/W8gZQQYEM0gnPgs0ky4P/fAx+MhYdooxQkqfxL5SGBdY
        djr3/76HQlaKYXnzscXpMDUuYgPtGINCSHryoYUoLw==
X-Google-Smtp-Source: ABdhPJyBvetnrSH0KqinD/UDdtF/rL9bO+6PUb/wKmNRnjaNQBOufvQp3QxtyxEg84u65l4XXAJED7jVrl273C69PdE=
X-Received: by 2002:a1c:7903:: with SMTP id l3mr12833550wme.0.1619725567963;
 Thu, 29 Apr 2021 12:46:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMKmof+Y+qrro7Ohd9FSw1bf+-tLMPzaTba-tVniAMY0zwTOQ@mail.gmail.com>
 <b0a534b3-9bdf-868e-1f28-8e32d31013a2@gmail.com> <CAAMKmodhSsckMxH9jLKKwXN_B76RoLmDttbq5X9apE-eCo0hag@mail.gmail.com>
 <1cde5a72-033e-05e7-be58-b1b2ef95c80f@gmail.com>
In-Reply-To: <1cde5a72-033e-05e7-be58-b1b2ef95c80f@gmail.com>
From:   Erik Flodin <erik@flodin.me>
Date:   Thu, 29 Apr 2021 21:45:56 +0200
Message-ID: <CAAMKmoe8rUuoxFK2gKZL4um79gmtn-__-1ZDWuBgGTqfqPjZdw@mail.gmail.com>
Subject: Re: netdevice.7 SIOCGIFFLAGS/SIOCSIFFLAGS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Stefan Rompf <stefan@loplof.de>,
        "David S. Miller" <davem@davemloft.net>,
        John Dykstra <john.dykstra1@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi again,

Have there been any updates on this one?

// Erik

On Wed, 14 Apr 2021 at 21:56, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> [CC += netdev]
>
> Hi Erik,
>
> On 4/14/21 8:52 PM, Erik Flodin wrote:
> > Hi,
> >
> > On Fri, 19 Mar 2021 at 20:53, Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >> On 3/17/21 3:12 PM, Erik Flodin wrote:
> >>> The documentation for SIOCGIFFLAGS/SIOCSIFFLAGS in netdevice.7 lists
> >>> IFF_LOWER_UP, IFF_DORMANT and IFF_ECHO, but those can't be set in
> >>> ifr_flags as it is only a short and the flags start at 1<<16.
> >>>
> >>> See also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=746e6ad23cd6fec2edce056e014a0eabeffa838c
> >>>
> >>
> >> I don't know what's the history of that.
> >
> > Judging from commit message in the commit linked above it was added by
> > mistake. As noted the flags are accessible via netlink, just not via
> > SIOCGIFFLAGS.
> >
> > // Erik
> >
>
> I should have CCd netdev@ before.  Thanks for the update.  Let's see if
> anyone there can comment.
>
> Thanks,
>
> Alex
>
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
