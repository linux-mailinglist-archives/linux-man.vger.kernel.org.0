Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10FB41AEA7E
	for <lists+linux-man@lfdr.de>; Sat, 18 Apr 2020 09:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725858AbgDRHeT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Apr 2020 03:34:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725849AbgDRHeS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Apr 2020 03:34:18 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F30CC061A0C
        for <linux-man@vger.kernel.org>; Sat, 18 Apr 2020 00:34:18 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id rh22so3322630ejb.12
        for <linux-man@vger.kernel.org>; Sat, 18 Apr 2020 00:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=JCI8KcftB+5unSK2X46EGu3rTpJZq3iHZKT8Ck1V6to=;
        b=lMg4nwZpPvxKCCO2DHT4IcluYrs4mUH10EBZrinPwSzfrc80v1nerA9hCqvdrmEdi0
         lfOyjrEkycBA3MLVMqEw+GqZ6NZGm68uAE4LbnuAiqlPyuK3j6g9eg7o9po+ABnpGtVs
         VHudf7c+VV2pzghocuEUjdDHKFQtS2oSR1QY4CFxwuzzcRoI/9eXhOCys0ph+oN3sIQl
         vmSsD2bo0SK2jFWTUAutPb0czT4gVZ3jIlz2QnboeHZcCvipsJ9WiaI79nW64hwr1yg5
         gC6yh4v8Yy6SXrdfqJ9r8Pw+/+FLs9rz7k0vq+sYds9ZhMJHuWt2IZcoT10cfi9JfiK8
         BD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=JCI8KcftB+5unSK2X46EGu3rTpJZq3iHZKT8Ck1V6to=;
        b=BQ4bgf88IOJ2DY+M5LVc/IAQWw9Q81YAQ6yXs/7UmbIirv61S8ZLmEV1Ai9WvKJIof
         DwmiyWoAh1mHlyCEXidlbc7OMy79+bcNRZ4p+mJDSkxMaUrnhl5W5FnLKAqCJ9xF5/ts
         V372bWuMcNCCv+TRaXuggJ79uPHl+dH3r30V31KVGyvoYRwvBlnuSffoauNgjIOtobMm
         pxvQZpIDYuhSc15Cos7c/Flv6ANbyleRBlFvn5zFWzW0NlCR6incxPp+Dvurai+Eismg
         FhVyt9A2OCgyJGlG/2Y45wFUCV/VmeUYYAPZiyEoMzLYmAQVh8Xgt1eesd1hqkldloxM
         mH4Q==
X-Gm-Message-State: AGi0PuYnek+vv6sXn9BKKQxEcCrSVSUPCr0CESG9VzJy9zgMCSFQH2fJ
        BCAKrw8kd3Ki5r62rb+ZLQYbFegsFoChjWhruFo=
X-Google-Smtp-Source: APiQypKGIKUxIQ5NqdV1Dv99FgeRMjCzaNDW7WMNwjw1aTEAJgRXPs3J7+xaayWAhMSRjRlL98ZDKf9WMzNtKKCr3i8=
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr6729651ejb.157.1587195256971;
 Sat, 18 Apr 2020 00:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190729125843.6319-1-rpalethorpe@suse.com> <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
 <87h7xii6n3.fsf@our.domain.is.not.set>
In-Reply-To: <87h7xii6n3.fsf@our.domain.is.not.set>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 18 Apr 2020 09:34:05 +0200
Message-ID: <CAKgNAkidUjC2=XzRVqfsjrtZQA8gN36onSFX=jJMr2DjM-CvYQ@mail.gmail.com>
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     rpalethorpe@suse.de
Cc:     Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man <linux-man@vger.kernel.org>,
        David Miller <davem@davemloft.net>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Quentin Monnet <quentin.monnet@netronome.com>,
        Alexei Starovoitov <alexei.starovoitov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Quentin]

Hello Richard (and Quentin, Daniel, Alexei),

On Fri, 17 Apr 2020 at 15:28, Richard Palethorpe <rpalethorpe@suse.de> wrote:
>
> Hello Michael,
>
> Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> writes:
>
> > Hello Richard,
> >
> > On 7/29/19 2:58 PM, Richard Palethorpe wrote:
> >> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
> >> under some circumstances.
> >
> > Thanks. I have (at last) applied this patch.
>
> :-)
>
> >
> > In Linux 4.4, the allowed BPF helper functions that could
> > be called was, I think, governed by a check in sk_filter_func_proto().
> > Nowadays (Linux 5.6), it is, I think, governed by the check in
> > sk_filter_func_proto(). If that is the case, then probably there
>
> It looks like bpf_base_func_proto() and sk_filter_func_proto(). Possibly
> also cg_skb_func_proto() because it seems normal users can also attach a
> cgroup skb filter program type (looking at bpf_prog_load() in syscall.c
> for 5.7).

Thanks for the pointer to bpf_prog_load(). But, I must admit I'm
having trouble to follow the code. Can you say some more about how you
deduce the involvement of sk_filter_func_proto() and
cg_skb_func_proto()?

> > are one or two more helper functions to be added to the list
> > (e.g., get_numa_node_id, map_push_elem, map_pop_elem).
> > Do you agree with my analysis?
>
> Yes, at least those. IMO this is such a fast moving target it might be
> best to direct users towards <linux/bpf.h>.

Are you aware of bpf-helpers(7) [1], which is generated [2] from that
file? It seems like this would be the place to document which helpers
can be used by unprivileged processes.

Quentin, Daniel, Alexei, do you have any thoughts here?

Thanks,

Michael

[1] http://man7.org/linux/man-pages/man7/bpf-helpers.7.html
[2] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=53666f6c30451cde022f65d35a8d448f5a7132ba


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
