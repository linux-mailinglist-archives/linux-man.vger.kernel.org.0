Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76E771F0862
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 21:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728351AbgFFTkA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 15:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728229AbgFFTkA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Jun 2020 15:40:00 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F65C03E96A
        for <linux-man@vger.kernel.org>; Sat,  6 Jun 2020 12:39:59 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id q19so13860463eja.7
        for <linux-man@vger.kernel.org>; Sat, 06 Jun 2020 12:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=FoHue+6bX4whdEA4VkPx8t6QihK7ZzZyeUBdtbTXrJA=;
        b=RjYR6wPo16Tr5ie8BygB50WcsKsIRHSY9WXwzmup6sLsbX2Yq9GKrj1V7CskgvOaOp
         CAESnVuwcY/gZknC3DaWDrANCHwsu9kvc467U9NsrD78BHLwDrcwRvyqhy+QEPHj61aY
         GNu6XJuSFXJ0wjlGRCPtD7Y4v6mTAdLvnZ9a7uOtR6nAZigHGnN8zFU4VvVwxV55w8Vg
         slLnSGYYCmZS97bTBod895GVADkjPNa2VvGoBou8IFs6OhH/k6XALmiAwgVYNCajAC7v
         KH7wG4AsAaf8HgstbEup9PZEqU5T46LUvMQoqbsGHeyajDLXKc2/Ht6E+9ZFxzZjklsC
         A5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=FoHue+6bX4whdEA4VkPx8t6QihK7ZzZyeUBdtbTXrJA=;
        b=Ny1glSt4Wvp1PMyEmxnZIwzSBhxETBhAPVRY8Rl242Xek80zdTpbIf3IMQaKDD4QHu
         ubwTf5vbd4x8rm3omO0v5i0kVhPCkmn7E5et77eB4CiWc/AIxTKtiN7quPfZ2PcvYenX
         VtatEEQucWwuLhYocdKHXEsxNmr4Kxr3E219uu1nwdrWhgKgwtvBpcS8S7Lg0bZtQt8u
         VmjzL2+0TQ959exvOcw+7CrkTSePdyIU9LR0GSljNv5y6ppzRDhGp7h/rcJrud/Cme5T
         XhXEw8IAy376LEBQKmTPg3I1kJBRN71HAMH2SIfzaIOr1H7IcX1DHLwj96aAlB82tkp4
         Imag==
X-Gm-Message-State: AOAM531BnmfR/XKD7AdkLmJDBqcLXjQOt/WVzZYdDRYHdaT//3rT1M6S
        bXKsRI9jLjC8NPGC9MFrN4ENvVRCQLLECI+ghJA=
X-Google-Smtp-Source: ABdhPJxQvNK7SGidYFjZPNO+PKU4vfxb0Efu3XG38l3RVKi5t0SWxiPuH989HxtWsecynaktxqEQ4FSmga7Yd8R/rdk=
X-Received: by 2002:a17:906:6d4b:: with SMTP id a11mr15032681ejt.108.1591472398474;
 Sat, 06 Jun 2020 12:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
 <20200606145003.x37j5hywuyn32lpf@jwilk.net> <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
 <20200606183210.2tx7rjuryxrnh7d3@jwilk.net>
In-Reply-To: <20200606183210.2tx7rjuryxrnh7d3@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 6 Jun 2020 21:39:45 +0200
Message-ID: <CAKgNAkiqfE4WETiE4VBMGpnDM0twtB0B6pbMyuoMT5+WWrpKvw@mail.gmail.com>
Subject: Re: core(5)
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 6 Jun 2020 at 20:32, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Jonny Grant <jg@jguk.org>, 2020-06-06, 16:45:
> >>>3) Could i ask to clarify my understanding. For this "The binary
> >>>being executed by the process does not have read permission enabled."
> >>>-- is this when the binary permissions are changed after it starts
> >>>running?
> >>No, AFAICS the permission check is done when the process starts.
> >How can the process start if the binary file doesn't have read
> >permissions enabled?
>
> It's a bit weird, but the kernel doesn't mind:
>
>    $ cp /bin/ls .
>    $ chmod a-r ls
>    $ ./ls -l ls
>    --wx--x--x 1 jwilk jwilk 138856 Jun  6 20:22 ls

And from core(5):

       There are various circumstances in which a core dump file  is  not
       produced:
       ...
       *  The binary being executed by the process  does  not  have  read
          permission enabled.

So, the binary can be executed, but not read, and will not do a core
dump (since that might be readable).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
