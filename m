Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C6EE58181E
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 19:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiGZRJV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 13:09:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbiGZRJU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 13:09:20 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFE11B781
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 10:09:18 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id p10so16074756lfd.9
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 10:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FrCtXuJpRo8PiYyHtVSEP6i9HwGQx7g5KrzehoKdQnk=;
        b=D5P8uq5/8b7+VWbtvKeHgfY2+/u5GKpVBALMGE+I0cpM3jrW/JyRmoZHHa3jWw7jK4
         u0/AVRyWAGQsazXnvKbiwrnmyyUHuOT+R0bNC1uaCoRQtdeWcqvkV3I67o4csA/SziD3
         IBu4v8IqLyne8UloGvrfidB04Vnfj2sYtdMk0xAZzmWk4HV8zrplSP6O9nINHiuComhL
         he6zT7DDRYZjfT16sgm1a80oLp0ovEuFUe/0HFCjjjSVA13e6cJD+pOv+lY8IlJmwR1j
         +6xxq0qAAQd3ErjMHMy2nP6MXdoW2w/L8NhYSc7A0XUeYATgi3lt2G3LBSwgwjq3DVzp
         vWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FrCtXuJpRo8PiYyHtVSEP6i9HwGQx7g5KrzehoKdQnk=;
        b=yUlolX9Oof2mnT7WgIOoO8//xhM+8trbgAYgVi0rxiBldiC/JvO7gMUV73e2Bhrpqv
         HcS2l5dFchkhPeSpygIACt6zC51UcKk9VucOePmdrdx/Ro3zJ3r+gtUpnVcYbC2fzTkq
         gXSpohbgFlfZoycjaD9AfsdAabDYI36TyqifsbQl06/zAEZPFdd/+NmGaUUumfRnTX4W
         b7zDoo7OKxowgz28horlO8pJGDzKJCl0fh6xNwXteFXHIsJtrgtaiQebvdM5Q2SyHK8r
         nJdH7mvwbq56mgzhQtf5FRSu8MEmefwGg6LzWuiR5U0WG1ySju5h7kMx5s9gjdLSb21Q
         pyIg==
X-Gm-Message-State: AJIora9f2+EwbCRy6zeYt76+V0+iIvulZ4ExFS9iDasML3vyQ5Gq0dHN
        UqKGVGzGnCIIO+YvdqV+vBZHB9sLivVN0cxfgk86bA==
X-Google-Smtp-Source: AGRyM1vlO0MrjmI2iAMgJfW4rK9CDqIlh/HewN5Rc4lxoJ9Q++5KtWzdGKemcJnVW/qnLFt+mPJ9MZY6YfxLaB7UzNs=
X-Received: by 2002:a05:6512:518:b0:48a:a0e0:3c3 with SMTP id
 o24-20020a056512051800b0048aa0e003c3mr1612990lfb.118.1658855356821; Tue, 26
 Jul 2022 10:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com> <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
 <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
 <48e15fa1-bdcf-a21f-1aa1-5c5168c67422@gmail.com> <CAJgzZoqDAMuk8j-kwzxkKMSbs4z2ZiGzbQuUkrouXitgW+RYmg@mail.gmail.com>
 <7f200367-3751-d110-4c9e-2c0a677eb548@gmail.com>
In-Reply-To: <7f200367-3751-d110-4c9e-2c0a677eb548@gmail.com>
From:   enh <enh@google.com>
Date:   Tue, 26 Jul 2022 10:09:05 -0700
Message-ID: <CAJgzZopKFRtexqHiT2JAyF_g1WoMYgvXM9RuNB7W+do1Nv0NvQ@mail.gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: wfix.
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Jul 26, 2022 at 4:06 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi enh,
>
> On 7/25/22 23:00, enh wrote:
> > interestingly, i see that commit in the log:
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/man3/pthread_atfork.3 <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/man3/pthread_atfork.3>
> >
> > but it doesn't seem to have made it to the web?
> > https://man7.org/linux/man-pages/man3/pthread_atfork.3.html
> > <https://man7.org/linux/man-pages/man3/pthread_atfork.3.html>
> >
> > is there a known issue with man7.org <http://man7.org> being out of date?
>
> man7.org shows the latest release.  Since we haven't released since
> man-pages 5.13, there are many changes in the git repo that aren't found
> in that website.

oh, i didn't know that (in part because i have a local git clone and
set $MANPATH!), but that would explain a lot! is there anything i can
read on the background to this? in particular: is the problem
technical or political or financial? (hopefully it's not health, given
that 5.13 would be "early covid times"?)

> Cheers,
>
> Alex
>
>
> --
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
