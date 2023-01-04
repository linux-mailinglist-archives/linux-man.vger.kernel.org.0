Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC43A65DB26
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 18:19:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233904AbjADRTn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 12:19:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240077AbjADRTb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 12:19:31 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF4917884
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 09:19:30 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id 17so36574058pll.0
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 09:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=coqOaA9pojvX/T+N8hbWjD8cwLiHiKhPD2Rn6+Y8yFc=;
        b=IRkxxGImBc8LvZfcIhKFJvltyfXHb+uTwqVjchQBlxOfSSfBffi75yLPXKd4V24MY6
         XuxYDMyLzlN3IlC4MYBEkGzPmWzfvU9cM+lXOKGSWqhrK2QuOVDHRL565TRqYPAyOa/u
         BOx3SRzCsRmycxTzKwJ0sTBCmHgVY539fJSgTlwjfMmsm/+/jAxLAwuqVBR3Fj2nG1H4
         smAmoZP595mI8fMuOv7OYZKlOx8Zy1mkoD03kWqX+Pf9oShtdfynLRpZ9IsHXoEoqLMC
         vxknlih60ufGglimWZoJJc+6LNw7r25QQF4RTm4HVXNjECOhWpDLo/cXGEvyETF7cLdf
         s3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=coqOaA9pojvX/T+N8hbWjD8cwLiHiKhPD2Rn6+Y8yFc=;
        b=e6O+HsjS7rju42MM0I9cBzgFV8f/mwluzFWoZeaNAbBd22nVlN14Ytye//h54sfu23
         JXLmErDwHtHHRtnjc7IhiaCbucgXu0wgP/19qzElEJe9Ncjn73vFdeowXbQhE7JoI4k7
         Ytll3sOog1p9tqxNQ5atisDdESJTpBj78ZILrEl3Exkaj2CNERvjYiP40Br7QgAEDv4X
         l6mK5zy7RBrpUPBwqyMum2GkkbvOPVAkcFM1XggVzU8JdAIeMuFBui68qRkz+nmlATWp
         MeHQGQfdKk8OpLWaIVbNxyqz2gtiGoLrqS4nFRDmhk6t6MvaJycK5GFZ2WfsJ6f8d4Aq
         XfIA==
X-Gm-Message-State: AFqh2ko7ANebpY8buopg3twaCKlmJ9384zGmKrAZwGfYcEJyAICJd+BD
        tPf1YMxcYxR3tVSGg+yELwk=
X-Google-Smtp-Source: AMrXdXtsXjH0YDXViWy0S6EzCdmotf7VRctZyDrjPk9Pir7TCCYTdupqIbCq7Pgzh+VPYsjqpdIzCQ==
X-Received: by 2002:a17:902:eb84:b0:192:9094:cbb6 with SMTP id q4-20020a170902eb8400b001929094cbb6mr26667287plg.65.1672852769612;
        Wed, 04 Jan 2023 09:19:29 -0800 (PST)
Received: from localhost (2603-800c-1a02-1bae-a7fa-157f-969a-4cde.res6.spectrum.com. [2603:800c:1a02:1bae:a7fa:157f:969a:4cde])
        by smtp.gmail.com with ESMTPSA id d17-20020a170902b71100b001929568afe9sm15010052pls.306.2023.01.04.09.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 09:19:29 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date:   Wed, 4 Jan 2023 07:19:27 -1000
From:   Tejun Heo <tj@kernel.org>
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     =?iso-8859-1?Q?=C6var_Arnfj=F6r=F0?= Bjarmason <avarab@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Yafang Shao <laoar.shao@gmail.com>
Subject: Re: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
Message-ID: <Y7W1H/we8jgpc6Yy@slm.duckdns.org>
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 23, 2022 at 10:12:22AM -0800, Linus Torvalds wrote:
> On Fri, Dec 23, 2022 at 10:00 AM Ævar Arnfjörð Bjarmason
> <avarab@gmail.com> wrote:
> >
> > Whereas the fix here is a fix for a promise we're currently making
> > which hasn't been true since v4.18.
> 
> Hah. Ack. Did anybody ever actually notice?
> 
> I wonder if the newer limit of 64 characters for kworkers shouldn't
> even be mentioned at all, and if the 16-byte truncation for user space
> should also be just removed.
> 
> Those limits should never have been some documented API, they were
> always just implementation details, after all.

In 2018, 6b59808bfe48 ("workqueue: Show the latest workqueue name in
/proc/PID/{comm,stat,status}") extended the length of the wq workers. 64
used for the formatting buffer size is definitely an implementation detail.

Last year, Yafang (cc'd) added d6986ce24fc0 ("kthread: dynamically allocate
memory to store kthread's full name") removed restrictions on kthread names
completely. It now gets dynamically allocated if long than TASK_COMM_LEN.
BTW, on allocation failure, the name gets silently truncated. I think it'd
be better to fail kthread creation instead (not that we're likely to fail
these allocations but still).

I think the right thing to do here is saying that all kernel thread names
can be longer than 16.

Thanks.

-- 
tejun
