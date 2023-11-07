Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE5D7E41B3
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 15:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234051AbjKGOUD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 09:20:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbjKGOUC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 09:20:02 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AA6B4
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 06:19:59 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso43668855e9.2
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 06:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699366798; x=1699971598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=agrcW5f3d5+NMEVghFmOdDV4klPUHk3wCfuEy273giA=;
        b=R4izAJA6eg+bKA8GvuCY9La/Y/w8gxf2CeIa6TzUFvbYAzia4iVgclX27foUpiyrT9
         9Guf5C9l72fZSwF1MqUZLlrMCQtE/rp3T79BTbHSuY+BweucdnVpRr1PfbOa8q2BiHJj
         DYWm45eATAyME/QuAdh85AxTUydIa4nwOFeTlGA+rMAYxPqvCcBfhr+hgr0OwDBaFMgi
         zCVEhtzUroNTqEBQLIqE+vEXLyqbu0DLiJi4Oswu7aporstTrilAXAJBRc2CxDoNn5bJ
         Aw763DQTppqoaMRzokGTiKdEPOGHu/8JCD97uWBfN6jRfqwmt7t/+bW0g0dddlZzPK7z
         dX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699366798; x=1699971598;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=agrcW5f3d5+NMEVghFmOdDV4klPUHk3wCfuEy273giA=;
        b=HGw5tCKHkHXLk0POMK/g8kFhpn2p/5TYK5yFZXPJ32d9GIXz7s+yXwiB/H5NmyBzxT
         XUZn5iF+gimXk/NU6OkxO89j0v8Uqy/kiq246Bnm11o2AfSjdDghqxaHDhfRBo7TqHdV
         /W5FFjxuqs/nScX0GDevMiFj8mwRgjCxTf717bu2JS4mOI9rKHI92BhiWAuO0QDpl3eV
         89AEP39pRgOFWcsv7aSkGzTW4zGeNWKJ5kckOLR9A3CnELt3kGjFg49Y0zzgcXvygC+3
         hE5iGsa7vKL35B8ShWSjbqP1X2388fGX6cRDvGXXx4EdE0PgeuOPCV22eX9aQngAx35b
         oOWA==
X-Gm-Message-State: AOJu0YzoFFzVwGOqFdvgjn4dhvCzUgxDJbGFdoZl/rt0v2F0zo8St2Lj
        3blDTzpglTTW9MFhAbzCaEQ25A==
X-Google-Smtp-Source: AGHT+IFaBUDjGFRYsEXXu1z0IZnTjSEOIqRuRcjRcriG6TcgcqHBFfctAgA0zFwL4d+7Zsnr+dXNQw==
X-Received: by 2002:a05:600c:4754:b0:409:7d0:d20b with SMTP id w20-20020a05600c475400b0040907d0d20bmr2285631wmo.24.1699366797949;
        Tue, 07 Nov 2023 06:19:57 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c4fcd00b0040588d85b3asm15856478wmq.15.2023.11.07.06.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 06:19:57 -0800 (PST)
Message-ID: <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
Date:   Tue, 7 Nov 2023 14:19:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <ZUo6btEFD_z_3NcF@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 07/11/2023 13:23, Alejandro Colomar wrote:
> On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
>> We see things differently, I'm on the C standard side on this one. Would any information change your mind?
> 
> It's difficult to say, but I doubt it.  But let me ask you something:
> In what cases would you find strncpy(3) appropriate to use, and why?
> Maybe if I understand that it helps.
> 
> Kind regards,
> Alex

I don't find strncpy appropriate - that's why I proposed a change to clarify the known defect in the man page of strncpy that C99 describes. Worth reading my first email if you're unclear.

If you doubt the esteemed C standards, I won't add anything further.
Kind regards Jonny
