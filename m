Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9F732C776
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:11:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244533AbhCDAcC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:32:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353593AbhCDAFJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 19:05:09 -0500
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB466C0617A9
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 15:51:07 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id e17so6132201oow.4
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 15:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cilium-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=E/wr0fT0I7yiXwtdsqEsPqFrJ61emPLJgrDzqVvsCwc=;
        b=Rk23ty4+bc5BV6kqWSsua/rctvyP75yV3bfEv2fvBR0l+li24kdj5a2bFVJnqUMAjv
         SdnkUHdOrr7+ehIz1rD1YDtnJ4DhRqspOhwuLH37k+1iwjeYf0n/EDrTvbxcf9oJ48XA
         /Dwcc7UsGU8X3vB5lE+BXnhL/wdTaeuaNS4jd63P+vcevgmU0QaEQSNqb9g/nvlZC1YM
         zNHEnoZKoTN4XPvRTLXJp3tBo6tq4nyre7ooTDs3YMfKuLSa6TyhsXpRAiWcM38b67Dt
         KzH75JKwvI5RroFYCH97HV/Ez4busEbTOUpAmWMQ33pQC5ZiAfrEE5/J+KoTT+ehSq0z
         pD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=E/wr0fT0I7yiXwtdsqEsPqFrJ61emPLJgrDzqVvsCwc=;
        b=NXWlRx5SG6mt1I2zbSE/WMKI+qG8AiQ2phkFJBjEDl4pFoFGBgbPjH6wxUPLG/I6TQ
         uxtv+JSXyywiJnrJHrypsNSKe+WO+hJ+YWSccsCPISJR1gUNJQHJQ70tQPPdlJxAVsOo
         2xUfFFd/ci3JifJIv+bX+PuCMReR0mKqruQzrAovzWBPvOpkH7F4zSaV7iCU2VualL+T
         C1pwtrzyHJqIvyK5uKBok7cyJ9mD7Fq9bBT6oyEnMlikBN9XF5nFqZNTaJirrdLblvq+
         9TRcbEF64Q7g/uS54tSX0sjEBJdofsLoGnoOSJsE8wB2du0wLtvDONUM7GSAk3p108l3
         qCMA==
X-Gm-Message-State: AOAM530cBz/c9QfFHsLVzhhmEIvvEMnylEPaWGVJ2rvLKLb1hMY5GaVj
        1bugsxwCE4rAB7QmWqbsIUe42vwGuQFk3M4Ixgz24w==
X-Google-Smtp-Source: ABdhPJwVmc2156RMPrmhrO69/wE7ilvgnrBhCrPXsfMwzYNLZG0DtDXU3w4tN/jdvhorW978WFVzqxZ3ivV0zLv+Yaw=
X-Received: by 2002:a4a:ac49:: with SMTP id q9mr1226251oon.73.1614815466599;
 Wed, 03 Mar 2021 15:51:06 -0800 (PST)
MIME-Version: 1.0
References: <20210302171947.2268128-1-joe@cilium.io> <20210302171947.2268128-14-joe@cilium.io>
 <0c5a3a41-2df2-2d54-80d5-00a9951074fb@fb.com>
In-Reply-To: <0c5a3a41-2df2-2d54-80d5-00a9951074fb@fb.com>
From:   Joe Stringer <joe@cilium.io>
Date:   Wed, 3 Mar 2021 15:50:56 -0800
Message-ID: <CADa=Ryw+qV=bVYkGj+9WkS6T_pGCBc4cpg6KnkoQg1wRfwwXNQ@mail.gmail.com>
Subject: Re: [PATCHv2 bpf-next 13/15] selftests/bpf: Test syscall command parsing
To:     Yonghong Song <yhs@fb.com>
Cc:     Joe Stringer <joe@cilium.io>, bpf <bpf@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Alexei Starovoitov <ast@kernel.org>, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org,
        =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
        Quentin Monnet <quentin@isovalent.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 3, 2021 at 2:23 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 3/2/21 9:19 AM, Joe Stringer wrote:
> > Add building of the bpf(2) syscall commands documentation as part of th=
e
> > docs building step in the build. This allows us to pick up on potential
> > parse errors from the docs generator script as part of selftests.
> >
> > The generated manual pages here are not intended for distribution, they
> > are just a fragment that can be integrated into the other static text o=
f
> > bpf(2) to form the full manual page.
>
> I tried and the generated bpf(2) man page looks like:
>
> BPF(2)
>
>                           BPF(2)
>
> NAME
>         bpf - Perform a command on an extended BPF object
>
> COMMANDS
>         BPF_MAP_CREATE
>
>                Description
>                       Create  a map and return a file descriptor that
> refers to the map. The close-on-exec file descriptor flag (see fcntl(2))
> is automatically enabled for the
>                       new file descriptor.
>
>                       Applying close(2) to the file descriptor returned
> by BPF_MAP_CREATE will delete the map (but see NOTES).
>
>                Return A new file descriptor (a nonnegative integer), or
> -1 if an error occurred (in which case, errno is set appropriately).
>
>         BPF_MAP_LOOKUP_ELEM
> ...
>         BPF_PROG_BIND_MAP
>
>                Description
>                       Bind a map to the lifetime of an eBPF program.
>
>                       The map identified by map_fd is bound to the
> program identified by prog_fd and only released when prog_fd is
> released. This may be used  in  cases  where
>                       metadata  should  be  associated  with  a  program
>   which otherwise does not contain any references to the map (for
> example, embedded in the eBPF program
>                       instructions).
>
>                Return Returns zero on success. On error, -1 is returned
> and errno is set appropriately.
>
>
> Yes, this needs to be integrated into the real man page. But this is
> already great so people can see latest bpf latest features without
> going to the source code. Thanks!

:party-parrot:

Yeah I think the step around integrating into the real man page is an
area that folks may have opinions on and I'm CC'ing Michael here in
particular, but ultimately that manual is currently managed in the
upstream manpages tree so nothing actionable from this series,
absolute simplest is for someone (is that me?) to just package this
hunk up and submit it to the upstream tree every once in a while.
Slightly more elaborate would involve integrating the static text with
this generated text somewhere (either kernel tree or manpages tree)
and have someone run a cron job to generate & submit the changes.
Could be another option, these are the obvious ones that come to mind.

> >
> > Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > Reviewed-by: Quentin Monnet <quentin@isovalent.com>
> > Signed-off-by: Joe Stringer <joe@cilium.io>
>
> Acked-by: Yonghong Song <yhs@fb.com>
