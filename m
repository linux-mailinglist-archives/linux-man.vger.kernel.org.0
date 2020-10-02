Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF1BC281106
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:12:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726010AbgJBLMc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725953AbgJBLMb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:12:31 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9842EC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 04:12:31 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id y5so967534otg.5
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 04:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=VzmH5aiG/VDxKVKq8QNnKqhxOdmVjcZhGWWtnRoQG7I=;
        b=IWiV2+gLLTPFt1qMd3MIjXTw5POwmOq4MJ0ZPNlJ5+ACN9E/ZVmnL8ehjRNkKK6FiF
         8nNyXSpJal8znhaBhQWIeqfoQbVqpfFnbz/r2B1zhWozMXU1Xw4LS6nsPsYkgRNb5jNC
         ActkbVS/dJBXuPT4Q/LEcY3/ItrA9FzfcJn4wCWtfuoBI5hg/hA3/3/0EApzV4MX0u9w
         aQdo1iZXtG3dDau5JWk54uMWRXR6DSVwIeUYEjUesXzP3I2e1dIfguLcpoDJhbHBpju+
         CXs3P5v3mmiDByCBVr/5mN0xVww0UwlgB5y89nUU7Kvm16EIt7mlXmJMyTwmsulwvsDn
         RjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=VzmH5aiG/VDxKVKq8QNnKqhxOdmVjcZhGWWtnRoQG7I=;
        b=RQIOsGkM9sFrugnNqlSGJioxaq1ynmWYc9CpvUfuCDLKIYaouDoefDtM+wz82oEtAx
         Zhnj2z6XIT6CZNrDNFghbPykV5412mkK0m1CKkMpzEo6X817nE8IDxnnI9yDjlZxH9D1
         s34HFrZF1q4fbqVwi5k3ekd80IQ0R8I2XY/j+hrKM1cLaw6BsNRTQpT/wxkmeVoVlWZU
         dO17F3BVyeP8+Zlo4kM/XA4o/FMJB0XCf35oLlqE5ZXFTFG5ij8k7btbVMKkeQicX8xg
         EIQoNgaOOOJIwOuwhqe63y4kocobIGQi0skER4pzOxlJxENjviV0mD29QU6eHeMbNpKE
         0YIA==
X-Gm-Message-State: AOAM530UMPqyHciO508ljxXpaVoFVgCG8IIp2EVi9HxaICCGBcNl5dVM
        VrgNyXBgGetWQnsODKmWVgS4thmXoQI0Ik7k5cA=
X-Google-Smtp-Source: ABdhPJymgVU2MerXHsqmcupJZRtWGdCwvnQKs9QOis4Si/Cf/JPOTnhSxSpEhQMGIuKbaxHU+dP1bXqGNw5iAinDci4=
X-Received: by 2002:a9d:2274:: with SMTP id o107mr1331797ota.323.1601637150841;
 Fri, 02 Oct 2020 04:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <20201002103027636420.e5d6e3ba@spg.tu-darmstadt.de>
In-Reply-To: <20201002103027636420.e5d6e3ba@spg.tu-darmstadt.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 2 Oct 2020 13:12:19 +0200
Message-ID: <CAKgNAkjVGqh7BKa3JnKSg6o5fQsqvKg4Om9q1t9uPih4a=BshA@mail.gmail.com>
Subject: Re: strsignal(3) mentions sys_siglist, which is gone
To:     Hauke Fath <hf@spg.tu-darmstadt.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Hauke,

On Fri, 2 Oct 2020 at 10:28, Hauke Fath <hf@spg.tu-darmstadt.de> wrote:
>
> Hi,
>
> strsignal(3) <https://man7.org/linux/man-pages/man3/strsignal.3.html>
> mentions sys_siglist[], which according to
> <https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=b1ccfc061feee9ce616444ded8e1cd5acf9fa97f>
> has been removed from glibc.
>
> Noted in Arch Linux, see
> <https://lists.archlinux.org/pipermail/arch-general/2020-October/048173.html>.

Thanks. There's actually more problems. Through some accident of
history, sys_siglist was documented in both psignal(3) and
strsignal(3). I've consolidated the discussion to strsignal(3) and
noted that sys_siglist is no longer exported by glibc since v2.32.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
