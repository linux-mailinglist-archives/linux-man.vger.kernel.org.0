Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8256B52C3
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 22:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231178AbjCJVZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 16:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231823AbjCJVY4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 16:24:56 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C57C12C801
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 13:24:14 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso7071888wmb.0
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 13:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678483451;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3KnsQiI8YzWcjE4HOg+Q9ggs1znpmtJ7/KedJaT/gko=;
        b=Gu943m8dOFKN7tDYwZtNzD1gsL5ZAGDZcsraEeH0vblNf8CLOFSzCcmLXOJ9UIFjUA
         ZsSQNUuh5HIJ79Iz4qr+4UuG/OMrbFu3gA1nf56PzdiloUMS1e3ITr1yFM8wcyMqipyl
         2myi+Azaulp7+TawbBWtZtMkTqj9sFjUKyCTcaC+F2jq2DI8tTcuC+3Nsm4btG+ix7XZ
         ktclVeDPV0f2bS/F0pfLR8Ff1CvolRmPmBrWD96DTly/Ptb5GMvDAmHbCB7+hHDp+b1T
         3fOLp024Lvb41XLf5Po9PGmLEPPeV/VLi82RJLsxQpvP0q13VXI3FMXJCtnKDCqXmGUl
         +VFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678483451;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3KnsQiI8YzWcjE4HOg+Q9ggs1znpmtJ7/KedJaT/gko=;
        b=YdoXFNQXQN18iK3yZ1sCP6AbiPvErBjJskz/qBlBw8B9IFqvBctxYMFT+InyNSVpx6
         y8yr+pGxjdUSmSLBwP/CoivFw4Mys++8EfQCo2ARnk7YY3Vt05OC13mHCYWQEcs1Bwk7
         7xLJFACotHqJdWzIaJWzAv5P4emOWS0z3+CUV/DqRiGxUyigJAsclvVR1llGknTifRv2
         s6RoMelwB7/9LJcwmrdqa9jHB7IA09Rc7CnGpYyMEw9Ey5W5P7GWt93BgaK2OuJ/SCkk
         prL1uE7JJY2XNO16cDkPjutxcGAvPKNL1ObH/WA5Lp16HedZP84FJ2deRosOIuCpZ2gp
         P+Gw==
X-Gm-Message-State: AO0yUKXWLE8YJFi1gKKxSxIvAfo67zEjj5wPVBiPRI8VmHXWveE1Sj4e
        acZINQgSdgbD0+M5MOnF5Bs=
X-Google-Smtp-Source: AK7set+IT+L7Lrd/z8gfuyOlghrZzMH8Sj8aQQBjAoX62PA/fs4yRxy6wEin5fVLBJvG3UU76zT9Ng==
X-Received: by 2002:a05:600c:3c83:b0:3ea:d620:57a7 with SMTP id bg3-20020a05600c3c8300b003ead62057a7mr3941850wmb.8.1678483451310;
        Fri, 10 Mar 2023 13:24:11 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id c3-20020a7bc843000000b003db0bb81b6asm963008wml.1.2023.03.10.13.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 13:24:10 -0800 (PST)
Date:   Fri, 10 Mar 2023 22:24:09 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Message-ID: <20230310.3e66b439b5a2@gnoack.org>
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <e7563a7c-98f2-0779-9283-1c0180615516@digikod.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e7563a7c-98f2-0779-9283-1c0180615516@digikod.net>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Mar 07, 2023 at 11:40:53PM +0100, Mickaël Salaün wrote:
> On 04/03/2023 18:16, Günther Noack wrote:
> > Code review threads for the "refer" feature:
> > * https://lore.kernel.org/all/20220506161102.525323-1-mic@digikod.net/ (initial commit)
> > * https://lore.kernel.org/all/20220823144123.633721-1-mic@digikod.net/ (bugfix)
> 
> You can replace these links with
> https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66d30d0
> I don't think the fix is worth mentioning because it doesn't change the
> documentation

Thanks, applied.

> > * https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.com/ (documentation update)
> 
> FYI, this patch is in my -next tree and will be merged with the next
> release.

Ack, thanks.

> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> 
> Reviewed-by: Mickaël Salaün <mic@digikod.net>

Applied.

–-Günther
