Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57AB0260D49
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 10:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729762AbgIHIQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 04:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729257AbgIHIQc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 04:16:32 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C978C061573
        for <linux-man@vger.kernel.org>; Tue,  8 Sep 2020 01:16:32 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id x14so18047781wrl.12
        for <linux-man@vger.kernel.org>; Tue, 08 Sep 2020 01:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EYeJAFTLLGAHPbZOYCaiqXz0qp3u/0HNyHpVA/7giUs=;
        b=SZCDr8e9M3oXYEOV3HHn+gwUhzhRcyejgd62ytU2qg98QRz+90HqlQ2PiThgJZiou4
         K6G3jpysKz/1hMzheQjuoz5cBplFNFK+o6Yv6ot36Lqkbn65s2REVmJ2YvAtn/J20AHJ
         4unpvMBoWGbwhOWDUA1/Bgi9XRt8/98rDU6NC7GxrPstFkhDdJfEy1H2+c+T820t3rAK
         ZRbPH1uaEievpHFquyqbb/a3xz2VOxYn4dgJ8R0q6pz6mtWXbhvHssJ+UzdfgLJL9Szt
         42JMO99wnehfyKRbL+KN5CQufXDa/ySupchyPbh7wTa510bUsUFC+xXMgMttxgGflUmF
         wHnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EYeJAFTLLGAHPbZOYCaiqXz0qp3u/0HNyHpVA/7giUs=;
        b=idvq/M0vzTQwiowJWEggKiTvM5ANN4k6Avv8k63JmOgJQm3ldA8xjNmfGS4y8oUWMf
         taTVanZFAn/s7wG0vC4uINiuoAum59oK9CW4VzjXLSmcjFdAkpS/EtRmEZ7dIcHGPjLG
         558VrfxmzXq7tdLozj63peywJme0r9SKOz4JLMvWDv0U2+KzOXzT2OrRxDVDtuQh7FE0
         1jmJBBaT42WVgemXsdapZrCE4YMf85BTh9AMEV5zCXUmDpqKGJxKuSXd5qlVKf5RayGg
         yO0TxRLX30OP3KkRA860cCskNGFl4GA5ZcD0EpJ/mTbNYoLVqgCZyQ5GT0MPVjJhcTS9
         FwIA==
X-Gm-Message-State: AOAM5307FmIEnk2e9Gl1M+O/elajiOsw24BygDaf71XZfrU02vJO2zpO
        ng7O5jTXuTj8LffQFXcHHAHr021w7c1raw==
X-Google-Smtp-Source: ABdhPJwDW22csyRn6h3JiJ9KmDHllhkL9HMeGkU4BmwvSZPXu2iQ6M6q9DyAotCumSS2l+16vukPJA==
X-Received: by 2002:adf:e385:: with SMTP id e5mr25122903wrm.129.1599552988826;
        Tue, 08 Sep 2020 01:16:28 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w21sm32249492wmk.34.2020.09.08.01.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 01:16:27 -0700 (PDT)
Subject: Re: BUFSIZ vs magic numbers and co.
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <84fe18ab-7ba1-a8eb-0f36-6b0dafe6562d@gmail.com>
 <CAKgNAkj3DnVNUMA_=OM1Cw9i+3_LBhiqLfSYwYUq127=rPuDzA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9f30da85-af3a-870b-47b9-5f8f4b87dcc1@gmail.com>
Date:   Tue, 8 Sep 2020 10:16:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkj3DnVNUMA_=OM1Cw9i+3_LBhiqLfSYwYUq127=rPuDzA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-09-08 07:24, Michael Kerrisk (man-pages) wrote:
> 
> Yes, I think that's a good point. There's nothing magical about
> BUFSIZ; it relates just to stdio.

Yes, I meant about stdio related examples such as fopencookie.3, but 
still it might be better to keep the magic numbers in those cases.

Cheers,

Alex.
