Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36E86586E5
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:04:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiL1VEx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:04:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiL1VEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:04:52 -0500
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D296D1262C
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:04:50 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id y4so8865090iof.0
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:04:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xEiLc7tj1Ul5XY+PCVdXES8JC+ZkwZKd5l2EQZIfqG0=;
        b=vtoRfTsSVhNnmgvPib9rYi3wje4oW8xxNCer/pwcjFDiytzB/46Xc1yRd5vgx3W8+J
         HPhXK0S70xoh7pdx6AQIjpztylQ0mig7GrBXS75259wFLi8j8e+vaJT9KBFqKcUJuk09
         CK7PaQST8j3CVw5eNyy3wrUhVbe88U5wof/2ifBE0x7ykdbJX3yjmvhpqEVcp6ACUSx/
         FqAKg8foojc51D6kGjhL3KA82C72tW4/zcdGxYfC9IRdFe+fWjinMJ/r5doHr7CLlzYG
         uf5jksAzMfVosFrJCuYceu7co+ISOG7nZxE0ebVszNR6505Y3RMQb4jTpBjIWngYC5Ch
         Zz8w==
X-Gm-Message-State: AFqh2kpSaoEEU/4iDOijOK03yVsRwu456WuPp3H/NgWBl4dX6C90xTn/
        PWmkfy0AzDTwFPLexe+I+mop3kg6sVsthP7/H6a4Dg==
X-Google-Smtp-Source: AMrXdXuGdyxS1SPzsaTSonFj1YxmoyeVWft92lmJaN4LjAO/mj8Cth1EmdEgHBWvRX6nVilHcQd1uhmJo53pH6KuFGQ=
X-Received: by 2002:a05:6638:4609:b0:38a:849d:a479 with SMTP id
 bw9-20020a056638460900b0038a849da479mr2479740jab.6.1672261490074; Wed, 28 Dec
 2022 13:04:50 -0800 (PST)
MIME-Version: 1.0
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com> <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
In-Reply-To: <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
From:   =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <crrodriguez@opensuse.org>
Date:   Wed, 28 Dec 2022 18:04:38 -0300
Message-ID: <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
Subject: Re: [PATCH] Add example to rand.3
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 28, 2022 at 5:57 PM Alejandro Colomar via Libc-alpha
<libc-alpha@sourceware.org> wrote:

> Ahh, I didn't connect the dots the other day!  We don't need to wait for glibc.
> libbsd already provides arc4random on GNU/Linux systems, so I can already
> recommend using arc4random to seed srand(3).
>
> I'll prepare a patch...
>

I would suggest avoiding that, as it suffers from all the problems
previously discussed on this list , on the relevant arc4random thread

tl;dr , it can't be safe without kernel support, as you need to know
when to drop the buffer. (on fork, on resume plus on $deity knows
condition for which there is no kernel notification about)
