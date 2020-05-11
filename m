Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8761CDE8B
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2020 17:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729119AbgEKPNd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 May 2020 11:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726687AbgEKPNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 May 2020 11:13:33 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B137FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 08:13:32 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id h15so5959980edv.2
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 08:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=89ywG/Z/F8kS+iY6l2I19V9MOxe5ypc4yb4/3nxwtFk=;
        b=rmktCUUXmnImP6oXBba6lESibCMQDUg9MtkraxPdP1s7kASSMDaQ9T7gVERGqRQVqa
         f0QKLPrDoJfcT4lHN1q5T8YlSEdaK/fgLwx1vvO3flTDjunE3/fb5kJwWheVUUselSoW
         jNM0J77irMyro13y1mcGs/niVkA4KHI6gWrzoRDRcCYEYcYlFuMFjQDiEgpd5a1C/kBk
         Dfcn6OlffNiWgz1u74qhW/TSJiiU2161J7jccB51FgnAa4uqJun23h8zaQbknpaL8WcG
         GK4sOfisF4w9f4WwHG0yBcsQKKDqE4aJekeQ1XeBsRrnV/i1wH3EqfVJi34oYMUlmp84
         VCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=89ywG/Z/F8kS+iY6l2I19V9MOxe5ypc4yb4/3nxwtFk=;
        b=jOJzuCr2XuwQuTnYaslE4AyrhzZJzNDQVuDH+g+vzoC3BcNISjUI+8TFb2tQCAlyrH
         UGqce/jCMiA2ccgwauqKYWZWMCn5zIzmZ3SUv/jENyx2NDQnntrp9VbBDP0psy4PikNH
         vE4UwFWC1UYmvvMj1N79lgha8Q/TQQDcBP7goyNgFgeCmQ47CWdMxpKNMFQ+qbP1QeJD
         TwG7UfOMgyNPTWbIRWpiQsOPzx+vaIjX8YABA2djB6U7ph0N/uHhZtCIBOBiBbfmI2Rp
         gLwNcAsRJl+QTwuU/IVdhJArafivLnyNi3NFDH8WAoi+mzxq3tGR9l8svcLYIXpe0WqB
         du4w==
X-Gm-Message-State: AGi0PuYh+hMsMGuIAnqhhylSI25gSu76YSRCtQdtFbWuKysDoab8ONVn
        OCMYLATmJmyoJ6FKltmDXhEwxPftGIUMPW6uftI=
X-Google-Smtp-Source: APiQypKguAT3Rlal3f0HW9YPBPLNMDM5yd+X3EdZbo5RyRUdOGTSUMCWWvdWdN0ChgP3Zu+Cqq5sIe/BLQ/v8RsSOus=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr14366544edq.367.1589210011374;
 Mon, 11 May 2020 08:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez3xjhUDd3qMm=cEa+asLvrQOXEpVs4_w6Y6MuerymMbCg@mail.gmail.com>
In-Reply-To: <CAG48ez3xjhUDd3qMm=cEa+asLvrQOXEpVs4_w6Y6MuerymMbCg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 11 May 2020 17:13:20 +0200
Message-ID: <CAKgNAkgsNkO1FieQ6a792WpLVeGuOeJTHar5Pe+OpG+L27UbMg@mail.gmail.com>
Subject: Re: open_tree() manpage submission fell through the cracks?
To:     Jann Horn <jannh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>, Petr Vorel <pvorel@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jann,

On Mon, 4 May 2020 at 13:18, Jann Horn <jannh@google.com> wrote:
>
> Hi!
>
> I noticed that open_tree() doesn't have a manpage yet; and while
> looking for a WIP manpage on the lists, I found this mail, which is
> from February, submits manpages for open_tree() and other related
> syscalls, and doesn't seem to have a response from you:
>
> https://lore.kernel.org/linux-fsdevel/20200207174236.18882-1-pvorel@suse.cz/
>
> I wonder whether maybe you haven't seen that mail in the first place.
> It was addressed to linux-man@vger.kernel.org as "To" and
> mtk.manpages@gmail.com as "Cc", which is the reverse of what's
> suggested at <https://www.kernel.org/doc/man-pages/patches.html>...
> maybe that runs into some filter on your side? Or maybe it just landed
> in a spam filter somewhere or something like that?

I saw it, but I've been catching up with a lot of other stuff, and
aware that dealing with these pages is likely to be a big block of
work.

It didn't help that the water was already muddy before Petr's mail.
Last year, David Woodhouse sent out seven different mails on the same
day to different lists, with different pages combined differently in
the patches (with most, but not all of the pages appearing twice in
different mails), with no explaining cover letter on the patches. I
asked David about this at the time, and he said he'd resend in a more
orderly fashion after seeing if he would get some feedback from what
he'd sent out. There was a little feedeback, but no response to that
feedback from David, and no follow-up patches :-(.

I've got some more time now, so can probably make some progress on
this. But I think we do need David to be actively involved, because
even after a quick glance at the pages I can see that I'll have a lot
of questions.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
