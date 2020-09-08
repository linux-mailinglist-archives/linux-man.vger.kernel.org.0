Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4BD260D8E
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 10:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729265AbgIHIaR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 04:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729234AbgIHIaQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 04:30:16 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DC74C061573
        for <linux-man@vger.kernel.org>; Tue,  8 Sep 2020 01:30:15 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z1so18185498wrt.3
        for <linux-man@vger.kernel.org>; Tue, 08 Sep 2020 01:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xQaNOO/Xvtw7Zel9uA720cyeu6iNuOAeYNPCn0fI50I=;
        b=H06Hgs1VFi2dQ64VMRIyyLcj/hjSpsdOiVMuOQqxqvH4JlkdZ6OyOeoV6d7EJpgrt3
         IgxM00TGaJ7HnJseb2i6TjFziOQr2KGjvK9nJLHMQaizNcD3CgvlLUIJJuPzQoLuPzqT
         pJVxiCK9QqVidw36nE2SSiA1Tz6jEWyamvjF2LrapKEfsHpRfIFnrmQPeHdv2Xe+gjBQ
         jysuPOAeLLW2fxqobq6TmkuinzLjhcWEef0ZdE8q1fha37fStY1JzgTQGHnV0b9zS9pV
         qEOyunXBBysQ+NABDlVzftRCihShDgqeDXTnI4dvNKQ0d2vwLk2O7vHPplpNB75S7tyI
         i5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xQaNOO/Xvtw7Zel9uA720cyeu6iNuOAeYNPCn0fI50I=;
        b=sC0np67yFF9auOjSRq6jtWDLIcT9AIBZ/Go2fLh2xVjxcakz5QGjhbiUcl6K+MFzew
         RpeIGPtUv8kWLxnxsJhx5VO7MuLR24l5SvKHpMNoLavLAjgBh/mcNbSxyPN7wcyrL5ld
         ykzY9EgDj75+ZflVselrPb2O98eWv3OkJxMy8ugK4m9u+gDveR44A8W/yTGAJr2vpkaQ
         BeL/auvs/32DyDxv/v+7UFDOH2+Gys8P8S4PDkPlAeSRWJjaD37f5aSqOSRMqChlbYvl
         SQDk1Mlt2jSTdRuvm4uz2sOCj5KxasvNWfe7c1QiUcZ1ZT3V1YTw9U+k/Wc1AQEz8zZ8
         KsWw==
X-Gm-Message-State: AOAM533SDtceW4LHT93qCDJIC1gzShPuV/AtGLVHInOu21HwlLrhV62T
        8u6+a1EESM4Jc3m4PIa2ooclHTYAG03yS4cb
X-Google-Smtp-Source: ABdhPJyugafvL+gbJHZfxTniyK0y3UAykF49UaZqEyuFKVr10DzrAeAYSGA5OIFtBZqYwsLvhO2Wsg==
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr26970862wrx.16.1599553812838;
        Tue, 08 Sep 2020 01:30:12 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id i16sm29415697wrq.73.2020.09.08.01.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 01:30:12 -0700 (PDT)
Subject: Re: AW: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded
 casts
To:     Walter Harms <wharms@bfs.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
 <20200905161050.711839-1-colomar.6.4.3@gmail.com>
 <c27b577c-b8b6-4267-78f4-eba030a8ea48@gmail.com>
 <16456ba5979244e0981c3764fd564c49@bfs.de>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f94a16f3-9546-987c-f7fe-30e7cfdb9720@gmail.com>
Date:   Tue, 8 Sep 2020 10:30:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <16456ba5979244e0981c3764fd564c49@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter,

On 2020-09-07 09:54, Walter Harms wrote:
> Hello,
> i am sorry to interrupt here but ...
> IMHO the void *val is here for a reason, because it means
> "this can be anything" the reason why int ** works here is
> that the example uses int. You make the example to specific
> in this case. may be the example from bsearch is better here.

I would say the example isn't clearer with `void *` and the cast; I see 
it OK as it is now.  But let's see what others think about it...

Cheers,

Alex.
