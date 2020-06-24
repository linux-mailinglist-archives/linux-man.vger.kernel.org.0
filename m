Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9B662071F1
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 13:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390616AbgFXLRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 07:17:52 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:25191 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2388706AbgFXLRw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 07:17:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592997470;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=9v3O0RqYNS+VVmaaTabc6XTHMbQBL/roAvUJpTlsGaM=;
        b=Lsc64OB3hMKtZhBLVaOhheklgY+1rU0aKRhduzaWKP1oTyyn3+C3I+qYTybXUOvWxx7GJD
        h8X+QzqGwEBv7MRxd3WzPiJJOnpL93mmygNUNU1WArycJUxSfwLCY1NkQr70Df4J/ncxTu
        HJKq8kc7eXkCtR2Y5UVDmK/MIsjZJs8=
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com
 [209.85.221.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-uGrwVg6BMbma9uNQEjE14Q-1; Wed, 24 Jun 2020 07:17:46 -0400
X-MC-Unique: uGrwVg6BMbma9uNQEjE14Q-1
Received: by mail-vk1-f199.google.com with SMTP id n129so349834vkn.0
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 04:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9v3O0RqYNS+VVmaaTabc6XTHMbQBL/roAvUJpTlsGaM=;
        b=FEK1j0Kl31fioaX0/7hHPhMMGXlXty3RFSm+dVXUJKw54PZYWO+lwapFdXX21LFsLX
         ZKUIDFEXkl/3XZPuqqXZ1Vg09hZzu9GOC/+om0IhOqAydSG1cfFDynujhEKsT7zPGtUd
         PG7mRuu1DnPKSwnN9EDQpAWjPX0WG5WXFj9Vs2yFttTOBZocjY/3Lwzz/9X+xEOFW93U
         dihG5ggNP4Q2IwA56jNf+o74wJVuRSrypQhAednxbEalumarjGKJPThz7TQAA3t9v8LY
         KQv/6Zxc5JlzwbgqYfVbj9/cyBCpYkVLQEQ57fLBgAuvTNAexp1AXDhg7xAb8OaPTWwu
         7GDQ==
X-Gm-Message-State: AOAM530v9I4ge/vPS+nojbInXrVawqbVxNtUlwxt7vegK1Ci/FtcQQqp
        gcVmIuanUuUR28awYOFWdr+KaI5iFKvVAuSXqxzGaj7yTLraVHoek22w3lXAUfWGMVfATUWa4DS
        vUx0aeyQyO0xdBx5587KvpD9cvG2nwUvYLm7u
X-Received: by 2002:a67:fc17:: with SMTP id o23mr23396194vsq.92.1592997466239;
        Wed, 24 Jun 2020 04:17:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyHSPTv2S1YDLk5kfmUDH3zmjid5uBZvEsdMRXONRqQ4PJfnfd/HNA/vTeZpMgsUOrlQ4V57c26Ub5qKdITtM8=
X-Received: by 2002:a67:fc17:: with SMTP id o23mr23396181vsq.92.1592997466029;
 Wed, 24 Jun 2020 04:17:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHOEP55A2UKBWrdGcmeT6pu4rTZwu3ZDF1PC0eYvjJa80ghgvg@mail.gmail.com>
 <5e2ac5a7-628d-a798-8c55-5819a9d765d2@gmail.com>
In-Reply-To: <5e2ac5a7-628d-a798-8c55-5819a9d765d2@gmail.com>
From:   Dan Kenigsberg <danken@redhat.com>
Date:   Wed, 24 Jun 2020 14:17:34 +0300
Message-ID: <CAHOEP54tRnJjon8rncyiKWVnkPXMYEk8Rom3d9_AO0SwfpNCiA@mail.gmail.com>
Subject: Re: [PATCH] capabilities.7: typo: lowering niceness is special
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Jun 24, 2020 at 1:16 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hi Dan,
>
> On 6/11/20 7:13 AM, Dan Kenigsberg wrote:
> > Anyone can raise the niceness value. Only lowering requires CAP_SYS_NICE.
> >
> >     $ nice -n +2 nice
> >     2
> >     $ nice -n -2 nice
> >     nice: cannot set niceness: Permission denied
> >     0
> >     $ sudo nice -n -2 nice
> >     -2
> >
> > Signed-off-by: Dan Kenigsberg <danken@redhat.com>
>
> As I'm sure you're aware, the meaning of the nice value
> is always a source of confusion! In writing the original text,
> my intent was that the reader would understand that [higher nice
> value] == [more negative nice value], but obviously that that
> could be ambiguous.

Indeed, I'm aware of the old confusion. Some of it stems from people
thinking about this value as a priority. However, it was named
"niceness" because higher value means lesser cpu time. I think that
the man page language should stick to the code and command line
arguments (`nice -n +2` makes the value higher and the process less
likely to run)

>
> > ---
> >  man7/capabilities.7 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man7/capabilities.7 b/man7/capabilities.7
> > index 6254c0ac0..64a9f8e34 100644
> > --- a/man7/capabilities.7
> > +++ b/man7/capabilities.7
> > @@ -527,7 +527,7 @@ drop capabilities from the system-wide capability
> > bounding set.
> >  .PD 0
> >  .RS
> >  .IP * 2
> > -Raise process nice value
> > +Lower process nice value
> >  .RB ( nice (2),
> >  .BR setpriority (2))
> >  and change the nice value for arbitrary processes;
>
> I instead applied a differnt patch, as below.
> I hope it works for you.
>
> Cheers,
>
> Michael
>
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 8f212bead..bf9949ad2 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -556,7 +556,7 @@ drop capabilities from the system-wide capability bounding set.
>  .PD 0
>  .RS
>  .IP * 2
> -Raise process nice value
> +Give process a higher (i.e., more negative) nice value

To me, this suggestion adds to the confusion. Higher numbers are
typically considered "less negative", not more.
How about saying:

Lower process nice value (i.e. make it less nice to other processes)

>  .RB ( nice (2),
>  .BR setpriority (2))
>  and change the nice value for arbitrary processes;
>
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
>

