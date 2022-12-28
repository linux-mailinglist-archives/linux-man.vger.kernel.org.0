Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E290A65765A
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 13:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbiL1MWT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 07:22:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbiL1MWS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 07:22:18 -0500
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBA0D284
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 04:22:10 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id m15so8144347ilq.2
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 04:22:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0C5c852IKFOEaHBZJHnb68PpEwzwm4A/UT19PK2EE3c=;
        b=aFkFM3Su+HoQto0cDQDdO0FTDgruHIEcK96QMKsvHSwMCMLlKv/GgWlVOTdDrZtkE2
         5ASEHv2A3GDgr02BxVPJ4feSGghYcOdbUZpx3YJC4LnHbLw+KbfbV9hVPch/+k9CSr0A
         ZmVLTVdlwJZ3VMQ4Hirf9ksjOvZiHv3BynAUBS+njXRXyFv93L7QvJH05dFMoZWrJl5f
         u0zWg1KKUe+3ts+VitfLYpVwh8s0sb9aqUJ/3OjoqcpAZyWIa+QYZBnr9+qdqnYsC8nS
         wmdcWgw7TfcdAbVm1lxRg013pTdp9bJzwnMZ5OeLCufk9TZ6CD9AefizIBPSYPKfU3gm
         R7Gg==
X-Gm-Message-State: AFqh2krS3aVl6mEWjfmAKBcSOuK6gtJssS0rhQCE/h5Be3r4dCFvq2x7
        1evyI8EOJkoacJwm/ULGQPc/9NiMyz8MnlaNFzmspg==
X-Google-Smtp-Source: AMrXdXtVHgIeMxzqrkCSsWEGo91Ac3JxGhOupiNdvNabLekGLgeOsX6td/tcs7PqWJQ1ttuF8Q5Ud99j98cBjJQQBuE=
X-Received: by 2002:a92:d20b:0:b0:302:a011:ae1 with SMTP id
 y11-20020a92d20b000000b00302a0110ae1mr2300727ily.170.1672230130134; Wed, 28
 Dec 2022 04:22:10 -0800 (PST)
MIME-Version: 1.0
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
In-Reply-To: <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
From:   =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <crrodriguez@opensuse.org>
Date:   Wed, 28 Dec 2022 09:21:58 -0300
Message-ID: <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
Subject: Re: [PATCH] Add example to rand.3
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Dec 27, 2022 at 9:41 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Branden,
>
> On 12/28/22 01:00, G. Branden Robinson wrote:
> > At 2022-12-28T00:33:13+0100, Alejandro Colomar wrote:

> (I used C23 syntax for rounding up to a power of 2, to avoid some magic macro.
> That line is not necessary, but improves performance considerably for small
> upper bounds.  I don't know if it's available already in GCC or Clang.)

at least current gcc13 does not implement N3022 yet :-| that actually
a nice and looong needed addition (like 30 years late)
