Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D03491B0488
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:36:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTIgJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:36:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIgI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:36:08 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6472FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:36:08 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id f12so6653067edn.12
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=TRc6V9MgExo+xVCaFm7hKJd8nS6HIP8AGzHbwUYqJNU=;
        b=mS+qFaJJFyvkWHnX42Uun8kax8utQBIxa50JtgvXN2LSqkN0MPEzA9Mqo6FRyl3i4T
         mVoFdwzjfGiM8UxMsqnAa/ac0/kFmE3InaGm/2VHdsjOeB8/+EBAOe7qwDZr0WXzslwz
         pMhyxNVr8qwKrGMTw48nXxnkS63nGnEOlsBKcLuEuHdq3bU6ORYZtwk/7wuEobt9RPlF
         S+zWUw1YWrK3xr9QJrcIed07hpFXj1JGD+TalGI/dFnKUF8ZBGsLM8x4hE2ZmpMRyzuU
         1C0ETgzZA5uQaIH0ftte4N2F9S8UqAiM4is6kPC33/ohztebmbSQQdDZ/lnzLfEQEByV
         45sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=TRc6V9MgExo+xVCaFm7hKJd8nS6HIP8AGzHbwUYqJNU=;
        b=pmcZWQ5CHe6kkLNpkeAom3W3cnl/XqIGHP777UM8Jdi8l95zPquY1o31ihxtL4Plx2
         a/tXIEs07aXDwJyFZaY7oj6+3i6QxIQVIEWhJ6aICOtLBQBABx6/H//yZUkUD8DkV3xV
         6bGG/6f09gNaOJSw/N0EJSjtc5wj4PWatngxmgfYrNMLYT2MdTPSc2kfinVr4JCCJ4Vm
         JdvIKaW6qERWaKbv2rUdHoaQGhKJFBi5+PUuZLHBDoUWhETuSouroYo7IooSg5zA3IY2
         O+bbosKsBVNiPE9fJLCW6bF0iFtDiM9TG1HY/Nx2D9Lnc2zKi7h/rTZYGaytNBS8j3f0
         4iaA==
X-Gm-Message-State: AGi0PuYOA53L3wiJv48pKkWbAGQvQX75wBgRR7f/9wei+Zfrs29HqTNf
        4o/rlXKDJGQZb+8gSeBVJQEt9xV0MXmStkJZdB4=
X-Google-Smtp-Source: APiQypLzDrgxdpyO3Kax3lC/eFJd84UaR7PC6J+NaNrM7bjpATrs+c9+zFj1WbCKkipO/e383j9bMGV9Kwa++vqGYi4=
X-Received: by 2002:a50:ec0c:: with SMTP id g12mr6919248edr.140.1587371766997;
 Mon, 20 Apr 2020 01:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064752.GA30145@Debian-50-lenny-64-minimal>
 <8e4c88c7-3b05-1ff5-1f21-814d43146cd3@gmail.com> <20200420082622.adselif4sjrzhzrp@jwilk.net>
In-Reply-To: <20200420082622.adselif4sjrzhzrp@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 10:35:55 +0200
Message-ID: <CAKgNAkghfX=UwxaYsXX+XMMhXLn+xw6HbPzjd-XDYR2ER-xQHw@mail.gmail.com>
Subject: Re: Errors in man pages, here: clone(2): Missing closing brackets
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 10:26, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-20, 08:34:
> >>Missing closing bracket in the following strings:
> >>
> >>msgid "B<EINVAL> (B<clone3>() only"
> >>
> >>msgid "B<EINVAL> (B<clone>() only"
> >
> >I can't find the problem text. I need more context.
> >Possibly the problem is already fixed upstream.
>
> It was fixed in bc03b11659ebf06ae88f41efecff7d94b0dd0d42.

Thanks, Jakub.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
