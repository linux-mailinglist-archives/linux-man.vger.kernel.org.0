Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33A9133A870
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 23:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbhCNWEp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 18:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbhCNWEh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 18:04:37 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3334C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 15:04:37 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id t16so6195767ott.3
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 15:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=j2rMhwvp0424cEY4fRGWRHncfhj7EaF3xJgDXl738U8=;
        b=T1pKaLzBJB6D10Pg1f8wzNA/3aquzcCzvH3Ge+lEP7Z6GO46PhqamFXxcH/Ytep42L
         tnKttx+O/q2IvoAP3ewPc6nBTgGmewmubbJR+7saIaTkN9pO3MBrHHDqxQGDM4FoK9H8
         4ZJT15TFaj8hyRNceErRV0gfyjdhbRlskaKHRJYvr+Vi7PX3YPNFlHYxB025zcERBrSm
         HHiKdKZ2G9K3d7Ox1odjCWXV6ZxYmJVO8VOFy5bdnh6BDgSBdg+3KSv6NlkJAVz/un3B
         /Tp2eZiE/E7zi1KHvwOFUw6aQEKxdziiwgzbMlgGcjzlUkmXdG+WPQfU6Irl+Ll7Gymn
         XqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=j2rMhwvp0424cEY4fRGWRHncfhj7EaF3xJgDXl738U8=;
        b=FMHupAM9qBle1L5Uomtw5dZoqlAtN9dUXTGPaMOPI6SVJP+rN4JSpCqpMC63ieGVlY
         vxRvgyKnEbltfaD7CtgQlrvdg2GJMaWb/UfJDgeMehndVT3xBFUMvP17deIXj7z4UUE7
         BlQ/Ss2BHXM60FPwg9qldJTt0Ta6RLRCMxzjQKKsPzlOHG1aDTVRAEU53atu65mkuxXF
         5sIul7Wwr8jUBWn6ZGxs56Cr/KjjD2Buymg3Hsp623Meol/NDM057rd5e04oss/jWqv1
         KnRobuvsNy9sM91pfBw6zQSh5NejJYwF16OJ4MaYorogsBWh8Kkuks2Z2CV3dgLlhU3s
         X1wQ==
X-Gm-Message-State: AOAM530AN+W2IvLEBwGttaFUxaIVNK9Oxt9YDtMk2H45tgw34HRO04MI
        gms+XIwJQ2Xx3pJ6EYxL8uQIGdmYbBg2NcX4eroccfhh
X-Google-Smtp-Source: ABdhPJw2RlwkfK/Wt77ECUp3sMkBtDxcoiXrwdtBRKG0EfXy6ZktYbXBueIIkzcxRxkmD/ZUJRekTvR/Sq2adxejXIU=
X-Received: by 2002:a9d:12a4:: with SMTP id g33mr11737441otg.308.1615759477284;
 Sun, 14 Mar 2021 15:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <87v9a0wews.fsf@gmail.com>
In-Reply-To: <87v9a0wews.fsf@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 14 Mar 2021 23:04:26 +0100
Message-ID: <CAKgNAkh9XgUT+257TLtKBHsxuOHopqt76BL2xCz+JN2=u-xm=w@mail.gmail.com>
Subject: Re: user_namespaces(7) should mention overlay as mountable since
 Linux 5.11
To:     Szunti <szunti@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Tue, 9 Mar 2021 at 16:00, Szunti <szunti@gmail.com> wrote:
>
> user_namespaces lists in Capabilities section the filesystems that can
> be mount:
>
>   Holding  CAP_SYS_ADMIN  within  the  user  namespace that owns a process's
>   mount namespace allows that process to create bind mounts  and  mount  the
>   following types of filesystems:
>
>       * /proc (since Linux 3.8)
>       * /sys (since Linux 3.8)
>       * devpts (since Linux 3.9)
>       * tmpfs(5) (since Linux 3.9)
>       * ramfs (since Linux 3.9)
>       * mqueue (since Linux 3.9)
>       * bpf (since Linux 4.4)
>
> IUUC this list should add
>       * overlay (since Linux 5.11)

Could you add some info about how you discovered/verified this please.

That helps us check the details.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
