Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4E1454680A
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 16:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236440AbiFJOHv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 10:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233100AbiFJOHr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 10:07:47 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5CF4914002
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654870063;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=oNWs5ba0CLyEfWmFHDLU3/iqRFtVDYZm9ObGN+wkIio=;
        b=MArrfUV5pPL9Z4FD3ZCm/6R8WS8TWYcdxkyNxh91ZrvOuvbgujwzjsAkM3ednsvWY4TeGl
        Qr+zpivrKAgCD6MtMHvporx8qB6Z5m0ssCyBEH+7nYlWJE0VJwjM61HxJwkRei5B4ov0qr
        fbzZCriVK8NdqsvIFcyKjlOsNLBjGuM=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-oUjFEGKcNDCTv8ysAhv2Jg-1; Fri, 10 Jun 2022 10:07:39 -0400
X-MC-Unique: oUjFEGKcNDCTv8ysAhv2Jg-1
Received: by mail-il1-f199.google.com with SMTP id a2-20020a923302000000b002d1ad5053feso19658022ilf.17
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:07:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oNWs5ba0CLyEfWmFHDLU3/iqRFtVDYZm9ObGN+wkIio=;
        b=OfVu91W+FBO2hU0drnqYp4X7NSjuexMAJqqnNlaKeUcgbX5VxAEE5WZP2231brN6or
         pBeFIH30OUSQwX9PK/YPyFQcoXwoVa70DOjk3/gUGsLUraV+mkrhSTUJk+k5lsP07ljX
         NbyGZPEOkclszaI8umErhUwjYurStxxJXdS4j9o1nw/clAKvedUfufFZ+FILHF5+L7qs
         FOKXQGOmR2PJgY6MDYIygov7GyOWohuT4zWZel4EP1I2cq0U42SIY5XuX+WCxFpboq9+
         DThPYvP+OH9qqpKMGZv+E/UT6c1Z10g4H9l8mfWrz3ZfuCTkHdl7bX/LYIMMa7szsvB9
         KT4g==
X-Gm-Message-State: AOAM533ez/QKzBppTIzCZ803QJ/9v4t5u2y2mrj1P9KEsupOlMaOhjjl
        YBUwRXDlx/avZF3bUFOxIt39B42vyTD6ah2YFPBiqen8HfsP3xcowivODkAMBNGmk/EYUKEY/IF
        Uff62ilLgO2LtfdX69sd+
X-Received: by 2002:a05:6602:2c4e:b0:657:4115:d9e4 with SMTP id x14-20020a0566022c4e00b006574115d9e4mr21355240iov.91.1654870058565;
        Fri, 10 Jun 2022 07:07:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMFFunRERzGiq8cz3wTUgp7F/czzSi8M9ZBzNlgWaxFjk7nMaRfaCnEPN6A2pA3Dj+kWcZEQ==
X-Received: by 2002:a05:6602:2c4e:b0:657:4115:d9e4 with SMTP id x14-20020a0566022c4e00b006574115d9e4mr21355223iov.91.1654870058281;
        Fri, 10 Jun 2022 07:07:38 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id t14-20020a5e990e000000b006695b8bb8d3sm6147359ioj.12.2022.06.10.07.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 07:07:37 -0700 (PDT)
Date:   Fri, 10 Jun 2022 10:07:36 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     David Hildenbrand <david@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Message-ID: <YqNQKMNXMvxH8+aE@xz-m1.local>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
 <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
 <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 10, 2022 at 11:38:53AM +0200, Alejandro Colomar wrote:
> It's not perfect, and currently it doesn't detect semantic newline problems,
> I think, but I guess it could be improved in the future.

Semantic newlines can be challenging as IIUC it's not deterministic?

I mean, I had a feeling that some paragraph could have multiple valid ways
to do the layout and newlines without violating the rule.  IMHO that could
be a challenging part for contributors.

(Or maybe the rule was deterministic but I didn't really fully digest it..)

But the tool (even without the newline detections) looks promising and
helpful.

Thanks,

-- 
Peter Xu

