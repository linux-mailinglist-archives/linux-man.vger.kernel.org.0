Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773333C367B
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 21:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230439AbhGJTlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 15:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhGJTlY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 15:41:24 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898F5C0613E5
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 12:38:37 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id bg14so23661768ejb.9
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 12:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qlzoOxGLvNukw7hMbItSWeBRJzr/BAr01NA3lhMvvok=;
        b=Lj0yQGQwStxWcHTXjzFNxeYmVnioUOALm00e+7t/dfWoGuQBrJySoEx5Ny0/ZIWGXH
         AoPsJsdu//zo2xAYlyvCJk33X2KB0EzrzdViBVsIoI0YeCapX6qNgJGXutRkMXjO7F4f
         QXuDpI2+KmzkWdHGgAjGiuldUi1w86T/TDeu9D2oz6sxnhofAhMWg34B67+3sLDh4Ypk
         q0l8jBsGY9vPbsjoa1FvOnIoSmy0aE/fBocl//c6wyZLu0p+NlF+J4NNHZoLElj+CAKF
         BN9pRqKo+galnalTGhk21k7ayerGdHoKdmO74OpUo7CVmtlFASrKAUDCQ2tgcGHsQFel
         F1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qlzoOxGLvNukw7hMbItSWeBRJzr/BAr01NA3lhMvvok=;
        b=Ot9Rra5sVH2uq8KjuHRA8UpYtAjlYlc/5ALjL/iSqDuxcipcIVeTx3n6ypkkfnB92P
         rYRAA+u3tPDziqo49pgA0NO+5hYEIgzdL34oUmk37Ctu9YVXXiQFoPpibd46jb+Nz47N
         1CGGxQdxC9aw7cx/9UXAkFS4E5SI+uY3jwsaGI+M43HO6UaWOXv8mnvHN666o5UrPK88
         1Pl7t/WWjxOVD/ThQGdV43eknJec06DLiI/yn9rhu4AgxXy7bxa7NqhSvP5ZP6xfwNrL
         4c08fHWGsncjkmP0JX0ccW3gHBNBmpp9lOQAYehcqKcVJp8R+hQMYjYqcp5bzUMH6gla
         6r2Q==
X-Gm-Message-State: AOAM530A0hDJEM4wcgwU73zgFH+7b3aWTr3t20M9eE8kicdT7XtNF02j
        tjozAF6XljaVF+aNvTm6cKY+/ew86wRyZ4IX7ok=
X-Google-Smtp-Source: ABdhPJxVVxT4R9uqspMnKVejuiM+wO8WqMsOqoCBwmB72v4mxNbe5DDXFYrkb6LfQlqvu95menPW+0+rIsWkrjpUdyU=
X-Received: by 2002:a17:906:3948:: with SMTP id g8mr33981611eje.282.1625945915087;
 Sat, 10 Jul 2021 12:38:35 -0700 (PDT)
MIME-Version: 1.0
References: <20180919171225.GA29057@asgard.redhat.com> <CACGkJduyguGW_48O+pwbCGA0-nE+kR-yRhv-jZBoiO8iBcrMEQ@mail.gmail.com>
 <6565c5a1-51b2-1153-9caf-17dbb090f2a4@gmail.com>
In-Reply-To: <6565c5a1-51b2-1153-9caf-17dbb090f2a4@gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Sat, 10 Jul 2021 21:38:28 +0200
Message-ID: <CACGkJdu5wYXLqvL7Vc0C4ynX26w54mCFKMpM307q2VEpB28UUA@mail.gmail.com>
Subject: Re: [PATCH 08/16] getrlimit.2: add information about calls affected
 by RLIMIT_MEMLOCK
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 10, 2021 at 8:51 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> Could you please provide some background on the patch?
> Maybe add it to the commit message.
> I'd like to be able to review it :)

If I recall correctly, it has been conceived as part of effort to
debug [1], as it wasn't clear (to me) at the time, why the error
occurs; it turned out that the BPF memory, while checked against
per-process RLIMIT_MEMLOCK, accounted on per-user basis. I decided to
go on and find and document all the places the locked memory is
accounted and checked against the limit.

> Is the other patch (v2) you sent recently meant to replace this one,
> or to complement it?

The other patch is an independent one, so it complements it.

> Also, please see some comments below.

Thank you, I'll update the patch and send v2.

[1] https://github.com/strace/strace/issues/74

-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
