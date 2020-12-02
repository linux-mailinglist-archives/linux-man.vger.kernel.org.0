Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17DE72CC20F
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 17:21:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730726AbgLBQTl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 11:19:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730713AbgLBQTf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 11:19:35 -0500
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com [IPv6:2607:f8b0:4864:20::a44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C114BC0617A6
        for <linux-man@vger.kernel.org>; Wed,  2 Dec 2020 08:18:55 -0800 (PST)
Received: by mail-vk1-xa44.google.com with SMTP id i62so520094vkb.7
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 08:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K37eg33TEYHBPIc9hdERySXaT7ddLk31VnYDOJlDBsg=;
        b=Qh43GnRo7YfF7QXgCietAKT8+vkZPBqYJF1+My0HDqIs9rZIo8YSN5dPnKbhJt35/O
         Bk92brV0mfpexLTOm4P1D2e/jzzHq0aEycI6SbiBHQ4W9TdRZzRMWRILKTnT50xTSA2i
         iPs17ztWvUY6GyDcrTIIhpbuNNzPUr9ojKwfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K37eg33TEYHBPIc9hdERySXaT7ddLk31VnYDOJlDBsg=;
        b=eJOY3oW1EaO9ANcgByh6c1siIUaynT+LiC2VB8JnDS/Yzb82ss+kiBWtGczkGg/vNN
         HOS0zAuyspMwSeZ0O0trW3q/uKPYK9VUgn+BUcAAB13JUHYH06PnLbyx7xIfYB9RZk4F
         bIvodqLXrZCjuExFfyGCVUco+m45XHg746WYFIsDXBVJOX1WFivE8+y9rYFdjFOrWF6b
         lcwlL7BJhhA3ZLxVVoWS59aziDiND+o8uLVYmIEhui8znmlRJw6bLXu35iPmfxEcUoFn
         XD7hdUeSRi71YqpmNLzIiQPY7iR7wjvH8xf6gX8SoOU1UKSQ9mQpE7bv43Y+Qs2mx5cw
         VRWA==
X-Gm-Message-State: AOAM533ueqevrPTbauRbGrrJW+I6zqgATx7n5Ml1GOPnIFDHgYXuRU0m
        wHxik7pN2CJYCK2lZynlFM1B02f1eU0il236/NGBQQ==
X-Google-Smtp-Source: ABdhPJyTxGZ9z1k1i/Ix1wYvY05DOpOo2yBinjoa08BbT+ejSo+v8144fC3Nldom8dhjeZdLqBssK9ANee91fT78mH4=
X-Received: by 2002:a1f:e7c2:: with SMTP id e185mr2204229vkh.23.1606925934724;
 Wed, 02 Dec 2020 08:18:54 -0800 (PST)
MIME-Version: 1.0
References: <3e28d2c7-fbe5-298a-13ba-dcd8fd504666@redhat.com> <20201202160049.GD1447340@iweiny-DESK2.sc.intel.com>
In-Reply-To: <20201202160049.GD1447340@iweiny-DESK2.sc.intel.com>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Wed, 2 Dec 2020 17:18:43 +0100
Message-ID: <CAJfpegt6w4h28VLctpaH46r2pkbcUNJ4pUhwUqZ-zbrOrXPEEQ@mail.gmail.com>
Subject: Re: [PATCH V2] uapi: fix statx attribute value overlap for DAX & MOUNT_ROOT
To:     Ira Weiny <ira.weiny@intel.com>
Cc:     Eric Sandeen <sandeen@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Miklos Szeredi <mszeredi@redhat.com>,
        David Howells <dhowells@redhat.com>,
        linux-fsdevel@vger.kernel.org,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel@vger.kernel.org, xfs <linux-xfs@vger.kernel.org>,
        linux-ext4@vger.kernel.org, Xiaoli Feng <xifeng@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 2, 2020 at 5:03 PM Ira Weiny <ira.weiny@intel.com> wrote:
>
> On Tue, Dec 01, 2020 at 05:21:40PM -0600, Eric Sandeen wrote:
> > [*] Note: This needs to be merged as soon as possible as it's introducing an incompatible UAPI change...
> >
> > STATX_ATTR_MOUNT_ROOT and STATX_ATTR_DAX got merged with the same value,
> > so one of them needs fixing. Move STATX_ATTR_DAX.
> >
> > While we're in here, clarify the value-matching scheme for some of the
> > attributes, and explain why the value for DAX does not match.
> >
> > Fixes: 80340fe3605c ("statx: add mount_root")
> > Fixes: 712b2698e4c0 ("fs/stat: Define DAX statx attribute")
> > Reported-by: David Howells <dhowells@redhat.com>
> > Signed-off-by: Eric Sandeen <sandeen@redhat.com>
> > Reviewed-by: David Howells <dhowells@redhat.com>
>
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>

Stable cc also?

Cc: <stable@vger.kernel.org> # 5.8

Thanks,
Miklos
