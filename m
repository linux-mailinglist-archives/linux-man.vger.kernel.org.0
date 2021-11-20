Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56917457D20
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 11:36:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231639AbhKTKjl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 05:39:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbhKTKjl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 05:39:41 -0500
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD60C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 02:36:38 -0800 (PST)
Received: by mail-il1-x12c.google.com with SMTP id t8so2833282ilu.8
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 02:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3mY28V44fV7nxPr0DKw086UeTTvb3OhLWwCW7tqxvyo=;
        b=KpUvGHz3GfBzCZDnHm855HrsRqgFPx+lxjErgHhydcoWZ0IzlYAQmn2cjJ5zpL5HWz
         3a5eFDSCWBYptcBdAEzbdPqN0Sbwjk9/0d5vt/lWChOT+L0nPPhz6pysmWZhUJZyYlMK
         joXRhS/X2Kj/A+R4JOlYfLsGXKAsrADzdywnsdNkbDsfcCeqBYS3gGejgNQdwDOWWe+r
         MbN+e3YW/qask4/nGBaBwdTwLgGE88jR9O+58u2s+/1JKpVtecskdBES2otVqzxDp4B1
         Fz9YMtDT52OwnZCweeAdwvXpmMG2Yl+p72Zq2xUmOJvMCPBw9qWqdogusVp/hfsj7Gb4
         ERCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3mY28V44fV7nxPr0DKw086UeTTvb3OhLWwCW7tqxvyo=;
        b=RfM4c3s2KDScZGcoFWsYAL/j/XXxbgXaitKb8BgbZziLGuYRyqgwvc1UpqY6N1BrQj
         kZPE8TkKfZI9pK7NGTXmMwy/kutpOXlURWbGpAqoWy6/ySLjKmNs4PDM1jZ4+zl+JSV/
         n1fwTCrywo9cmoQrUOIrMAJbwRzfdN3JZAL2XDWoldsl7nB4y6sm3BzWD99BZpcHS/es
         4VC2nYhxPGerutuukpsoMKpsDj0NLMy3QyNIwPVAdfVs4ANrTOT4KMz1I8Cfesby0Cpt
         wTLpFGSoN+84XLsLXNSqmCFyELjY/D4VSmjgS6D6eCL0roYtpK3CVTrBTNZVxP4mtPOp
         pAXQ==
X-Gm-Message-State: AOAM530KPnFHnHbawu3FzKhcUxcsDpE3e2S2NrguBpbKDoVcZjCCyQud
        gJyo+F1fXpHn0g/bwPrShO8v0GmJSSD4rjnZHkNv6fczDLc=
X-Google-Smtp-Source: ABdhPJydkJMJuye6lRtUDs+2NANXfm+I+HlNMPizH7Zl560uVIiOZF1rz6cgT5SbJHFze6BFWIBno8Cwq6oLm8eDqqk=
X-Received: by 2002:a05:6e02:1ba6:: with SMTP id n6mr9639925ili.254.1637404597457;
 Sat, 20 Nov 2021 02:36:37 -0800 (PST)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com>
In-Reply-To: <cover.1635135968.git.repnop@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 20 Nov 2021 12:36:26 +0200
Message-ID: <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
To:     Matthew Bobrowski <repnop@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
>
> Hi Michael,
>
> This patch series documents the new FAN_REPORT_PIDFD feature that is
> available from v5.15.
>
> Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> [0, 1] man page updates that are yet to be merged with upstream. That
> said, if you could please merge the FANOTIFY_UNPRIV updates first
> followed by the FAN_REPORT_PIDFD updates, that would be much
> appreciated.
>
> [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
>

Alejandro,

Is there any changes of getting those long due 5.13 fanotify update
patches merged?

Matthew,

For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
(I just rebased it to master again) and provide a branch, that Gabriel
and I could
base the next man page updates on.

Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
with fanotify_pidfd.

Thanks,
Amir.
