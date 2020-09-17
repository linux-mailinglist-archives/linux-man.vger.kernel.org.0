Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23DCA26D3B6
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 08:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726169AbgIQGdF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 02:33:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbgIQGdE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 02:33:04 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EBD8C06174A
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 23:33:04 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id x69so1233456oia.8
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 23:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=DMBoDEWAlXkGDAFBA7naRgZVNcH2+gqdKoUEGylGF8w=;
        b=QLnGCF0D0Uh3O8OXR8ezrdb/LQWw5/UzOlgpYEwgrOujW9dNV1tOzOLP4LAovX0O5q
         8lbv04CXqzM1e3QPdsfjwrGUacdDSxlfE/KvriMzNzzX5tn5gNNU28UP92lvPiHQX6sl
         3Qqc2qFpx2Sxdbkp/QF3raAtLeyrn8ZJ3MP+AZGbJ1Ml5R+aIENihmAv2y33JEBiVF4K
         Xd7DDfTEvUsCJW3xqGwj1yS0ejRSrLi+Ms+B+9zaWyc8GT0hXC42OA9b/ViFQe0TAYDi
         dtSrLgAD0c8qk8ENFfeOf66qbLVXHaM78q3b2TT1RrjzxLcYLu79DtXBB2OzYPSn3d0P
         ryng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=DMBoDEWAlXkGDAFBA7naRgZVNcH2+gqdKoUEGylGF8w=;
        b=JiPaw7/SPt69AjPFokFeVIxE7BScWgeFsfS1q1/1g3lGbFZFVvMQXreXvAqFN4KWUm
         h1aHTcDm0Y3NC9lmqHvfJCRNeHkttZtNXC78a2rzzqg5zKijJm4eKhB3dn0Zfr5sfvnQ
         QoX70Xq9l6lOeS7Sz7ArBSbiNbUwxe/afUyfBPo1vyORYZRTv1lKDdfdPU0pizFHYvim
         DGUlk2xr3SzfGqjJFmY4gjFZzv2kOr7xVKnp/dciBpEq4kxS1eI44PpD/PT/AmlhINLU
         O46uDQdU+DnVNacpTA3VvcKBJbM/T9zuGtqtvkl7Z5JeIx7qINByvGDNABPyM+MSkdvJ
         YQuA==
X-Gm-Message-State: AOAM530uv9oC9QbcMLb6vTVI40/7Wg5LXUbZJsY6DeTW20V/Kt98Bb9u
        wt4NDud2M3+VmK9+JRKbSnbFtWnWyT/Ia2yMK9A=
X-Google-Smtp-Source: ABdhPJxRPzrBdD9O3eQN1QAbtu6dM7fC7eJccCFauPt7HwYndHQDU2xd1baup/0uIHmsd1xn8Ar3pv7vC3mgocBjVqs=
X-Received: by 2002:a54:458f:: with SMTP id z15mr3859979oib.148.1600324383993;
 Wed, 16 Sep 2020 23:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMneLzkwN9JTKUE-CsMOVPk_1J3PeuUjsQ8M_P7MXno56-O5QA@mail.gmail.com>
In-Reply-To: <CAMneLzkwN9JTKUE-CsMOVPk_1J3PeuUjsQ8M_P7MXno56-O5QA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 17 Sep 2020 08:32:52 +0200
Message-ID: <CAKgNAkg55Ou7DxArcypxQ+itL2WrHxD5NWSX6LkQV4n_++Wsjw@mail.gmail.com>
Subject: Re: getgroups(3p) typo
To:     Kevin Brebanov <kevin.brebanov@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kevin

On Thu, 16 Aug 2018 at 00:02, Kevin Brebanov <kevin.brebanov@gmail.com> wrote:
>
> Hi,
>
> It looks like the getgroups(3p) manpage has a typo.
> (http://man7.org/linux/man-pages/man3/getgroups.3p.html)
>
> Under the "Examples" section:
> ---
> int nogroups;
>
> ngroups = getgroups(ngroups_max, group);
> ---
>
> "nogroups" is declared but the return value of getgroups is assigned
> to "ngroups".

This is a bug in the upstream standard. I've filed bug reports:

https://austingroupbugs.net/view.php?id=1399
https://austingroupbugs.net/view.php?id=1400

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
