Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1AD429BF83
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 18:07:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1815480AbgJ0RCg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 13:02:36 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:38773 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1815477AbgJ0RCf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 13:02:35 -0400
Received: by mail-io1-f68.google.com with SMTP id y20so2318217iod.5
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 10:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4rl+S1xHRvqB2XBwLSI3MnFVHsw9MA1nPsFGluB7yF8=;
        b=D4iK0yGKZp4pj7HBq7jJLsJv8nyeDLrJVII/BR6j3U2viVXN6jUvfthKCrTVfWfmDD
         hksuKvLbeJwHybV0tadTf/GDjLjwMaegwTc/b3nVkCQanGuVP8YOYES4fnz/FEfaqETM
         HhOr278mB1lZ0SCvFri+E2fASmrtgB0QqKvYx99YtWG2N8FdZ260QnJG7a3FHUvQ7sjg
         3kd8BwQxHVEfx/42xzjFQ4TxueAP56Y8+AY8uooWVaRiv40QUL737e9VbnYF0cODLlsl
         lUQWiibx0z3L9MF/CrublqyCiJ3I5bYe00PbP/AC+YoK02RoNqhChrGEYTj53FeViW1z
         lI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4rl+S1xHRvqB2XBwLSI3MnFVHsw9MA1nPsFGluB7yF8=;
        b=jr3J1Z8q0S1ckUvsE3NCtjcg18mdUPUsWw+0kqkvNX6Eun8OncDW0OlHcdXJ+MbTLp
         /SVV4pVhxYtQpU5MiYLV5z6jNkrXkxATl5hD9owXBmGy4PvIVlrADODAItBKPRqoPpwK
         jBv9fG8/80f64DwVneyLpQ4k4wV6WLrWPAuhxXiQwfn0R4GuHXRnd5Y68Qyp1gqSB7wp
         l6+Sx1/MkWWH5tiuzAabPvx4930/24lD9YLayjlosFZ3cft9Z6R4Dh96/qjQAfPCQzaP
         wi0c3/9H2mLNBXDYUzsgWgaclnfJdv74+aKjLnHEocQyYWaSSbOtQ3zOHwQ+oSqpQvZr
         5ABQ==
X-Gm-Message-State: AOAM533d9lZDMdMH1sVb9j06WBZIp66KDFDsXGJBckA8X6WGQZsVYKc6
        HV6s2zXvVha4/t7RqZmX04byWw==
X-Google-Smtp-Source: ABdhPJynPzknXpanEAva7OpkFJbnyA1Taaz9Vm0FQEc2W0aSQP+cuikrDAlZgIm0RPv5gjr2vUe+rg==
X-Received: by 2002:a5e:8d15:: with SMTP id m21mr2896838ioj.134.1603818154309;
        Tue, 27 Oct 2020 10:02:34 -0700 (PDT)
Received: from google.com ([2601:285:8380:9270::33b4])
        by smtp.gmail.com with ESMTPSA id y3sm1055921ioq.18.2020.10.27.10.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:02:33 -0700 (PDT)
Date:   Tue, 27 Oct 2020 11:02:31 -0600
From:   zwisler@google.com
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Ross Zwisler <zwisler@chromium.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] Add NOSYMFOLLOW flags to mount(2) and statfs(2)
Message-ID: <20201027170231.GA8939@google.com>
References: <20200904161203.598281-1-zwisler@google.com>
 <CAKgNAkiAkyUjd=cUvASaT2tyhaCdiMF48KA3Ov_1mQf0=J2PXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkiAkyUjd=cUvASaT2tyhaCdiMF48KA3Ov_1mQf0=J2PXw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 07, 2020 at 09:13:08AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Ross,
> 
> On Fri, 4 Sep 2020 at 18:12, Ross Zwisler <zwisler@chromium.org> wrote:
> >
> > These flags should first appear in Linux kernel version v5.10.
> >
> > Signed-off-by: Ross Zwisler <zwisler@google.com>
> 
> Thanks for the patch. I will try to keep track of this, but if you
> happened to notice whether this goes in in 5.10, and pinged this mail
> thread, that would be great.

Hey Michael,

The associated kernel patches were successfully merged in the v5.10 merge
window:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dab741e0e02bd3c4f5e2e97be74b39df2523fc6e

Thanks,
- Ross
