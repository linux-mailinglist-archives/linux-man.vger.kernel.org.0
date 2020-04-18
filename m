Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 716A71AEA7F
	for <lists+linux-man@lfdr.de>; Sat, 18 Apr 2020 09:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725856AbgDRHgY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Apr 2020 03:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725849AbgDRHgX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Apr 2020 03:36:23 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6004AC061A0C
        for <linux-man@vger.kernel.org>; Sat, 18 Apr 2020 00:36:23 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id q8so3363686eja.2
        for <linux-man@vger.kernel.org>; Sat, 18 Apr 2020 00:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=IxJLj8z/i2N5xso2UlCUGfr8UJaACtwLGO5Pu3lWbPc=;
        b=GTL1P63e22VFEbOVao48yd2SWJ6cuCh8j+O7qJoyfDlq5AlEMePrDWC1BsoBSVcbF1
         T9XjiML1JgD0DqKXXxBENAn1pzdVB/PD+CF3Fnm67JLch7EWbCsTD+b8PhZN+fTpTDu1
         qu9FgwqUw57zsYUcWg0OE/6wJ7nFcC67aqKvYHd6OpIMRgVkFf6mSkYpIi7nCqULdLjx
         r+pKHUJsXsxG6lKnCn9ditc+p2GTI9Cm75ep9xEA2hKSw60/0GHRIjSLX5AG+6Qe+QX1
         ZiNKj3+Ja6gYJjDKY83OWtySwSu790wqWpy2GMFkH7Xs9H3gOn5gSu5qiZ/LTUZjWRTV
         Nubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=IxJLj8z/i2N5xso2UlCUGfr8UJaACtwLGO5Pu3lWbPc=;
        b=FnyJ2RPJSJsqN2e+2umhn9W7RJ4sS9BY97Sy4qNc+nPkNYQ+kBxY3fYTlrThF8u4x+
         nLHhCZ3o3v4eok92sWCLopypLw7pSLLBbN+I0BhIwknk8xRblHc8XECPI/py5Atfo8Yu
         2qgLzCGgz9VMfdtA2JKNqftF4EKF8zLm47MYVhtXWeQQBfhjlv+d6MCMVF7uFJodaj7M
         BDNze21j+6RUgLdy0IdZMduLspn+L+VpiRuJ1+Dl9kbWZU6KRiX5SBeoSNqt26ejQ+4n
         OWIeF+GiW1un+n7qunfydgn9s8OOyFF0teiRNMUJK8Zt0XYPlIsZHpJg4nuIfncU8GRB
         SHHQ==
X-Gm-Message-State: AGi0PuZN/e16z1xpKrseX+JFltteGjkUwL8EAuKHmZ2z/SVXKH9zTzUd
        RminesUe1FbSsyGJeQbmbCBOYuhwUksPfv1V0Fg=
X-Google-Smtp-Source: APiQypIJrdTNIATKkSxz8ZtALpD50kK/3I+x5i53uKvUHhCqo41xbR+m9IU51BnLjp5kiHUI8LFT7ec7lWCOVCU3yBM=
X-Received: by 2002:a17:906:54cd:: with SMTP id c13mr6460277ejp.307.1587195381922;
 Sat, 18 Apr 2020 00:36:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190729125843.6319-1-rpalethorpe@suse.com> <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
 <87h7xii6n3.fsf@our.domain.is.not.set> <CAKgNAkidUjC2=XzRVqfsjrtZQA8gN36onSFX=jJMr2DjM-CvYQ@mail.gmail.com>
In-Reply-To: <CAKgNAkidUjC2=XzRVqfsjrtZQA8gN36onSFX=jJMr2DjM-CvYQ@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 18 Apr 2020 09:36:10 +0200
Message-ID: <CAKgNAkiOkyFwwiMS1xLHmiJm4AK8UGD1tWVkOsE=s3D1CjQ=fA@mail.gmail.com>
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     rpalethorpe@suse.de
Cc:     Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man <linux-man@vger.kernel.org>,
        David Miller <davem@davemloft.net>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Alexei Starovoitov <alexei.starovoitov@gmail.com>,
        Quentin Monnet <quentin@isovalent.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Adding in correct address for Quentin, since his address has changed]

On Sat, 18 Apr 2020 at 09:34, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> [CC += Quentin]
>
> Hello Richard (and Quentin, Daniel, Alexei),
>
> On Fri, 17 Apr 2020 at 15:28, Richard Palethorpe <rpalethorpe@suse.de> wrote:
> >
> > Hello Michael,
> >
> > Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> writes:
> >
> > > Hello Richard,
> > >
> > > On 7/29/19 2:58 PM, Richard Palethorpe wrote:
> > >> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
> > >> under some circumstances.
> > >
> > > Thanks. I have (at last) applied this patch.
> >
> > :-)
> >
> > >
> > > In Linux 4.4, the allowed BPF helper functions that could
> > > be called was, I think, governed by a check in sk_filter_func_proto().
> > > Nowadays (Linux 5.6), it is, I think, governed by the check in
> > > sk_filter_func_proto(). If that is the case, then probably there
> >
> > It looks like bpf_base_func_proto() and sk_filter_func_proto(). Possibly
> > also cg_skb_func_proto() because it seems normal users can also attach a
> > cgroup skb filter program type (looking at bpf_prog_load() in syscall.c
> > for 5.7).
>
> Thanks for the pointer to bpf_prog_load(). But, I must admit I'm
> having trouble to follow the code. Can you say some more about how you
> deduce the involvement of sk_filter_func_proto() and
> cg_skb_func_proto()?
>
> > > are one or two more helper functions to be added to the list
> > > (e.g., get_numa_node_id, map_push_elem, map_pop_elem).
> > > Do you agree with my analysis?
> >
> > Yes, at least those. IMO this is such a fast moving target it might be
> > best to direct users towards <linux/bpf.h>.
>
> Are you aware of bpf-helpers(7) [1], which is generated [2] from that
> file? It seems like this would be the place to document which helpers
> can be used by unprivileged processes.
>
> Quentin, Daniel, Alexei, do you have any thoughts here?
>
> Thanks,
>
> Michael
>
> [1] http://man7.org/linux/man-pages/man7/bpf-helpers.7.html
> [2] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=53666f6c30451cde022f65d35a8d448f5a7132ba
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
