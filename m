Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52D522DB938
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 03:35:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726109AbgLPCew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 21:34:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726110AbgLPCew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 21:34:52 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F17CC061793
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 18:34:12 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id a9so44589049lfh.2
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 18:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MOHF+gl+OMMG1QgmH1V73+fyHVx0MkwzoVxV0JG8Lv4=;
        b=UPu4AGLueLqzTSIYqU9zfFBm4GlxC9GiHWclpWDDa/Q4HmYhRH3lve+WEsjYRN32OP
         JI7O5g8d1gUOxKuDoPdl8KtDvxlQNWLMPpSAYfcCnmC5qRhxmMWajRMZOvQay/7VFytW
         gcocwfkI8vk9Z1Ete5LvKqVuY4zIVR5OKZs03EIMnxC7jk3/rEiIx7dcKuh5sL8ta2+9
         BKb9WyPmXwtnKgsClhmqlsfQPT86nVSdBD3sFCa5dA0woCiaULnMe3QIneKWmgdeOUTE
         Xp1Z7eoWbeiImr3sXalcs2GYF1Yp1fAoyvp4OvSS+MwuOfu86ZiZ3hBqzUpGwhQVM41j
         YBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MOHF+gl+OMMG1QgmH1V73+fyHVx0MkwzoVxV0JG8Lv4=;
        b=iRF/MNbm+76mt3i1jVXqGhjzEV6FjTGF1VL+g9RGP0p2Epvm+lttL6aanvF0FK2Gl4
         mXCvkt6DQB9Pe9j28zHr0EUiG7Bjk1pDVZzzWQ4ul97sK8XaqL0+bWWwX0FPygHhFpZn
         SLgeliCmjkjuHs41aPuomqikF0X9+XJaypprH0YvBeoRcRavXT0TFo2W7aMCmoeTV5JK
         rZ8bDfbL613f4dNmPcHcr222fqO1SUkQOyfCHKd/RLH1buqlKS7z4T8jJcYK8OQM/amY
         Z4o3oXGryqU0RD910U7Wo2ur+fBwk5XF0M1KALH+5JUxZaLkfNrYFkh2lNFgf5dempFh
         qmEQ==
X-Gm-Message-State: AOAM532qZYqL16Qx9yXRpt/z4YazF4owVU45l/+hKxA2ygRq9VwiznFd
        AxFF0zB4GSU3VNYntNEWnoHAKqofMY98YFmlZCgR3Q==
X-Google-Smtp-Source: ABdhPJwbunInmrnvmwAUoXogNkc3hzOmkqVwILIDiVk5ZmNQDWo0gIvrLQZ9NbTUm4ZvCdP6dVtg/cInyWGfmv1GnXU=
X-Received: by 2002:a19:4c84:: with SMTP id z126mr11398098lfa.69.1608086050251;
 Tue, 15 Dec 2020 18:34:10 -0800 (PST)
MIME-Version: 1.0
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <X9lBp3BHbwcTmDqb@pc.thejh.net> <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
 <d38c5e8b-1653-d89a-a0c8-b95cb1844fba@gmail.com> <CAG48ez0y21uWBDuaczLMxLPpFTKABrgm+-aqLb-0a4rHuOCX-g@mail.gmail.com>
 <5062fe43-ca37-134f-89ad-57fbd8c312ba@softwarecrafters.com>
In-Reply-To: <5062fe43-ca37-134f-89ad-57fbd8c312ba@softwarecrafters.com>
From:   Jann Horn <jannh@google.com>
Date:   Wed, 16 Dec 2020 03:33:43 +0100
Message-ID: <CAG48ez2g=U-H56g6VebQCiSXGg+bVvhBA5yfwymNxVYAGEJJcA@mail.gmail.com>
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     Ted Estes <ted@softwarecrafters.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jann Horn <jann@thejh.net>, Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 16, 2020 at 3:21 AM Ted Estes <ted@softwarecrafters.com> wrote:
> On 12/15/2020 6:01 PM, Jann Horn wrote:
> > On Wed, Dec 16, 2020 at 12:25 AM Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >> On 12/16/20 12:23 AM, Alejandro Colomar (man-pages) wrote:
> >>> On 12/16/20 12:07 AM, Jann Horn wrote:
> >>>> As the comment explains, you can't actually *attach*
> >>>> to another task in the same thread group; but that's
> >>>> not because of the ptrace-style access check rules,
> >>>> but because specifically *attaching* to another task
> >>>> in the same thread group doesn't work.
> > As I said, attaching indeed doesn't work. But that's not what "Ptrace
> > access mode checking" means. As the first sentence of that section
> > says:
> >
> > | Various parts of the kernel-user-space API (not just ptrace()
> > | operations), require so-called "ptrace access mode" checks,
> > | whose outcome determines whether an operation is
> > | permitted (or, in a  few cases,  causes  a "read" operation
> > | to return sanitized data).
> >
> > You can find these places by grepping for \bptrace_may_access\b -
> > operations like e.g. the get_robust_list() syscall will always succeed
> > when inspecting other tasks in the caller's thread group thanks to
> > this rule.
>
> Ah, yes.  I missed that back reference while trying to digest that
> rather meaty man page.  A grep on the man page source tree does show a
> number of references to "ptrace access mode".
>
> That said, the ptrace(2) man page also directly references the ptrace
> access mode check under both PTRACE_ATTACH and PTACE_SEIZE:
>
> | Permission to perform a PTRACE_ATTACH is governed by a ptrace | access
> mode PTRACE_MODE_ATTACH_REALCREDS check; see below. As confirmed, the
> "same thread group" rule does not apply to either of those operations. A
> re-wording of rule 1 similar to this might help avoid confusion: 1. If
> the calling thread and the target thread are in the same thread group:
> a. For ptrace() called with PTRACE_ATTACH or PTRACE_SEIZE, access is
> NEVER allowed. b. For all other so-called "ptrace access mode checks",
> access is ALWAYS allowed. --Ted

Yeah, maybe. OTOH I'm not sure whether it really makes sense to
explain this as being part of a security check, or whether it should
be explained separately as a restriction on PTRACE_ATTACH and
PTRACE_SEIZE (with a note like "(irrelevant for ptrace attachment)" on
rule 1). But I don't feel strongly about it either way.
