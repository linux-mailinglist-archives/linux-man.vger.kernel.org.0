Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9DDE4B37AE
	for <lists+linux-man@lfdr.de>; Sat, 12 Feb 2022 20:45:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231202AbiBLTpR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Feb 2022 14:45:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbiBLTpQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Feb 2022 14:45:16 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C92606CD
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 11:45:12 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id k25so29424911ejp.5
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 11:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4+AMF/zPj8Zqg8LDliduLH3UBEzRjLJf316+fcuytpg=;
        b=Dr6xnOLAO061RE9F7TQIXfnvN73KE8gY1JQgIy3U2VnsdAucaiApMzp4SI9MQsI54Z
         aSwofR7zNVdtrefLUuyyMGqE+T6yp5IGpXf9OzuIY0COuR9j1N9YZQGvHBkDfRw4Uy8E
         fVS9ysX0kyrTtTlWiL2jabiO5hlYCr6BGnPHTtolS7Qdf6WNbNnrDObnkVtCwNNUBabn
         rh9L2b7jj9omXjns/AvUzJZCZDdFUwVbR49t1XMa5j5N7T5eR6ea1IgTK0S1PbqOJAnw
         UfYF1dLuBWt8wYnPBeYpoOrRGhxWcP8JczILskt4+vyB7IhdUnjaxgjL32Uy3OQbKhOz
         lx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4+AMF/zPj8Zqg8LDliduLH3UBEzRjLJf316+fcuytpg=;
        b=h/x6UZjco9k0wWYdgqYEHJmRzrUizbvx0E+Pog6eMsXxHMZacb6YnbeYN/JZRicFBn
         jkKPM5LRPTaRAF9lhe69HzGOmHj5oNxGohJIrf7HuxCG8TWEmVK/vMO9pouq0/4azHQb
         946yot8mH+x8aUXvPhiEtMJwr5u+ohmGysvvtA3z0Z+SaDcGhm7qD9GB7uAf/hRXEyf5
         CGF9ktMZ42zVppKTWiG8db0wm+sWxUW4zUjLq2m+dsudsFvhn7/GmOt+6FBHW5w2PE43
         htdRItBVwn/+u7IMNZDJAf/WEX23yKjJFIYBOAQ9x3QAJ+OtbcWOxOmhgb2N5zRSuDp5
         cywA==
X-Gm-Message-State: AOAM531Jfy2SwAOBBairnBSCPzCMXI7oHMNYicx7SJV69YobnJNB2l+Z
        h+UwgA15/0n8HbwX10cKwFqqgyRF2Ymo0QuARvCrmGxIRm0=
X-Google-Smtp-Source: ABdhPJwextQyMbnFKB8MPpIxQIxST6qTGGcjqt5A6BA8A4ugJ5GFZk5oBoklB/sc4Z5tTaVFJj3Uyonjkw0lbsYtd/Q=
X-Received: by 2002:a17:907:3ea8:: with SMTP id hs40mr342018ejc.117.1644695111069;
 Sat, 12 Feb 2022 11:45:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
 <40f275ec-d5c5-7228-a1a1-630834a41aea@gmail.com> <2f955ef0-283b-92ef-94db-9549bc47f1e3@gmail.com>
 <CAMW=du=BAp_jkLKvhca3=Sv6NDSA+XdUQREhRB+2XfzsLn_x0w@mail.gmail.com> <09084d8d-5416-2bc1-0e59-cea44111b375@gmail.com>
In-Reply-To: <09084d8d-5416-2bc1-0e59-cea44111b375@gmail.com>
From:   Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Date:   Sat, 12 Feb 2022 20:44:39 +0100
Message-ID: <CAMW=dunREq3s3+pZTSfKrUbS8igqidiVJd0qnZ3NPJ-5-160Og@mail.gmail.com>
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 2/12/22 00:28 Alejandro Colomar (man-pages) wrote:
>
>
>
> On 2/11/22 23:08, Grzegorz Szpetkowski wrote:
> > Hello Alex,
> >
> > On 2/9/22 21:32, Alejandro Colomar (man-pages) wrote:
> >> Huh, I don't know where that trailing 'man' comes from.  I think I typed
> >> it accidentally.  However, I still think the wording could be improved
> >> for that line.
> >
> > I tend to agree that wording could be better, but nothing straight
> > comes to my mind.
> > Would something like this work better?
>
> Yes, that reads a bit better, but I have a question.
>
>
> >
> >> +If protocol is set to zero, then no protocols are received until
> >> .BR bind (2)
> >> is subsequently called with with non-zero
>
> What do you mean by subsequently?  Since you already wrote 'until' it
> implies that there will be a future call to bind(2); I'm not sure if
> subsequently adds a slightly different meaning to the sentence, or it
> should be removed for clarity?

Yes, this wording is unfortunate due to the fact the call to bind is optional.
As an example, If user intends to treat the socket as Tx-only, then
bind(2) may be skipped.

> Also a minor typo: repeated 'with'.
>
> Still, I'd remove the negation in the sentence so that it reads
> positively.  We need to break the sentence into two.  What about
> something like the following (please tweak it as necessary to be as
> precise as possible)?:
>
>
>
> If protocol is set to zero, no packets are received.  bind(2)
> can optionally be called with a nonzero sll_protocol to start
> receiving packets for the protocols specified.

Yes, this sounds right to me as well.
Attaching in git diff -u form:

diff --git a/man7/packet.7 b/man7/packet.7
index 706efbb54..d377fe583 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -47,6 +47,11 @@ is set to
 then all protocols are received.
 All incoming packets of that protocol type will be passed to the packet
 socket before they are passed to the protocols implemented in the kernel.
+If protocol is set to zero, no packets are received.
+.BR bind (2)
+can optionally be called with a nonzero
+.IR sll_protocol
+to start receiving packets for the protocols specified.
 .PP
 In order to create a packet socket, a process must have the
 .B CAP_NET_RAW

Please approve.

Thanks,
Grzegorz
