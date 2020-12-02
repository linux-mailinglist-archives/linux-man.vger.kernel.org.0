Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABE132CC40B
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 18:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730886AbgLBRmp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 12:42:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728843AbgLBRmp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 12:42:45 -0500
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE95EC0617A7
        for <linux-man@vger.kernel.org>; Wed,  2 Dec 2020 09:42:04 -0800 (PST)
Received: by mail-vk1-xa42.google.com with SMTP id i62so587160vkb.7
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 09:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1x85fibtNgk8eCqEQNDAdM4H9CAeQh2Tw033sLE9au0=;
        b=k17fYGcwuvMZ1Z8sW8ED5NcNXVNtT2pFk45+2PoxoQU8LXfOr6AYnwMnP48duoDTOX
         KkETXo8kz86TN9x3hgA72/j3TAPJcyMySF/dKg3fqDLhxHHqn0b6mMjJvCX9YFgXcZSE
         meXC9GzKinsBSDUgRWYmV1DBRcJbE7gisVkLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1x85fibtNgk8eCqEQNDAdM4H9CAeQh2Tw033sLE9au0=;
        b=gfevKZwrP2o6ecYo6XJ2L8sRXgtepIyR6a6xv2Mn/dBq5SQUmE1YR4dj+3M3Tkm3IJ
         s6+IjhsrdsOCRAp6dR5kkyuHIWIipvItzxxOO9T3L8W9GL3rc60x/5c1qCcA0ePP2ky7
         VYfdbqpcm7y9u767apuVsuc4DT8M3FYdW1mmpwDsDKOaW19mAqqkUjqjst/b/YhnEKES
         3PkE5il+idYStvDcNutekp4DawElIpKz6cRthEOPpBfL2ZlhlODgVfpHPo/wufRt8/bM
         KwIRABaS5hsnJPTxxz39BUk+1JP9v62/RFpOuYZzgo1oyN7qTnX+gy1gsrrijIHebAZD
         IuCA==
X-Gm-Message-State: AOAM533n+MysRaDCVW7vPIUo3yn68rhLmy2O2699ZG+CD33LijxOp70z
        1XMQG/wDBTN9gEhYkC6Limjq/WSjjY0B8jE5Dk1yOg==
X-Google-Smtp-Source: ABdhPJwTheLKPeYlIrrssTfR1rpgEOPwTCjeb+0/mDlt+DYvNW/fgwgzHLBBS7di/GI9wgwe9tiBOAwzgf9hYJ07zfU=
X-Received: by 2002:a1f:b245:: with SMTP id b66mr2625951vkf.3.1606930923918;
 Wed, 02 Dec 2020 09:42:03 -0800 (PST)
MIME-Version: 1.0
References: <3e28d2c7-fbe5-298a-13ba-dcd8fd504666@redhat.com>
 <20201202160049.GD1447340@iweiny-DESK2.sc.intel.com> <CAJfpegt6w4h28VLctpaH46r2pkbcUNJ4pUhwUqZ-zbrOrXPEEQ@mail.gmail.com>
 <641397.1606926232@warthog.procyon.org.uk>
In-Reply-To: <641397.1606926232@warthog.procyon.org.uk>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Wed, 2 Dec 2020 18:41:43 +0100
Message-ID: <CAJfpegsQxi+_ttNshHu5MP+uLn3px9+nZRoTLTxh9-xwU8s1yg@mail.gmail.com>
Subject: Re: [PATCH V2] uapi: fix statx attribute value overlap for DAX & MOUNT_ROOT
To:     David Howells <dhowells@redhat.com>
Cc:     Ira Weiny <ira.weiny@intel.com>, Eric Sandeen <sandeen@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Miklos Szeredi <mszeredi@redhat.com>,
        linux-fsdevel@vger.kernel.org,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel@vger.kernel.org, xfs <linux-xfs@vger.kernel.org>,
        linux-ext4@vger.kernel.org, Xiaoli Feng <xifeng@redhat.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 2, 2020 at 5:24 PM David Howells <dhowells@redhat.com> wrote:
>
> Miklos Szeredi <miklos@szeredi.hu> wrote:
>
> > Stable cc also?
> >
> > Cc: <stable@vger.kernel.org> # 5.8
>
> That seems to be unnecessary, provided there's a Fixes: tag.

Is it?

Fixes: means it fixes a patch, Cc: stable means it needs to be
included in stable kernels.  The two are not necessarily the same.

Greg?

Thanks,
Miklos
