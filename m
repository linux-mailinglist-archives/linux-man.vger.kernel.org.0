Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F25432680B1
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:11:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgIMSLp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgIMSLp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:11:45 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84499C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:11:40 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so16270094wrl.12
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ttTS5IrGO/2EMTFj5jOpmz4cCh6ghl/eCZNVbivX020=;
        b=Xw2UJtXplM3t6XwPDR6iUW0ocwvzQongc2s+EiJ0GBn23ksZ4WY57+APvi3eeKv9nf
         K/1Gw9pnjI5tOxHHIpiVo3XqnRB0DFR1pPDVt372Dn4He0tdvZkzrnV/a1PK32keel40
         Mbqd0NZ1f6y8kujuejBVvR7ckF+7PLpJyDV7DbiQLwtXmgh4yGubtRLP2MPobOn+4ZmA
         hs40fJ9Gk5B/XloQ6jB3zkpQHqPDIPF+X+EXRUvY/O82AcUke8NQvDRJy46JHvadodQ/
         X5dwqecIApHUwIPWeiMe6Bzf0QEA6MQTGEvlQRncbHxFX/3QK6q55CRr3cK9jT0bzjGX
         ekRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ttTS5IrGO/2EMTFj5jOpmz4cCh6ghl/eCZNVbivX020=;
        b=Y97AFmomKvnsAq/rJddwNKKkYtZpoNXEzcz3kboUx8iM7A+rg+yXwluS5UDHVtpKN5
         SxVAe/NSB4GM04bU+AwT15U2VFycfgqhqDXEcm6JdKTLvOQ4XQNpGOTB9PaVapkkT3Mv
         qodhqFtWN1gkFrlVs8XefYrhRPEVdRhhuEC2QuHTsVN28WTr6zMUzDRYOldoPjXyOfQ6
         qe9dsQ06aSvamrQp7iibotnzIQT24YbFCClnEgc4qjFzuL7g2DDGYVEj412K5zsIT5zv
         bjOErGHidB8iyWP9JVxYpiy5CA7yk7UpK4ATB6mp99+5o7wnZCCs0CLXcSe4Z5elhRJ5
         9VKw==
X-Gm-Message-State: AOAM530YIqkq8qsCFyU6KC3Th/WlUH6KvcaxP1jImUysslsBhhLWwWPI
        hR1jPwlpL/+HX624nGvAaQ6nBC1tCQqGPA==
X-Google-Smtp-Source: ABdhPJycjiWfr5TOBF9Hz8Qi/42ZU5rLEtTONzikHS64/pWGM19qCcTVbiW8dr294UytBeixHYxWOQ==
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr11836356wrt.267.1600020698902;
        Sun, 13 Sep 2020 11:11:38 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id d5sm17246715wrb.28.2020.09.13.11.11.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:11:38 -0700 (PDT)
Subject: Re: [PATCH 05/12] getpwent_r.3: Cast 'uid_t' to 'intmax_t' for
 printf()
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-6-colomar.6.4.3@gmail.com>
 <867a2a99-5d14-6c01-62fc-f4daef538289@gmail.com>
 <b686b723-1daf-54ac-db56-2b45021b40e2@gmail.com>
 <CAKgNAkigmNbw5uq47dgwCs3jGgHOu_Ce-A9mehGdvpFhMn9_1A@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f21af5ba-727e-e7a7-263d-539268722562@gmail.com>
Date:   Sun, 13 Sep 2020 20:11:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkigmNbw5uq47dgwCs3jGgHOu_Ce-A9mehGdvpFhMn9_1A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 9/13/20 2:04 PM, Michael Kerrisk (man-pages) wrote:
> Well, I said none of my arguments was too compelling... I think that
> I'd take one big patch. Perhaps first, could you send me an estimate
> of how many pages you think might be changed in the patch.

BTW, please don't apply the patches about [u]intmax_t from this patchset:
I included them in the big patch so they are all together.

Thanks,

Alex
