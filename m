Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBF5832C729
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240492AbhCDAbH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234110AbhCCSvZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 13:51:25 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E1F8C061760
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 10:50:32 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id h10so13941526otm.1
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 10:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cilium-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X3mUmIL/PsBLm5QWggy6CsHGsFcTyyKgwZM9IzC11zo=;
        b=JQSA4Fi422v+BKJzP5iuKGerteg8JKiOI+8qwCe5ObNyn3J0aCSLzxPJ53/1gb7TGX
         zF7h8f99ydK3O6+SBtRdIGqoIEWzcNR8YpIpO3YVLkKwcHu29X7I1uxRYJ9CQF7Xesj9
         7zlw5ZBiaBDWJwdle1mOeAj07AuMBr9R7rdMOJ51GOkHKAu1K472YSKfX5UJcgy5UqOX
         UAQ0kkfiEgHVSzbBvwIxWhYWXRa+Fl0RI4UVWZuAKm/Wz5t7VO9lfj8FTgcT3w6SEB+D
         NH2xCRMOsRNk3Yc34quRm+4vlTicK7v22RY92GAs7s2q1t8C+X8YvaUdHB97nCKenGgW
         ZTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X3mUmIL/PsBLm5QWggy6CsHGsFcTyyKgwZM9IzC11zo=;
        b=a0C+uxG9rXtXc0fEk1sgj08IeobdlroxtXIMhiV0WTbn90exyq+W/vA7PYug9QFhlY
         zzeyfdrc7UZlN8JCVwFmBkAXEhMRaDfKL/SRR5yO7ysbIcictVOtL39H4V/wP/FQi28S
         pyiMg+/Vijwa9XQUNDqRad+HFq+6vr0sMr/KcTKR2XbIRhy+yg5Sx/dFBRZe5P9mdSBJ
         3p7ozKZwdJMCFlbYrxdOAA+QDfdfl2ihEbm80ysGk3CHLDA7KtvGPxh3Cu5A/KZxZwN2
         Btp084JgFWj3bjjT5sJePBwAVOoyk+4+VLl/zqa8Ca6xeNbj3H91SrLEjnEIdxzGrhkn
         XWCg==
X-Gm-Message-State: AOAM531oxbASdfRb/iGPOTUJCYwpiXYaAA3cWVFFNStrgzZoaPVwtT8c
        I2C836UwCURB+FxA1jOhDyLu2TyOra7RE3dmHyUUyQ==
X-Google-Smtp-Source: ABdhPJxun10gscljDGCet4kQO1vLQNdjPWhnmQNgBhsnw0bpzdE1zHrZCTPJQqxifcrfgLrBcVowWjbOH4ReQqoqshA=
X-Received: by 2002:a05:6830:309c:: with SMTP id f28mr395806ots.204.1614797431439;
 Wed, 03 Mar 2021 10:50:31 -0800 (PST)
MIME-Version: 1.0
References: <20210302171947.2268128-1-joe@cilium.io> <87y2f4up37.fsf@meer.lwn.net>
In-Reply-To: <87y2f4up37.fsf@meer.lwn.net>
From:   Joe Stringer <joe@cilium.io>
Date:   Wed, 3 Mar 2021 10:50:11 -0800
Message-ID: <CADa=Rywd5WUbOVvgxO=AKULE8F_+_XYaSEhGffDyFhTdc0qsCQ@mail.gmail.com>
Subject: Re: [PATCHv2 bpf-next 00/15] Improve BPF syscall command documentation
To:     Jonathan Corbet <corbet@lwn.net>
Cc:     Joe Stringer <joe@cilium.io>, bpf <bpf@vger.kernel.org>,
        linux-man@vger.kernel.org, linux-doc@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Brian Vazquez <brianvv@google.com>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Daniel Mack <daniel@zonque.org>,
        john fastabend <john.fastabend@gmail.com>,
        Petar Penkov <ppenkov@google.com>,
        Quentin Monnet <quentin@isovalent.com>,
        Sean Young <sean@mess.org>, Yonghong Song <yhs@fb.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 3, 2021 at 9:25 AM Jonathan Corbet <corbet@lwn.net> wrote:
>
> Joe Stringer <joe@cilium.io> writes:
>
> > Following that, the series enhances the python scripting around parsing
> > the descriptions from the header files and generating dedicated
> > ReStructured Text and troff output. Finally, to expose the new text and
> > reduce the likelihood of having it get out of date or break the docs
> > parser, it is added to the selftests and exposed through the kernel
> > documentation web pages.
>
> You can leave me off CC, but I have eyes everywhere :)

I realized a few minutes after sending that I had missed adding you
back on. Actually managed to send it from the right email account this
time though :-)

> Anyway, I like this version much better, thanks for making the
> adjustments.  Feel free to stick an
>
> Acked-by: Jonathan Corbet <corbet@lwn.net>

Thanks Jon, appreciate it.
