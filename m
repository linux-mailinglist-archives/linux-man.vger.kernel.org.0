Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59F17587A5D
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 12:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236483AbiHBKKo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 06:10:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235599AbiHBKKn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 06:10:43 -0400
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com [IPv6:2607:f8b0:4864:20::a44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3930611152
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 03:10:42 -0700 (PDT)
Received: by mail-vk1-xa44.google.com with SMTP id v13so4015363vke.3
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 03:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=gVMt6XSKvp6oUvjuZxjVEFQMfVEIyyenJb8N9/x4+JgRp54x+YQ8TAmW1I5W+sgVUx
         06lQK1gaug68iFmCh2zGhSHe2vD/rKGhpmPYiNd0/8LHHUhlQAeWUYdOMHU3JOTZmO1z
         uxgDh+r9rkGvrzq4gtdyEr56rgjuZbjAk4KS7vf6+s/xpKDpfb6nVy9wI+d8xxoZGEjg
         lGLp0qhaoAlyqkraira+ASVe3nehtBXWzAHkiSfRH3kOQHDVgdMVu1YyMhyw0AjmZOM4
         izXjDpcTzuh3hzlaQre73VTpgMe+9DszaJkZCAwuzQmFT3iXs0GCR+SF0USx1yu54cuj
         mmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=NhtbYEjnFlqWLEowMNyoQ4m+/uh6BphZ6VcbqCI1/6EghEeOtjXPSq/pVixnDDE70F
         IOW1WVjoVl2JLWU8mZfP9AjHzyvNDYHJdm11kjddynu/pYQwmqYxiaEOO40EtGnRCWWf
         onYhGdmDEgOK1YlDmye+H05mCfFfXLW8nn9ifbEk0e346uy2uXGNNLXnZEUF8AyF1oIW
         n/pHi662vpAwAOTkEqRLYbLugy7r0TpwcznIIAFdckm6IyPENm4bYGQPpr2ll7a7E62y
         JaLlWPBQIt5VO5dX0jfDSQPUJLyKHf2GzHvpmVzBtBRVGpSKgWgUdVG9ktMB1LGL/nBJ
         6N4w==
X-Gm-Message-State: AJIora8Y54RSNVuNqY8iyt74GejOI6eSbVZQKNkXgnTGBvYgA8pIODkk
        mkR/0Otk/1i9VTRtdulNUnPYPpKlx5InibdjteI=
X-Google-Smtp-Source: AGRyM1uRkL09eNN8oxCcgIv3EVESdgtWFuknjTg6EUKLuqJKgTtw1i8zV2X6Y7N6IF9WArg5WxN4ssdQRMptb4Y3m3A=
X-Received: by 2002:a1f:9c4f:0:b0:376:98e2:efc0 with SMTP id
 f76-20020a1f9c4f000000b0037698e2efc0mr7560461vke.1.1659435041298; Tue, 02 Aug
 2022 03:10:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:beda:0:b0:2cd:f4a8:c08d with HTTP; Tue, 2 Aug 2022
 03:10:40 -0700 (PDT)
Reply-To: mohammedsaeedms934@gmail.com
From:   Mohammed Saeed <bienevidaherminiia@gmail.com>
Date:   Tue, 2 Aug 2022 03:10:40 -0700
Message-ID: <CAHyTKtivUWq8xFzx2j0AqWZKDG6098DQqfAWvmhmKOVQUC2n8A@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.8 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:a44 listed in]
        [list.dnswl.org]
        *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 0.9994]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 0.9994]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [bienevidaherminiia[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mohammedsaeedms934[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Salam alaikum,

I am the investment officer of UAE based investment company who are
ready to fund projects outside UAE, in the form of debt finance. We
grant loan to both Corporate and private entities at a low interest
rate of 2% ROI per annum. The terms are very flexible and
interesting.Kindly revert back if you have projects that needs funding
for further discussion and negotiation.

Thanks

investment officer
