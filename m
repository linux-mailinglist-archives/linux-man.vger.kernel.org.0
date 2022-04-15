Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5CF503322
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 07:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231303AbiDOXfm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 19:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbiDOXfl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 19:35:41 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A5C77665D
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:33:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t1so12151201wra.4
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=T7QowAv9X3Olr58ufmnUQQ6AR+tvvFtbjVIYW6Nmj20=;
        b=ewCCg8YKZ37EfplxBdZn2iifMH6WWwPtZdl2WuDShULHXqX7HESXyimbOTu85y1agA
         2lgaHIGWnxAIhkrKwVQEP5mrfjpMxHrMDUoSXUXmiCULBwBWz7a0+39Pj0ikabpvUYqs
         4884xgdZco+D+UXazwzOjdjBUHi0b90rBLwCSHDBUQlF/CAha9zS1GJEnjxybXN5KLls
         biAGuGaHnh36x0htIj4sHWMLFkTEjQfUdvmVQdIRl9P1GRjw+KjiG0Ypwnmq4od43Cqa
         8u27qZ1deZEYW07zm7bMq50+qbr0tW0bwcGriLpSjQWwtZTbM3k0fhUIuAn/WxT0qtZp
         iGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T7QowAv9X3Olr58ufmnUQQ6AR+tvvFtbjVIYW6Nmj20=;
        b=nUA2OaiTCH58cp7piqJAmwUkoNXqHxxdOXR/VMEvzSsbPadEHVA0ijgomamfRl5Q/R
         ArBVogfX4LDORq25O1EaV3QplZYGsTNWz7MNJfm7P2ZhUgYGcFJgt+ypwB9T2jupfT2U
         pfs8GcDVwpBREyxqTK7uhoUsQBtu4wz0KAKvenFUzYrnZmwptr9zL40Pa26DzqOG96L5
         SnuheztICRmSijuhncSAx9joR7L0w9QbyLa6bUrDddEQ2oFnaqv1y8sMthTbzaQ7lwGD
         KX2yAiFGni1IADYSW4xPa7tRtgcowXP9XuvDI81rhi2OS9PF0hJayDCpPN3LUWJWFeMU
         jurQ==
X-Gm-Message-State: AOAM5300RYzwMLwbo0rtjE7sa3gJDyf4+pO2g2GKPqZTB9QIQLr5misG
        /1wX2YqZde6Zj0a2z/VNKwc=
X-Google-Smtp-Source: ABdhPJz0qdrqGAGU15Whg4GjhatYM83VZV7FKFPPzNDWhChPbkspcWg6iW/x8BDm7ks+WAFm5u7LWQ==
X-Received: by 2002:a5d:59a4:0:b0:207:b394:bc49 with SMTP id p4-20020a5d59a4000000b00207b394bc49mr808667wrr.93.1650065590887;
        Fri, 15 Apr 2022 16:33:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v8-20020a1cf708000000b0034d7b5f2da0sm6121076wmh.33.2022.04.15.16.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Apr 2022 16:33:10 -0700 (PDT)
Message-ID: <abd2a499-cd4e-4ca4-3217-fd4012ed9b29@gmail.com>
Date:   Sat, 16 Apr 2022 01:33:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC 0/3] Prepare the Makefile and scripts/ for releasing
Content-Language: en-US
To:     mtk.manpages@gmail.com, nab <nabijaczleweli@nabijaczleweli.xyz>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220415233048.70477-1-alx.manpages@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220415233048.70477-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 4/16/22 01:30, Alejandro Colomar wrote:
> 	./scripts/append_COLOPHON.sh
> 	make dist-gz

I meant s/dist-gz/dist/
