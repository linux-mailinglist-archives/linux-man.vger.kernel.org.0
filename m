Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F4A31DC6C3
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 08:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727069AbgEUGAI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 02:00:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727049AbgEUGAI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 02:00:08 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0847C061A0E
        for <linux-man@vger.kernel.org>; Wed, 20 May 2020 23:00:06 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id f13so5172094edr.13
        for <linux-man@vger.kernel.org>; Wed, 20 May 2020 23:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=rsdbpiTkO85IMOKsGiSySIiLje0MLHO6xRn7XwZU/9A=;
        b=MUWq4YnlTll+fq0hx96kieYm5Id3fgBZFLpibC3fCbSYbeUNqsNRkRmMQ6qSBt815F
         6IdrWb7OqwGeC8CniivpY6t6oPKtnf1vKNqPjGEw8LyMlM+ykO8cz5qiD/ZgftwI28Kj
         wp3daoXYbMoKTXMCQXT2NY/ElZ/+PKKFjLWKXfNc17ax/Q1zG0er2YkQl3j1f3Xd2veL
         RL73zUvjKk+U+M2/vfpAcfc8tWH0aQJCS75jk5ImQD/facIolYpRocgqKt8A2HyUaHzv
         rwcQhOBQqNWDYmS8HkdMHgIOKSfSK6VB6bXx+0S3Zd/fvRdsWhuOcrVwuBlpQRMn9bwQ
         26qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=rsdbpiTkO85IMOKsGiSySIiLje0MLHO6xRn7XwZU/9A=;
        b=N/3goshmBrduy8hJS6m/XdxhNuJip+QsaxWWwt+5t7+KxkwGZhYUTuTLhWXEGvpHAS
         rQeGvVUHgYxvmFW0msPmjdAYcHhtcCOFOp9eQDQPpbPjtc1RQ5ETN1W+/4pYDDqPuxX8
         qstL7A5O+Cnxm/icN3f9xwvIfEhjbvADIy+1j2UhZTFRk1rAuUhcbjM0DDHlES2UeL4Q
         M/kSrEAZZ7xKHidf34F7rzO2yx15jKqE9WgAKuuzFcxPkUyc2VicLp9ZqF3wYlarVuhC
         lp7+/lrNHAzloR6RvejC3QEhw/3HoWw0Ai0PESDm5XdW4UMYPVV2Lp/xJ8AyZK7NcEqE
         79ig==
X-Gm-Message-State: AOAM531ihztwhHaszX2HAwp+KvEtf6wDGnCQfM3Hj3K8xd7wOhAJJAvy
        nu+weLcnCh3Bg1eOoDcM1G85FDQ59TMZlzF+EN0=
X-Google-Smtp-Source: ABdhPJxif/hHgqFXVHvD6Xzq+MUCst6vb0tM6ZGrCl6p491lMnPBUDuKNnZlbDCV5EKbfSTpF8Mw61trBDnN/mv4CgQ=
X-Received: by 2002:a05:6402:c0f:: with SMTP id co15mr6334498edb.286.1590040805553;
 Wed, 20 May 2020 23:00:05 -0700 (PDT)
MIME-Version: 1.0
References: <87a722a6yl.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87a722a6yl.fsf@oldenburg2.str.redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 21 May 2020 08:00:00 +0200
Message-ID: <CAKgNAkgM-NKziND+x+LZkcgJz_LKE94BK6VYqOz2b+A2c6idJw@mail.gmail.com>
Subject: Re: [PATCH] ldconfig.8: Mention new default for --format in glibc 2.32
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On Wed, 20 May 2020 at 18:48, Florian Weimer <fweimer@redhat.com> wrote:
>
> This reflects glibc commit cad64f778aced84efdaa04ae64f8737b86f063ab
> ("ldconfig: Default to the new format for ld.so.cache").
>
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Thanks for the patch. Question below.

> ---
>  man8/ldconfig.8 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
> index eb9c86dae..e184478a7 100644
> --- a/man8/ldconfig.8
> +++ b/man8/ldconfig.8
> @@ -125,8 +125,12 @@ Cache format to use:
>  .IR old ,
>  .IR new ,
>  or
> -.IR compat
> -(default).
> +.IR compat .
> +Since glibc 2.32, the default is
> +.IR new .
> +.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
> +Before that, it was
> +.IR both .

Should "both" be "compat"?

Thanks,

Michael


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
