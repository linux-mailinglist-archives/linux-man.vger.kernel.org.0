Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 149612D4919
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 19:36:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732979AbgLISew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 13:34:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbgLISew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 13:34:52 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EE3DC0613CF
        for <linux-man@vger.kernel.org>; Wed,  9 Dec 2020 10:34:12 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id a3so2743841wmb.5
        for <linux-man@vger.kernel.org>; Wed, 09 Dec 2020 10:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jR2MdtopSZOV3tTBN0Yp0TMCveXH71L9CqcRPbAJYN8=;
        b=o4/dmlqVY6yZzPgQ6Q4IaXFHVSP1Il+OGnoGUD8BYpZqHqXUqjv6FRkNR33L0NQQhN
         da0LhUTjLn+jtKAYJY57FOaZgfnYy1Pzp+X0XQ55tt8PIdC34Fdols4WxKtzLCBPlMkb
         NPGdZqF1a6wiqw7TaCJmwZT2v2Shi8aUUW/i/Boih48MSNiiOPwIiUBz7i4H0kanQXGI
         nGi2icj+9JQkK0ujb9irGS0z/KvQz1WGrA63aqAYPaix8SN5skMYQH2e7UBRP63jUQsP
         tMA8bv0t5mQ6DJrrEqsV0Oozx1zz6YrzUpin/DL9cce0cnCne5Cyb40SxEnLKWVa9u4q
         vz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jR2MdtopSZOV3tTBN0Yp0TMCveXH71L9CqcRPbAJYN8=;
        b=ejL06gRo1TrLoo7udxAZw4ySLsvjbYHvAhWK3ziL+iEpIGZB19fSzmpQ/lgdKf1SNm
         UMFv/Qc5AFmYKEjugJVozPNxn7HZ0h/1djLLkId5RkT4OEBQwc5f8UNliK2q+wPUI4MF
         qMEtu6WLKtj/o3N4NYC4f1AGbpdNoJnd1ERIfO6eznnjx0I6nuzLqnqpxXr3wE9Pehak
         6X7Ssljjn24Ycf8w6GNoJNBlWT+jsfai1uhW3W7dA/bDWdDXuEKMwEg+DWVKu8W8A2tM
         irNvwc8V9Wvhewt0IkRADuIbCjJ3DkmkM4aHZQ5Cg5c+XmKDmjpALSdcwVeQutueG6nm
         W2GQ==
X-Gm-Message-State: AOAM532Ci2gOOI1lEZmC0d3t+L7GLJpiELdtsYXP8HFPWv8MMyT7/Qvs
        TMKYglsvkn0H3pMP7Z+ZoUweENfAWYwXtQ==
X-Google-Smtp-Source: ABdhPJy3Sf87ZryK9zysttHMUMX/VMlEePJSTgZtPukSBsG5Hudnfc46koOvBffwizxxIivr+pc3vg==
X-Received: by 2002:a1c:2003:: with SMTP id g3mr4244072wmg.136.1607538850659;
        Wed, 09 Dec 2020 10:34:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l1sm4804425wrq.64.2020.12.09.10.34.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 10:34:10 -0800 (PST)
Subject: Re: cacheflush.2
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
Date:   Wed, 9 Dec 2020 19:34:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Heinrich & Michael,

What about the following?:

[
NOTES
       GCC provides a similar function, which may be useful on  archi‐
       tectures that lack this system call:

           void __builtin___clear_cache(void *begin, void *end);
]

Cheers,

Alex

On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
> Hello Michael,
> 
> function cacheflush() does not exist on many architectures.
> 
> It would have saved me a lot of time if the man-page had referenced GCC's
> 
> void __builtin___clear_cache(void *begin, void *end)
> 
> Maybe you can add it to NOTES.
> 
> Best regards
> 
> heirnich

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
