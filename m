Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C44C267E7D
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 10:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725920AbgIMIGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 04:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbgIMIGN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 04:06:13 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76B06C061574
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:06:11 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l9so8312420wme.3
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CGTYFu/qHE6BWFZzucuEo0kXsjs7xk9PWzbXdvkGz4A=;
        b=DROnArnkij8vRl4RTOTGMRoGS2en1x9ZmFf1/yuohkrpSEVy5LJkOIrMhVuT4Vcz/A
         0K7n27uhdYVocqjIR6JiyMNtHuoTdQbe5ngbFG7wt9OmBC92kBLn4gPuWBypXpB5csLK
         IMnbY0+ltsrijS4whQSvzbe+KUYN19WpV/bJl3VCMq3kP6NoPLcjv77XbAqg8LqzJzvF
         bbBloTFj+jxQkmh+oRQgrj9XlB3as+MBlvGBNTQvU430pbCJllcFNdpYfagOqF02mjE/
         H6sXoIR4WaVLWnv727atNoIOQRz5jmQh8UuX1HRSz2CCPecaUPId28SwlO1HvvHQUtf+
         oVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CGTYFu/qHE6BWFZzucuEo0kXsjs7xk9PWzbXdvkGz4A=;
        b=pVXC7wJWvGZ/ynD5EfVACbGSYcua66NWzP2dUkVaUWdhA5QfLVs1R7Po1Cggb85vlm
         kUFtMcbCxe3T4YijUkzqJHShCrhJApujpUTiZ7TuEh0l/iamMg82jyzVDmRUv/Bhr1yb
         NTtllFBFMbVxan+3XnhRtkxKBBdBr338kpAoXR8rNVpV+YmwjZVMtNVrA05gmfN2Xx9u
         yF6WWaIzEpcXZjYBXIBbto43PQMy4DDOcgxCSJirJInxpxOrNXAwtQb9HVPtYiYXA2WN
         fQBXm5PbfJDue74rYRi4M//6JzK/peffEj7eVATcVRGjiPYUwfTQ7uqzLkNfzPqf1lsc
         n1XA==
X-Gm-Message-State: AOAM533Lw6rM4WMRwbUgkAtguviLaxWPdGkgLjEOtT06AqxXUMbDxmsN
        ItvqpKDovQBZ5m+amvfzWYfr/i8iLQp3QQ==
X-Google-Smtp-Source: ABdhPJxNqNDSp4hnz0Rf8l+6pMLRvJg3XJIKfpowTZFdFlinYEhHeAfp9+7E4bHzgz9uK8LEZZ+z3g==
X-Received: by 2002:a7b:cc8f:: with SMTP id p15mr9930326wma.18.1599984369791;
        Sun, 13 Sep 2020 01:06:09 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id h2sm14499622wrp.69.2020.09.13.01.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 01:06:09 -0700 (PDT)
Subject: Re: [PATCH 12/12] pidfd_open.2: Cast 'short' to 'unsigned int' when
 printing with "%x"
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-13-colomar.6.4.3@gmail.com>
 <002ec44f-8267-89bf-3959-955a0e1fa449@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <781c3b6e-1fb2-98c3-8b08-32a0a7acb6ad@gmail.com>
Date:   Sun, 13 Sep 2020 10:06:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <002ec44f-8267-89bf-3959-955a0e1fa449@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/13/20 7:55 AM, Michael Kerrisk (man-pages) wrote:
>> -    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
>> +    printf("Events (%#x): POLLIN is %sset\en",
>> +            (unsigned int) pollfd.revents,
>>              (pollfd.revents & POLLIN) ? "" : "not ");
> 
> Does something similar not also apply as for patch 11, since
> the short will be promoted to an int in a variadic argument
> list?
> 

Good catch :) Cancel this patch.

Thanks,

Alex
