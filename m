Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4519B5002D0
	for <lists+linux-man@lfdr.de>; Thu, 14 Apr 2022 01:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235305AbiDMXyO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Apr 2022 19:54:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235309AbiDMXyO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Apr 2022 19:54:14 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 23C54541B2
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 16:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649893910;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=CabFTx26fenGuR3mA1PV5wmvUxTeRmrz29F0WW2nZA4=;
        b=jDeyQ+xl7Y9m46oljhfBVtxYddB/HEt6+pTnsgzl8zQvx0MW8vz3A1ozLQaqB+2mK6GtcG
        9OkwpxJcZM8EauCAo94EnqPvGzspi9yXKazMdOGCN7Uh0RiQhQTV0Ubm8oOqsK5Nu7Rf8R
        4S6PA7cwU6gbCje9AfgAg+yH2amUH4U=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-263-HrZZWhumPVSzgh1vnn-6sA-1; Wed, 13 Apr 2022 19:51:49 -0400
X-MC-Unique: HrZZWhumPVSzgh1vnn-6sA-1
Received: by mail-ed1-f71.google.com with SMTP id s28-20020a05640217dc00b0041d69ecc528so1939309edy.12
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 16:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CabFTx26fenGuR3mA1PV5wmvUxTeRmrz29F0WW2nZA4=;
        b=BJKC1zNRhpvKwSRkspPDtCfCl+1yoeK405N8zCZQEPhBxVuffjZpEJz/NwA9v1EziC
         ZvdV5GNwI6PIvu4McFUKu90BscLIqGI2K/4/NHsJa+OQtLmvhEaC6UvQwkS6hVo0Ws6Q
         vveObYAco+tC98XFnugw/hU0T/EdlLJJdWsC05Ba3a0WURNCflQLlAg+ht9KBKhbWU3M
         7ZZtgk2gR+WbN/lpqH7IeiMAOxQt5R5CQl6NHcNQnpCEf6hbXPbm7ht+avf2S5pG8cL3
         3t2tNcyqZgaUHol2Sh4SSFQMEvyXF+tH1o5O5En1weDpdunawjGd7mnoVZ2M5b44uUUA
         kdIQ==
X-Gm-Message-State: AOAM533wYFDtcGum/ANIws3lf6PTTng7n5h66Q+C4JrtyhLvFH0nfJ8b
        koeIObrOUNXp0AeQxyb9b+8PIu510IGk2kczbMyDxwqRRrFX8DwoE5ZZrR/0iJHvW2MEeEDhl1j
        U6JPaI3N6zUc4n0P1N4asRctzjqlMqa+Ot8SF
X-Received: by 2002:a17:906:d146:b0:6da:f381:4dfe with SMTP id br6-20020a170906d14600b006daf3814dfemr108595ejb.670.1649893907820;
        Wed, 13 Apr 2022 16:51:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCG/871MuAjkplpLwcAVvg6yd5lRvn/bW3dG2KbCs95pyYGcv3H08DER4UQD5hIjrWDSfZTOXtRDiTtRvXJDY=
X-Received: by 2002:a17:906:d146:b0:6da:f381:4dfe with SMTP id
 br6-20020a170906d14600b006daf3814dfemr108577ejb.670.1649893907484; Wed, 13
 Apr 2022 16:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220412135520.2388424-1-arjun@redhat.com> <9f65abd8-0df3-4c28-7428-21d6fdc59261@gmail.com>
In-Reply-To: <9f65abd8-0df3-4c28-7428-21d6fdc59261@gmail.com>
From:   Arjun Shankar <arjun@redhat.com>
Date:   Thu, 14 Apr 2022 01:51:36 +0200
Message-ID: <CAG_osaYFb6mfX8x0SqgHpoj3GL8oyNZmFYzDiG696cH1_bTbcQ@mail.gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> I already applied a different patch recently.  See
> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/man3/pthread_atfork.3?id=f30deb08a9a0db95a3d6b4d00c0927fb43928cc4>.

I wasn't aware of this repository and therefore missed the change.
I'll keep it in mind.

> If you think that can be improved, please send a patch on top of the
> main branch in that repo.

The commit you mentioned looks good to me. Apologies for the noise and
thanks for looking into this.

Cheers,
Arjun

