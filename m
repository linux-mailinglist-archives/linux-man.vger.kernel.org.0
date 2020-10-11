Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0EE728A5D5
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 07:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726472AbgJKFoa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 01:44:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgJKFoa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 01:44:30 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07BE1C0613CE
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 22:44:30 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id h5so4957172wrv.7
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 22:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ivoNnlQEnwH679ZVJaJO+lnAa5f3hYTYc9qJQZXsrSA=;
        b=YEWbBODMkEWwfB50Frmo16GcgvrvBthYHwJx9vfkBdSniNyXkXw92tTyLgKrlS46Jb
         g+MIeTODRhpeTb7gRdNMpRIk6ocx6VxpaCieVLrT+q3vixOijHmb7Kztr7TqqK0cCPpS
         chcvd/KokyB2CUMUb421wYQuI3DVN5qgIqRYXR4wf64LDw+CP7B31rKKNHFjxOVTQQ3V
         qyNUyI9SyvU5UHzvIsYHUaywbUPRkWHUNLQI8Ffnigeck6fZ/HUAmWRLKTBgb5TVit/L
         awqa/JZdTVM3iwFWlWoHzOsI0LyHDGbHP4CP9H5fQPdsYWZpBdwnMfzzSpx9UvMWJbvW
         1SBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ivoNnlQEnwH679ZVJaJO+lnAa5f3hYTYc9qJQZXsrSA=;
        b=gNonJkmIJsKWBJrQEALfRNk8BSRETl2EFCA0KKQ+OrNdPBmymsfQtGs9Y4BCDtYwx4
         HXJT0PhOmrp5NRbwYspBX37hK8CXJGMoc+7Z1CuqiGSjxH/um2JfA1y154AB0vT1Vj9u
         6IhMYmqhwtaUDjoP7oKdMWDPnnNiIE1x8jiNbZ28cZFCKmIG5m2H40CreSL5sMb9xyCN
         SZQhbxLhfHi6AKt31jZMsVMonlX3JUDQ04JwVi9SdTSxfHzBMfH6PjE9iIIAtSs0oyGG
         L4ZRtw4YSir5U7YEhczveaaiN5A0GpJbPjzFKutuG/M5ij0o8tcJeolx6U5W9vSVsysC
         Aluw==
X-Gm-Message-State: AOAM532J73WPI6rwWQMIxrcq8+ULH6SFHRDsxDrnw2KBIAeuRdZxzgcS
        3qjwfkUSA4ZBGv1RXPDHrdaJH8xlre3PgQ==
X-Google-Smtp-Source: ABdhPJzQfKFD7FriCWuAZY2NZfkBaQEOzLeJXaeBJ5kiEs0XOG6dUAdhRdEXSySTg19d9dUGwjp54g==
X-Received: by 2002:adf:ec06:: with SMTP id x6mr22879511wrn.404.1602395068526;
        Sat, 10 Oct 2020 22:44:28 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id e15sm18627099wro.13.2020.10.10.22.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 22:44:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: Remove unnecessary include
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
 <a98a8b96-6df6-0403-0bbe-0f19b57b195e@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6aedbf60-dc25-963d-d896-c33ad4bbcedf@gmail.com>
Date:   Sun, 11 Oct 2020 07:44:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <a98a8b96-6df6-0403-0bbe-0f19b57b195e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/10/20 8:10 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I missed an example about these functions.
> I'll send you one next week :)
Sounds good!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
