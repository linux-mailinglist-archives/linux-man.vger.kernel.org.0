Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D18221551C
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728508AbgGFKGs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:06:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728264AbgGFKGs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:06:48 -0400
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969EDC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:06:48 -0700 (PDT)
Received: by mail-ot1-x341.google.com with SMTP id e90so694656ote.1
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=RQcREDBsUzTKNoYccyFUGKZ9okpCj5ePJVpNZ/qEGIg=;
        b=U7QBRPZChLo33BmemDu03wTkofYChrOllC7oG5sZ0chB8JNZ7y3n9UKgBwnzY8ZZxi
         Rlkf3APE3mdhggIOCmAUnp1ezy294imLmV9Cf2mBfeV9mxvrrbGV/LtcRNBldAfGCY2L
         L4w2JqRNkRJL94VdkXSlcpX+7fX5IUiChzgIhIUZIwNdlDYo/SWFbKNFCu/chMKjoZll
         Z/nLZbfHYC+Tzc0PZhplMmlJ2x4cwZGZ0yPOhjvn88XOKeRpSEIa/ADxUvI98xUweIWk
         inDVMBApv90PAQ+S2cqsD/UoM/IF3whBe2lj+upikZ+8cSYjf9vfb28Iq+iqUz0uAvE8
         atLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=RQcREDBsUzTKNoYccyFUGKZ9okpCj5ePJVpNZ/qEGIg=;
        b=g2tQo8uRo1J12ieASqbnDFESyN1H7YTkTjb/1kfBqB/KANGIQ4zGWyyJzfo6J8hWbf
         C+NIAivIDJcxEVIghuDj6rI9xqwvkmwrBHK1n751SA5mtvsp6/CP+2u/ryvSVVnd3gGm
         JpP8kb8ppY6uTJCFxMVDjzC0rLpt6+e1YVXC4jETLXYlhZAeq8/M3yQDf5U1QnkY4vCH
         gTQMCpBALiNOQ2atDAwZBFfJfZmZ1T9MAj1X3IO+RU7fC6dH1/FTJM0FZCJroNLTojBW
         jSaYoDl4jSxVeSxvXJw+ufN286PtC4I46qMOvscncQG2PJwRoK2l8AV3ewM84ZLSKUPW
         KFkA==
X-Gm-Message-State: AOAM531HrsIjpsUeeEIFpvl9yLIeAo/OvPARpr7YWZ3oxu6Wyr9HKRYc
        dqJ1DBXnW5VsU3r6iO1cpU0DKRzM7e/qD1dsxZ3eNA==
X-Google-Smtp-Source: ABdhPJwX+HsDXtBx9MbnTZSeDwHRJXWc7RUZ2X09y0lMAmLYYGHgBUwJ3u8NKreocv9mw1oJqGqJWu4giM1fcXyp9AY=
X-Received: by 2002:a9d:66d7:: with SMTP id t23mr40070865otm.323.1594030007906;
 Mon, 06 Jul 2020 03:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064754.GA30260@Debian-50-lenny-64-minimal> <fd828f05-acd5-c848-431b-5e12f4587da3@gmail.com>
In-Reply-To: <fd828f05-acd5-c848-431b-5e12f4587da3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 6 Jul 2020 12:06:36 +0200
Message-ID: <CAKgNAkhHKEDTGQGfW+=MTKZR_uOf=2FR4mkRMX=m+xzht3mPyA@mail.gmail.com>
Subject: Re: Errors in man pages, here: dsp56k(4): Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Mon, 20 Apr 2020 at 08:35, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > Dear manpages maintainers.
> > the manpage-l10n project maintains a large number of translations of
> > man pages both from a large variety of sources (including manpages) as
> > well for a large variety of target languages.
> >
> > During their work translators notice different possible issues in the
> > original (english) man pages. Sometiems this is a straightforward
> > typo, sometimes a hard to read sentence, sometimes this is a convention
> > not held up and sometimes we simply do not understand the original.
> >
> > We use several distributions as sources and update regularly (at
> > least every 2 month). This means we are fairly recent (some
> > distributions like archlinux also update frequently) but might miss
> > the latest upstream version once a while, so the error might be
> > already fixed. We apologize and ask you to close the issue immediately
> > if this should be the case, but given the huge volume of projects and
> > the very limited number of volunteers we are not able to double check
> > each and every issue.
> >
> > Secondly we translators see the manpages in the neutral po format,
> > i.e. converted and harmonized, but not the original source (be it man,
> > groff, xml or other). So we cannot provide a true patch (where
> > possible), but only an approximation which you need to translate into
> > your source format.
> >
> > Finally the issues I'm reporting have accumulated over time and are
> > not always discovered by me, so sometimes my description of the
> > problem my be a bit limited - do not hesitate to ask so we can clarify
> > them.
> >
> > I'm now reporting the errors for your project. As requested, each
> > issue is sent in an unique mail for easier tracking on your side. If
> > future reports should use another channel, please let me know.
> >
> > **
> >
> > The formatting is inconsistent and incomplete:
> >
> > a) Formatting bold?
> >
> > msgid "#include E<lt>asm/dsp56k.hE<gt>\n"
> >
> >
> > b) In this string the formatting for dspk56k seems missing:
> > "The dsp56k device is a character device with major number 55 and minor "
> > "number 0."
> >
> >
> > c) No formatting, italic?
> > msgid "/dev/dsp56k"

Thanks for checking this!

Okay -- somewhere along the way I messed up. I had fixed (1) but not
(b) and (c). Fixed now.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
