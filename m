Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D210F3CF575
	for <lists+linux-man@lfdr.de>; Tue, 20 Jul 2021 09:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231665AbhGTHFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Jul 2021 03:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbhGTHFD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Jul 2021 03:05:03 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2304C061574
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:45:41 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id u3so11032343plf.5
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gTXbMviBGkUu9/9Bt6TSXjBUAfOaBSnDDmakGGTiv2Y=;
        b=dLmTXHoi012tixvWW3mnum8Q6LeOKjy8cvxv1Q3YR8pmTicc7EJP91YghT00Xjblzz
         8Bw68SUjKMzZvABLcPHJj2MQDinp/2KTMWG2CGh7guifSRJvJB7cVLiyyWRd/uhwSVX6
         Ds9+gio8oT3C1l72hxitTRYH88yqZ/qS/mVPYDSbo4J6yhlxRLegMdITTmOWPSH6VdsQ
         la5+sptyKFhbTor/32xeFnnXHIBGQyqfIlX/UarvG6EIfu8NKwubWenbArFO0ST5eAEt
         ydKtmCBImrDJWbApcA9FIFzgrhDesG2shAkeeIkRcDnzPU0hRIjEMHTu6ft69tZYIqA7
         UNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gTXbMviBGkUu9/9Bt6TSXjBUAfOaBSnDDmakGGTiv2Y=;
        b=YtPpY6/bKy6xhPFcFuHbC7fdR4KwCJvilfKsWxC9wY2mOicR0R0+idfpz2r9LjCKn3
         XqsjWeyMpL52y68f/KmSGmc8InEkPoA9705rmQ3vKyQ20SfpjPw0J9VkbqXXIlwUaWOG
         Ee7JFcL/JHwAdk9k75z9Z5B78cmbKDwNUbnPzWWiTY2fotrsYEgJxU5OqyR3wNsQ88ZJ
         wcsOEYeJg7RZe8Q7idsA9yx5/A2y8uQCQVfkwUO/pzAXKlf9SpqtMi0FdqY+Z4UUxi0/
         ECIs5vVxD+GVtJfjbEdifl/wFbskZmCcjGMfIlE7WEuqMzZzewbwZZnszyVWK0ZGoS4/
         XlTQ==
X-Gm-Message-State: AOAM5334srr7BBPYjF9UwMmKc5Hd3/aeQjP6o1viC8roSR/7I5TlTfXN
        o3P4Qt8PilJr2FkqpgV7xnfh8jKJS2Te7QKyc6s=
X-Google-Smtp-Source: ABdhPJyONRd4Ek/Xuoy38NgcLFCLEKSpgiHT9ZVrHQ1RTzO65qKlRsfTqzeymHBuvCnlvBat9eLo4CuNiAl1seRrjd0=
X-Received: by 2002:a17:903:22ca:b029:12b:9109:4097 with SMTP id
 y10-20020a17090322cab029012b91094097mr4641125plg.54.1626767141279; Tue, 20
 Jul 2021 00:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <CALBoereYSTo=9qfsWN-FSbRtdtYsqSKrkZAYuQRA_fBj0Nhq2Q@mail.gmail.com>
In-Reply-To: <CALBoereYSTo=9qfsWN-FSbRtdtYsqSKrkZAYuQRA_fBj0Nhq2Q@mail.gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 20 Jul 2021 10:45:30 +0300
Message-ID: <CACKs7VCZf50RULi_c5Eto1Oqjyi9JWyJSQemEb8J+5JSe66SBQ@mail.gmail.com>
Subject: Re: typo in systemd.unit(5)
To:     snow under <hikigaya58@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Tue, Jul 20, 2021 at 5:59 AM snow under <hikigaya58@gmail.com> wrote:
>
> location: [UNIT] SECTION OPTIONS > Upholds= > first line "but as long
> a this unit is up"
> checked from online page:
> https://man7.org/linux/man-pages/man5/systemd.unit.5.html#[UNIT]_SECTION_OPTIONS
> thanks for your great work.
