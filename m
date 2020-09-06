Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 114C225EE6D
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 17:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728905AbgIFPBi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 11:01:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726931AbgIFPB1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 11:01:27 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17C0CC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 08:00:32 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id i1so10098222edv.2
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 08:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rC5aqARf4+YcUy6XI9VfbU0pXa1FA6fUYIMkH9QCs6Q=;
        b=DwY3v6rp3MLX5ARiRNhmHWw9pdKMzSJZUlihKddeh7Kw7Oya1OxaoW7gy+MAqTN/p7
         uAaFOCtWtmE5FwVBx6zey9rpSBJ5OKC/QG90fG+VdpWoTFUHr/CNCKtt5uFLA+TzMHY7
         JT68+0INVIF4UrlewwbXn/G+1dexQ5j2ReTls4nP8/ZTM1Mn3vzL4+asULd7oQWqDo+r
         QQO6bHtP8efMi7KJhwJENthTapMxutfmwF4lGhzm3ohSB1Rp4d/Qr+TcvhPXrqGx3IRE
         IgK2xteDxxsIhtjd2oCgvSN5GgTq8HtCra3DYA0gw32ZoxDR9O/HiYZgQKc+sXDaPpeM
         c1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rC5aqARf4+YcUy6XI9VfbU0pXa1FA6fUYIMkH9QCs6Q=;
        b=K/IQWRpTGDe2DjDQ7ebP1serTeHFkVTRdq4m0+XOvzLdu6C4ii+LMcMYUdy+/LPWmY
         z3VXYR+0vuMMpktLm0L4l61p0G2W2dupXqL7/tluqEn+5FbXwx5qru/b/RRiKRKurYny
         PjguIONcNHpkFNNPjyCXkFCNvIkLD5j8U8JvIR8civGejBZtdHvev8sdbKf4guhivsSu
         SWvOcUrpYe2TGE7guWT5NCQ12pN7mcFtb57t7pZDLj8nnL1AZ88IAmM+K1RpMSiL5U6i
         TvfeC8h0eREK/TiA6F/5M0Mom+4uNBVB+qEcbXdl2roh7b2DR5VlTI/zLtfoNBFjTH4A
         jLHA==
X-Gm-Message-State: AOAM530sC13ov0KaNTLYJe4DXlNfHNNCSCFfoobdhp+b51be6GqyZpLM
        50AYOwN0zP6k6sW4wQIRwj+AexriekQ=
X-Google-Smtp-Source: ABdhPJzoy9nhy/G0RIB/D/u9vktHyxXxTmC6AKOaLs+vRrA0Rx0VBVKW3OGffPVSBD7znT1Ms7llAg==
X-Received: by 2002:a05:6402:156:: with SMTP id s22mr17369272edu.372.1599404430549;
        Sun, 06 Sep 2020 08:00:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id sd17sm12713796ejb.93.2020.09.06.08.00.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 08:00:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
 <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
 <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
 <fde56ca0-7ef8-846b-3abc-fb75e87f975b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16f71b94-f162-cdd7-10cf-20da6a4f8843@gmail.com>
Date:   Sun, 6 Sep 2020 17:00:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fde56ca0-7ef8-846b-3abc-fb75e87f975b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>>> I've applied all of these ,except 5/7 (I'll reply to that mail).
> 
> Actually all of the patches were applied, so probably you
> applied 5/7 by accident.  My branch is up to date with upstream/master.

D'oh! I just now reverted that patch :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
