Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F835280F0A
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 10:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725993AbgJBIfZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 04:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725961AbgJBIfZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 04:35:25 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF539C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 01:35:24 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so763242wmj.2
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 01:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D1p7Dd8EPKaUSCoq1xg8vdBZaYcJ4v74iy4lAfMhAFE=;
        b=kW5hB0ENW3JD5hNFZcyc8YP4e66go6KDG9ayAPoqYbKeXFpV0tlGvykOdjLCkoQ0iL
         4r55dLFQ/bF02y72wmEPwe+b1OFJgwYFweJVCTb6L0pDXZnD/X16UtgecDKLBP40+o6/
         EPFKmwh8MOmWxJfqlDTDyMJLcRwRHQc5PpK5FyAjidBFbTQG19/DaVR/tdbaeS5RD+dg
         OJV3y6GkkG1tW5dzDwvEq7+wcE9gC5tk7X7sv5uROiD/R7JUwc+Li90zdwf5zQG/FzWH
         tqsnOLm7TjBfJGt0F5mK7kG2pdvxGI+1O/CUhWBsjIXreNVbfLDj+vOwmarWaA9YBumM
         TG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D1p7Dd8EPKaUSCoq1xg8vdBZaYcJ4v74iy4lAfMhAFE=;
        b=Z8WjGGRlbMQy3SP963KnICCGRUnENYJj/nBlCMAyAPWJp6PbNO63PL0WJlKZwBPQXL
         JvC5QPjGQv0aNa/rCcoYYL8l6wtRvRYVGj54qXr5aDqFzhJ2IN4fxWcSetIaU+JZvgvw
         /uVCswddgK42CwRZ4EBU+jnMxFo4bDOSEQ9iNX+GeVEeshTCjbL6Ci+gyqCKkjazZfjj
         6IRwUDGlWPGRjtPutFwzxAn81U0mgZtjO/t4nC3Q01jMzsTUUDcCY6XZAjF8DLOklo/1
         4U0rRnm8rB8k3Rz5L2R/CpqHXC0a3/IQJkazatFarH9RNZrraJaHcOQ+i4QANPgMpZi/
         aRFw==
X-Gm-Message-State: AOAM533VVbLu1byX+kJg6BeyzcXr6S/q4CafHQr8Z+Kfxp91MXt4v9zJ
        DE73Feu3teYYIbKkAKfvRHv8Nh1RZS8=
X-Google-Smtp-Source: ABdhPJySfHlqN36IPsl85SM+iCvPc61PMX/EcoQfBZuiSo8AFSXHFjkQUV2sciP92GRGElCkTMvSmQ==
X-Received: by 2002:a05:600c:2207:: with SMTP id z7mr1603995wml.42.1601627723550;
        Fri, 02 Oct 2020 01:35:23 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b8sm974172wmb.4.2020.10.02.01.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:35:22 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] system_data_types.7: Add int_leastN_t family of
 types
To:     Paul Eggert <eggert@cs.ucla.edu>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
 <20201001143535.98990-2-colomar.6.4.3@gmail.com>
 <b116e906-2a5d-1a7e-2969-52036ab3e8c3@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f6711dc6-acd8-257d-811d-75aa4d4a60fe@gmail.com>
Date:   Fri, 2 Oct 2020 10:35:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b116e906-2a5d-1a7e-2969-52036ab3e8c3@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-01 19:38, Paul Eggert wrote:
 > On 10/1/20 7:35 AM, Alejandro Colomar via Libc-alpha wrote:
 >> +The narrowest signed integer type
 >> +of a width of at least N bits,
 >
 > Motivation is missing here. Why is there an int_leastN_t type at all?

Well, I'd say the motivation is for the standard to allow
unicorn implementations that have types that are not of normal widths
For example, this allows an implementation to have an int of 33 bits,
have int_least32_t be that int, and then not provide int32_t.

But, I'd say that writing this information in the man would only confuse
readers, would not be helpful because those are actually unicorns.

The few programmers that may need that info might better go to the standard.

 > Also, on all glibc platforms, int_leastN_t is equivalent to intN_t; this
 > should probably be mentioned.

We deliberately decided to not give any information on this.
Unless there's a strict requirement by the standard,
or there's some very good reason for it,
the programmer should treat typedefs as what they actaully are:
opaque types with some width, signedness and other requirements,
which we document here.

 >
 > Similarly for int_fastN_t.

Same as above.

Thanks,

Alex
