Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CFC43D99BB
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 01:49:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232730AbhG1Xti (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 19:49:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232609AbhG1Xth (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 19:49:37 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A05B8C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 16:49:34 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id ec13so5059535edb.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 16:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs.unc.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UfXx79ikTlEAqO57iEbIDnftR4zIJj78bidzoobzDT0=;
        b=AX7qoB/KHW9mmPRwwt5GsXMyHjbsKu2UIR8RkJSKOUTqawgYbong6SgbvToTve10/d
         5g7mx5/MY7cJgnmo1ED2rUf50kdIxxGn1EGeT1y20p+xs/CvY5Dutc+DAsGhFAhgaz2X
         wBgk2YEtwkuCjyXh4c1ngDNibsaES98lXHpeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UfXx79ikTlEAqO57iEbIDnftR4zIJj78bidzoobzDT0=;
        b=N96/5xkFnUB4w8CxwS6hIcP3hNitTHMlEiiCPUF4BcoDbbD81thOnmB5qqVFL5qNC1
         OELSkES25ylFM0hXDt5tNBBHkW6rxmpYSI0IKkRJpn9cjHISLU7XvFtcPr/OS1r95zoO
         ourN+20R3zxzkUGgnW3DZltLWjcGQO//Rz3tgOk/+HDXmF4aWxSXW70Iic4sW9EUpZ0U
         tr70Zxj2yoCfRf0/TgTb4WP6HAu5TCMyP180A1ZmficjiBDk1KvGmlE66E0FnniqsRVN
         +yqjrbq/KjH/cBMMo5X2gJpVCwo+6+ePYSB7rF97NWACbyWbmSpk8cmXGYAH6thfhkLl
         B3Uw==
X-Gm-Message-State: AOAM531SEfzBqT8ojERD1qiqBlPBUlSL5SWIMSikMJi7WuOxL7clXcBA
        nTAzOyfMjcKAuAR5sggWzGoOV3fF/uOrOkTWJR5RbQ==
X-Google-Smtp-Source: ABdhPJzeeJ0z2f+7e/POrGSINloY6Ahyc2BDKa2seK+19fMiDZqUv8T/o7MJgc/7781n/pQf0RiIVGR0PZ3xGKem0FQ=
X-Received: by 2002:aa7:d6cf:: with SMTP id x15mr2715811edr.59.1627516173303;
 Wed, 28 Jul 2021 16:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210724045855.82231-1-sagarmp@cs.unc.edu> <92994df0-fec0-3e5b-74ea-14a7d4a31411@gmail.com>
 <CAMGmevCXTOx+WgnJAzob8TVP5_Zi=T0W9=jcJSWQzAjRsendXA@mail.gmail.com> <5dfa520b-feab-6b80-8d58-5751bc7d0a03@gmail.com>
In-Reply-To: <5dfa520b-feab-6b80-8d58-5751bc7d0a03@gmail.com>
From:   Sagar Patel <sagarmp@cs.unc.edu>
Date:   Wed, 28 Jul 2021 19:49:22 -0400
Message-ID: <CAMGmevDJp9Nk7jy60g8Og6uquz8Q62BVmwocJvafPqP0fmWTpg@mail.gmail.com>
Subject: Re: [PATCH] tkill.2: tfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> >> Oops, my bad!  Patch applied.
> >
> > If you don't mind me asking, where has the patch been applied? I don't
> > see it on the kernel.org repo [1].
>
> Sure, I don't yet have a kernel account, so my tree is on github:
> <https://github.com/alejandro-colomar/man-pages>.
>
> I forwarded it right now in a patch set to Michael's tree (the one in
> kernel.org).

Ah, I see now. Thanks for explaining the process!

Cheers,
---Sagar Patel
