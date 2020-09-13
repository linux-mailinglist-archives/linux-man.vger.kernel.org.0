Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE5F2267FAA
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 15:28:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgIMN2K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 09:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725927AbgIMN2I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 09:28:08 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27248C061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 06:28:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j2so15841580wrx.7
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 06:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=u/5ShcpkDdK+E68LBM4TmJjPVSSNJPx+/YZ3OLUscZw=;
        b=G2Zec9ziHB9g3mC4fsZ/5TlSqeczIg5GtX2BVQOQkmlmJ9hBKuNIjy4IkCTCexCw9y
         tX9YnvkrHgXWpyH3OU5OAduzp93fQ3DyXWPs+zk5UeNaMPH62UHkm0cmNUWRrTQ1b/8C
         wkW5nZkBWk2QmrKvYjbJyagD7jR07H8VTRc68q4ybySH7SfkKsnfiMG/lq44i4qsby51
         icaa+Qfl87IoQNZ3acuXhLXK+PjoTUipMUdr1WpA8B6pVk/5g3jGPN18ETyzVgzxymy4
         lSkT4y5nQ4ivR9zSd1eTDt+bdcaPfIq7q4YMaH2oSJxba/vgoPegvHf+SLWyvGSqfknU
         Nxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u/5ShcpkDdK+E68LBM4TmJjPVSSNJPx+/YZ3OLUscZw=;
        b=YodJLsF/pinpxZ75k+CrlBG8YYyVHPCoeZuwzooRKLnmiQh6XCb5sHsntta+hjCaZt
         88qEduaalfX1db0R/B2a65QbijQdlUBoAKJCZHLKFPuMWtfKecNinSP0JHF8x628BKGT
         1sh43O7vCRWbuaG/QOTwp7lbOjORQCnpazZFuh7RINx3n6cbEPQLUlOjzM0a2RfnmCvA
         W9WT5cl8NIF+RVXcwHZ2BTdxKm1KKo6JVBE9veiuFzfB+xrxeIiZDRQvCurkx3Jpsyop
         OSlcvo+9HYeYwvVaokdHEeW1D9qTcyv4l9skTdhtDtmN9YqvAURCI4wmgdCWwsYSySZw
         i7dQ==
X-Gm-Message-State: AOAM532TPbGgz0shis2637lH4UU2ioKaDfXgc9W5TloNd4doFrXnzP/D
        2qdK0Al6y6ZrCo1IlfIKmLt/VtOQNjWA8g==
X-Google-Smtp-Source: ABdhPJxFLbMzJXUx72i7LMsoOj3D2xmsEaP2sJOVoZthrlGBJs+bLriHYw4rj0EFPaXHajYBRgINaA==
X-Received: by 2002:a5d:4081:: with SMTP id o1mr11479919wrp.338.1600003686389;
        Sun, 13 Sep 2020 06:28:06 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id s26sm15256972wmh.44.2020.09.13.06.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 06:28:05 -0700 (PDT)
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
Message-ID: <ed93b915-83fd-64b5-d97a-8405905b28f0@gmail.com>
Date:   Sun, 13 Sep 2020 15:28:04 +0200
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



On 9/13/20 2:04 PM, Michael Kerrisk (man-pages) wrote:> Well, I said
none of my arguments was too compelling... I think that> I'd take one
big patch. Perhaps first, could you send me an estimate> of how many
pages you think might be changed in the patch.

$ grep -rn "(long)" |wc -l
56

I'd say around 20~30 pages.

Cheers

Alex
