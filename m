Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79E1223D0CD
	for <lists+linux-man@lfdr.de>; Wed,  5 Aug 2020 21:53:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728320AbgHETxU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Aug 2020 15:53:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727871AbgHEQuU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Aug 2020 12:50:20 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5C5AC061A1D
        for <linux-man@vger.kernel.org>; Wed,  5 Aug 2020 04:21:13 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id c2so26352867edx.8
        for <linux-man@vger.kernel.org>; Wed, 05 Aug 2020 04:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Mnr6e6Prt3cAG4hQcPqDlTpqD25F8aoAn5XMFSneQUs=;
        b=OW/i5qfu3Feb2HDqcowZD30pqFA7KVcdRi/Rx6pq6HjYSfWwcBBX2lx+YhVNrlVZ88
         yktffH/XYXeR8cuJR+K7vh0P8+rsCT6S1kOb8UaawQkTvmJAcWckIKHL2dTDbGBRs3ag
         H7DwB+qXVQdnshYswlwNhCLrGNNmE+g3epjjK7TBtrJ4Bye2zbyVztMFfrva2bhuilXI
         xD8hn7tHjPxiy0EQM4yKRLuVsS2iAmy6lVZqXhlVXMucJ9x+Iy08JJnNTEHhzSqu/iMA
         Ua9j20gc4LnB9w16KoGLCQMraa//rrtYjDnskxjnDewTYa525vUiUCQqbl+bMB5rOux7
         gh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Mnr6e6Prt3cAG4hQcPqDlTpqD25F8aoAn5XMFSneQUs=;
        b=Dyl7abvKU8GpYFPgtgEx4QF+Ak6ts9QDK7838dqHKoE43zAvjKUcg/GydIuO8hCxer
         V4MAu/BNPY9KEth/AXgk94EygmMPbBVp9LDr2lg76M4PadQuQKS8+ste9F2x3uauu6Hx
         q2z0Gdi/X7JnzTpxzGgsuDD3gdcpOJ4+wZFai1PbevCyOnELpZYSdNjvwHfdSPk4Ij7/
         meqnqG9iEe9pj36IfLSbUNK4gTOkwZkfbYPRAHQbxVm7QEtboNC7zhVVfLUzo1wylXJ7
         6ux85LtcsSywZgt6CMXeIINVScGowEQuBj2s827Wxw1kYKc9OiV2E4ATm6Q3njBBxnOV
         1JKw==
X-Gm-Message-State: AOAM533Usn/TMfvY2rayqegoQEcOJOztsK+sRXn2L/MXa7xY8/xvlIfH
        NdtuUSXi9uTB063+gXGbx09fTci/l6J2du+9gRY=
X-Google-Smtp-Source: ABdhPJyhnTtJoM0pHcLI3xJQMUBUIC5WDBuDuT9UVXgcQ7XTOVkSRjqAKzqFVuRpF2z+TKDHOkzfh67T1WzWKnt35MY=
X-Received: by 2002:a05:6402:1ac8:: with SMTP id ba8mr2189994edb.316.1596626472082;
 Wed, 05 Aug 2020 04:21:12 -0700 (PDT)
MIME-Version: 1.0
From:   Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Wed, 5 Aug 2020 13:21:01 +0200
Message-ID: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
Subject: Pseudoterminal terminology in POSIX
To:     austin-group-l@opengroup.org
Cc:     "Carlos O'Donell" <carlos@redhat.com>,
        Zack Weinberg <zackw@panix.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Andrew Josey <ajosey@opengroup.org>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>,
        Elliot Hughes <enh@google.com>,
        libc-alpha <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Elliot Hughes and I both noticed a point from "Minutes of the 3rd August 2020
Teleconference":

[[
On Tue, Aug 4, 2020 at 5:52 PM Andrew Josey <ajosey@opengroup.org> wrote:
>
> All
> Enclosed are the minutes of yesterdays teleconference
> regards
> Andrew

[...]

> * General news
>
> We discussed terminology usage, in particuler terms such as
> master/slave, blacklist/whitelist.  It was agreed some terminology
> for pseudo-terminals could be better described using more functionally
> descriptive terms, but the details of this are left to a future bug
> report.  Andrew and Geoff took an action to investigate further
> and come back with an analysis.
]]

I see that Elliot already replied to the Minutes with some thoughts
about this. I had already been working on thismail on the topic, which
reiterates some details that Elliot gave, but also adds some
information, and brings a lot of relevant people into CC. (I've
already notified those people that only subscribers can post to the
Austin list, and presumably those not already subscribed will
subscribe if they want to add to the discussion.)

The master-slave terminology with respect to pseudoterminals has
recently been under active discussion in the GNU C library and Linux
man-pages mailing lists (see [1]). Currently, we are considering at
least one possible proposal for a language change, but there may yet
be others. In any case, I and others thought it would be a wise idea
to involve TOG in this discussion, so that, ideally, we could come up
with a shared standard for replacement terminology.

The proposal that has seen some discussion, and met with some positive
feedback, is [2]. The concept was proposed by Elliot, inspired by a
similar change that was made in relevant golang libraries; I've
written an implementation of the idea (i.e., a proposed patch) for the
Linux manual pages (again, see [2]).

The essence of the idea is simple. Let's not invent completely new
terms, but rather rework existing (familiar) terminology a little, as
follows:

    pseudoterminal (device) ==> "pseudoterminal device pair"

   slave ==> "terminal device"
           (or "terminal end of the pseudoterminal device pair")

    master ==> "pseudoterminal device"
           (or "pseudoterminal end of the pseudoterminal device pair")

The resulting language (as it appears in the proposed changes for the
Linux manual pages) is reasonably clear, albeit a little clunky in
places (wordings like "the (pseudo)terminal end of the pseudoterminal
device pair" are clear, but a little verbose).

Aside from the obvious points (raising a bug on the Austin bug
tracker, and proposing line edits to the standard), is there anything
else that we can do to help along the process of changing the
terminology in POSIX? Also, any feedback on the proposal in [2] would be
welcome.

With best regards,

Michael Kerrisk

[1] https://sourceware.org/pipermail/libc-alpha/2020-July/115792.html

[2] https://lore.kernel.org/linux-man/b3b4cf95-5eaa-0b4e-34cc-1a855e7148b6@gmail.com/
