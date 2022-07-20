Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 770F957BFCC
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 23:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbiGTVpJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 17:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiGTVpJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 17:45:09 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2091032
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:45:07 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id w29so7031qtv.9
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dUfGKCCwep2jgmvvm5qm07iYguEhzUYX26MA4hQ3iOA=;
        b=V0KBJphjqUzRJU9788O4K5bKzLLuuWbzyGd+LqroJuCixFodGoExfgN+qgF6P/yjWX
         KaV8NbrpwZV+IoqenjaTf9JeDWcUasd4RUAKOk3pzl7mPafkmFLWPUcCY5oP+XiGsidl
         cc4wQG3HyaFUmZlJk3qEXDtWPF6w/nS7m8CHEIbm2fJrPRwbMyFWcR9h9YkV9CubhmFz
         vtOtMdpASOF5saM0oNarsbUL8U2ZqWT2wPMYESjrqm8IfobvQui15T6QPOnI6UEY73un
         BbkKeVPYGWKA22fXubR6sOYnBjzPt197IqKF8b0aN0iZ9crO/am7PUnNBhQ/yxL5ZTXk
         liSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dUfGKCCwep2jgmvvm5qm07iYguEhzUYX26MA4hQ3iOA=;
        b=X/FslJv2Z6ICnpFy9F0Ul0mLOcGRWytHwEAPxEAc+AjxQuOh8tmnGQm7bluM5geGMB
         sbLC2n/J1mFg55hw/XlQ+opFAF5SE05SIyxqIDe2YQSmVC4/gG/ZeISL3yUmcjx98f+/
         ag9zFmHb7pkdKfxITXubiWB7CQQ0giAtY5sJP694l+QBmzjaopitN0TyA2W1AcTFUgmG
         urph2kpwJAvSc2EXzqXZ5WRnkN7Sa779gt6mQZXE4FP8im+/InCAEt/pAknyzoE6LvRr
         sZtRX0kagszfIh8pCnFaW/mzEC0tsHIQ8klZxwoxQ2584xU0wqrmJ9W5/DZsjPhnR9Vg
         H8gg==
X-Gm-Message-State: AJIora/gQ8yTAoJDDsEb4KpDLrITKd1b6XFH//rsxy7bSAqTxK9rcpeV
        EDtfUCeqG99kEOe9e8dcnNmNGX/ldgsUSIeLPm7Ymw==
X-Google-Smtp-Source: AGRyM1soqu4WUyfgzMg3Rp9lKALZb5y/irK0vNhRc7s5Tr6ngUMTCBTgPLQLuy+79ZFecdujKtno/hLnrzQlimlSzA0=
X-Received: by 2002:a05:622a:181:b0:31d:476f:58a3 with SMTP id
 s1-20020a05622a018100b0031d476f58a3mr31455509qtw.389.1658353506929; Wed, 20
 Jul 2022 14:45:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com> <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com> <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
In-Reply-To: <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
Date:   Wed, 20 Jul 2022 22:44:54 +0100
Message-ID: <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 20 Jul 2022 at 22:07, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Quentin,
>
> On 7/20/22 22:40, Quentin Monnet wrote:
> > On Wed, 20 Jul 2022 at 10:50, Alejandro Colomar <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Rumen,
> >>
> >> On 7/19/22 19:21, Rumen Telbizov wrote:
> >>> Hi Alejandro,
> >>>
> >>> Thanks for following up on this.
> >>> Quentin will send you the script these days for you to rerun.
> >>> However, I'm wondering if there's a way to run it automatically when a change is
> >>> detected or otherwise without needing manual intervention? This way
> >>> the published
> >>> page will not get out of date. I am not sure what that mechanism might be but
> >>> just a thought.
> >>
> >> I'm not sure an automated mechanism would be easy to set up.
> >> But, I'm planning to add a RELEASE file to the man-pages repo with
> >> instructions to make a release.  I can add there a step that reminds to
> >> refresh the bpf-helpers(7) manual page before every release.
> >
> > Hi Alejandro, Rumen,
> >
> > Thank you Rumen for raising this. Yes, the bpf-helpers(7) man page is
> > generated from a script: it's scripts/bpf_doc.py under the kernel
> > repository [0], which parses the UAPI header at
> > include/uapi/linux/bpf.h [1] to generate a rST file that can be
> > converted to a man page. From the root of the Linux repository, one
> > can generate and read the manual page with the following command:
> >
> >      $ ./scripts/bpf_doc.py helpers | rst2man | man -l -
> >
> > (Note that the name of the script has changed since man-page commit
> > 53666f6c3045.)
>
> Okay, that makes sense (I tried to find the script mentioned in that
> commit, and din't find it).
> >
> > Given that the script is maintained in the Linux repository (it is run
> > through the BPF CI [2], and it is also used to generate a C header
> > that is shipped along with libbpf [3]), I would recommend against
> > copying it to the man-pages repository, so that we avoid getting two
> > copies out-of-sync. It is probably best to pick it up from the Linux
> > repo (since the UAPI header is also required anyway) when regenerating
> > the page.
> >
>
> Yes, having it in the kernel, since you also use it for other thing,
> makes sense to me.  I can make a note of that in our future RELEASE
> instructions.  For now, I'll document it in a new commit message.
>
> > If automation is not doable, I would be very happy to have someone
> > running this step before each project release.
>
> If you send a man-pages patch after every kernel release, that would be
> great.  We can also do that ourselves, as long as the tools are there;

Since you're offering, I wouldn't mind leaving it to you to run the
script before each release. I'm willing to help, but I don't really
trust myself with remembering this every time, so having it written
down as one of the steps in your RELEASE file is probably the best way
to make sure the update happens.

Please do reach out if the script didn't behave as expected, though.
I'll be happy to assist.

> but if something changes in that script, it would be nice to notify us,
> if we're using them.

I do realise we failed to send a notice when we renamed the script,
please accept my apologies for that. I'll be more careful in the
future.

Thanks,
Quentin
