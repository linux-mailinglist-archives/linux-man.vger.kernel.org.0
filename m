Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28FFA2C4842
	for <lists+linux-man@lfdr.de>; Wed, 25 Nov 2020 20:28:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbgKYT1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Nov 2020 14:27:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726985AbgKYT1D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Nov 2020 14:27:03 -0500
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B388FC0617A7
        for <linux-man@vger.kernel.org>; Wed, 25 Nov 2020 11:27:03 -0800 (PST)
Received: by mail-ua1-x930.google.com with SMTP id 103so1061033uai.9
        for <linux-man@vger.kernel.org>; Wed, 25 Nov 2020 11:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qbHWiqal0hTnnP0+s/LzA+vytzA77Sj1yZGY5laK5Mo=;
        b=bPok7N0lQn8HawChGhsoakYuwCJGVv+1qvsPy3DCBQinvN9qAKU6rmDN2+UTxrdqpS
         7R08fQSZZT1oEwe16U/Rzis1FttPkr5y6H0xH1uC5YpiC3EjKKhYDMCL+WqYQIU+/vVb
         oxBMRoPt5NBNwOZXcirj0UkHLdmnZZu8RpCNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qbHWiqal0hTnnP0+s/LzA+vytzA77Sj1yZGY5laK5Mo=;
        b=c4KtLomi+L4/YKZeIaNSYJoahErakwU/HmBOCBqRQh1UxUvQaT12mliQUZ58v/rXOV
         Laej0cTnd67ABWjozDzJ/0H0n3ABEghV8dNqkBVB88OASTbpv7l6QbcIonnbNvjfB/89
         dcYkBdSAotF4t8TGprFLwKfCdzNNmek1cMGCnQGnsiqcRtQ+QfkYmGfMn0UCfmbQW/NX
         bzZLLNgj8lnlALs/OMi5t0luCvW3Db7zThDYaFDTmud+DX4+4zxo7vhRL1rUOs5SZHCZ
         66+s3vgFzoWtbeeCXeRI1AQh+bDtD9QYSGpAECLbPLpodIVeCvAlWMe/Ai3DdG/9JtfO
         09Yg==
X-Gm-Message-State: AOAM533B/Sp+KEHiOYpyq7ZUfC736EjOt1IaVWd9KDX24K7beqBQksPV
        hJGr3UX1fKkzP7382+0IflBBwmc2rCMfb0z1CjeLlA==
X-Google-Smtp-Source: ABdhPJx9J1bIU6bHhGpNGQ4brFDMFFNfIyzdlnirgZrJOSCe9LO5Ysc+DA2CqJNjVLb6FJg1vAaP7fPFEEcGQ0yoxVM=
X-Received: by 2002:ab0:35c8:: with SMTP id x8mr3968146uat.72.1606332422949;
 Wed, 25 Nov 2020 11:27:02 -0800 (PST)
MIME-Version: 1.0
References: <1927370.1606323014@warthog.procyon.org.uk>
In-Reply-To: <1927370.1606323014@warthog.procyon.org.uk>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Wed, 25 Nov 2020 20:26:52 +0100
Message-ID: <CAJfpegvc5FjU-X1DxNtPjJLgEp_gT228kqk2Va31nk7GjZbPBQ@mail.gmail.com>
Subject: Re: UAPI value collision: STATX_ATTR_MOUNT_ROOT vs STATX_ATTR_DAX
To:     David Howells <dhowells@redhat.com>
Cc:     Linus Torvalds <torvalds@linux-foundation.org>,
        Miklos Szeredi <mszeredi@redhat.com>,
        Ira Weiny <ira.weiny@intel.com>, sandeen@redhat.com,
        linux-fsdevel@vger.kernel.org,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 25, 2020 at 5:57 PM David Howells <dhowells@redhat.com> wrote:
>
> Hi Linus, Miklos, Ira,
>
> It seems that two patches that got merged in the 5.8 merge window collided and
> no one noticed until now:
>
> 80340fe3605c0 (Miklos Szeredi     2020-05-14 184) #define STATX_ATTR_MOUNT_ROOT         0x00002000 /* Root of a mount */
> ...
> 712b2698e4c02 (Ira Weiny          2020-04-30 186) #define STATX_ATTR_DAX                        0x00002000 /* [I] File is DAX */
>
> The question is, what do we do about it?  Renumber one or both of the
> constants?

<uapi/linux/stat.h>:
 * Note that the flags marked [I] correspond to generic FS_IOC_FLAGS
 * semantically.  Where possible, the numerical value is picked to correspond
 * also.

<uapi/linux/fs.h>:
#define FS_DAX_FL 0x02000000 /* Inode is DAX */

The DAX one can be the same value as FS_DAX_FL, the placement (after
STATX_ATTR_VERITY, instead of before) seems to confirm this intention.

Not that I care too much, the important thing is to have distinct values.
Thanks,
Miklos
