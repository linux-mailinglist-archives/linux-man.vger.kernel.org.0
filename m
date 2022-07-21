Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95F0857D320
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 20:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbiGUSRA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 14:17:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiGUSQ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 14:16:59 -0400
Received: from mail-pl1-x662.google.com (mail-pl1-x662.google.com [IPv6:2607:f8b0:4864:20::662])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAACD7099C
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 11:16:54 -0700 (PDT)
Received: by mail-pl1-x662.google.com with SMTP id z3so2592391plb.1
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 11:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:dkim-signature:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc;
        bh=w1oRDBGHYId+sqBN752PHCWgHomtDHPwyxvHW1mvMjQ=;
        b=ek5sRty2BbOYZCP4sqzcOp6vtAKd+xyH+DuVv7DKz6R/tKBz5RLLQbcy6FE05ebgHE
         ADMfBeaTEHQ6c4+Ht2XLy4NKbgfsfC23y92pF5Q+MFnex1tbc6Y7quB+YEIoC2iZKi/5
         WrRuD87z09SZPzAKyBkvm96PlByKJmsPP5qBpyCZi8uW+h9ve3UG6WF3sYYopG4/nilQ
         NVuYIWeuJFDJAw5Qbm5+X3MH5BhyJWK7873iJOwDcD5E7ZErZglKxl2G/sOpxH765OY4
         riMI5alX88eb7NtA1tCeAO3wuUUGEoQeXl78zahC3+q0yJpGxLTy5s1J086BysE4YhYG
         V8BA==
X-Gm-Message-State: AJIora9Ry6/n0rlvRTkvDWtAAByu1dow+ux/gWhzC0YiegVxPwjOT6X8
        m58obVKOElXQ0J7+udw2vkiSAP5KfBfzsq/4h6rv+/4HRK+tOA==
X-Google-Smtp-Source: AGRyM1tHj5UQ7SBqe1+9+PNRR6q42c/MaKnuWoUBdUzAnPhQrnPPDRbSFsrfTQ/njbddQtWiJYzO2sx5so5o
X-Received: by 2002:a17:90a:e58a:b0:1e2:fe75:dd5f with SMTP id g10-20020a17090ae58a00b001e2fe75dd5fmr13006424pjz.138.1658427414482;
        Thu, 21 Jul 2022 11:16:54 -0700 (PDT)
Received: from restore.menlosecurity.com ([13.56.32.52])
        by smtp-relay.gmail.com with ESMTPS id t20-20020a170902e1d400b0015e8d4e8657sm178718pla.35.2022.07.21.11.16.53
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jul 2022 11:16:54 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.53)
    by restore.menlosecurity.com (13.56.32.52)
    with SMTP id 4bbece40-0921-11ed-8969-f7174b3054a4;
    Thu, 21 Jul 2022 18:16:54 GMT
Received: from mail-yw1-f199.google.com (209.85.128.199)
    by safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.53)
    with SMTP id 4bbece40-0921-11ed-8969-f7174b3054a4;
    Thu, 21 Jul 2022 18:16:53 GMT
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-31dfe25bd47so20703067b3.18
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 11:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w1oRDBGHYId+sqBN752PHCWgHomtDHPwyxvHW1mvMjQ=;
        b=J0GqQo+4DTDSJun8P6GGIj1aX87bOVXoRaVvBd6atGzon4gNINtc0nrvAlfGNSy9UW
         MWlFmw8mJWUDfsaYhoasWNNn9eFxLT3VU44hnbiDGz0AKMei+frzdvL62fp9S9wT3Qkc
         gHCLSGZwB5zIjV69zIbejk5FeueBsxcT/Je14=
X-Received: by 2002:a25:d217:0:b0:670:9139:c537 with SMTP id j23-20020a25d217000000b006709139c537mr9563921ybg.100.1658427411670;
        Thu, 21 Jul 2022 11:16:51 -0700 (PDT)
X-Received: by 2002:a25:d217:0:b0:670:9139:c537 with SMTP id
 j23-20020a25d217000000b006709139c537mr9563903ybg.100.1658427411437; Thu, 21
 Jul 2022 11:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com> <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com> <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com> <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com> <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
In-Reply-To: <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Thu, 21 Jul 2022 11:16:40 -0700
Message-ID: <CA+FoirAarx+OYVwNYTd7aqp3f+XO7eZGftsxWxM=0M0AmJiApw@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Quentin Monnet <quentin@isovalent.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks Alex and Quentin for all your efforts.

I hope https://man7.org/linux/man-pages/man7/bpf-helpers.7.html picks
it up soon too.

On Thu, Jul 21, 2022 at 4:28 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Rumen,
>
> On 7/21/22 00:44, Rumen Telbizov wrote:
> > Thanks for handling that folks.
> > I'll keep an eye on the man page updating.
> >
> > Alejandro, do you have an idea when it might be that you would
> > run the script and update the page? I can verify afterwards.
>
> Done. Check the last two commits.
>
> Cheers,
>
> Alex
>
> --
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
