Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2047E726E
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 20:42:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230135AbjKITmp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 14:42:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjKITmp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 14:42:45 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BBA3C05
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 11:42:42 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4083740f92dso9051515e9.3
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 11:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699558961; x=1700163761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2jIOe04njzKVATfmx1iKWc1LkXNRBv2kKKv4gTPinQ8=;
        b=BNycF2tWLJgLVOiW5lE2pZcLwkywhlmSZ2NFPDVUnfeeuMm+DMgMapaJ4IbWk5BOWT
         AR7/1EZ6+olYy7NhSBiCPNhLw0d594+bf304zDl52t98mAr52hmsXDYkSI3svgieHkTo
         K7rqU2VD2JO1GmSC4JAWSJ65TkhVcxOtG4VIqqaKtFdq+2CfKbXBOAZz2gKwU2/H/kQC
         fiEhuRlpYAVoE42m5ov/dl0fqx1soWwqEaRX5HBd/7dRK2bIwLVb/uG3HtCPVi0fhmiv
         ntlYG2862qqQMnPrIBiVtuc3re1Gu1ddasgk5WbVRP/tCX6NzmYTTYdxnam0T12sEIgQ
         Zo8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699558961; x=1700163761;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2jIOe04njzKVATfmx1iKWc1LkXNRBv2kKKv4gTPinQ8=;
        b=bR+qV1CyqkYgK+eh9m7CYGjf0FcGRhwrvev7+MpdQ3s1mc0II7ADwpzH9Ng7yvZG1v
         aIH4riDkP5smx+iciLRfleS2fmUAh7tt+h+IFWFet34FUh6YcSg1tooYGElGdzMS+XkS
         Fv+E+Lutn1G/qIZg94bN/R0tl/OxpQedcOy/q2ROPHBTT6KDc92CSEgQRPMGqLQGDUNa
         7al8J15v3T9tay3i0IY3RhvGpAZSIB8KSoF6sRj2bkU7fy7wqG7w/pdqg5RmYD9960CO
         0Ci1tp5d3SIekC8Omb4TaeRSk759TuJFPsxDc5rFhOZJNECo8iRpCsqXTC0JPRCvlBNe
         q+lA==
X-Gm-Message-State: AOJu0Yx/an5poSASSNc3CygbQkbxd2/CrTTbVmL6wKJjNvKVHoFdykoi
        YMhV5CiGYqk9a7CiDV7SUfOKEQ==
X-Google-Smtp-Source: AGHT+IHuIQ/dJ0IgrueiHY+prdNvNCPB/YQjxfReWqA+XVV/5xDgZ9FI9OLpwU5MUNdaJ6GqxrpLFg==
X-Received: by 2002:a05:600c:1c9c:b0:401:73b2:f039 with SMTP id k28-20020a05600c1c9c00b0040173b2f039mr5196978wms.7.1699558960722;
        Thu, 09 Nov 2023 11:42:40 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o16-20020a05600c511000b00407752f5ab6sm3051270wms.6.2023.11.09.11.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 11:42:40 -0800 (PST)
Message-ID: <55a76088-1f1d-418c-960e-f9ab691a5d58@jguk.org>
Date:   Thu, 9 Nov 2023 19:42:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
To:     DJ Delorie <dj@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc:     eggert@cs.ucla.edu, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, mattlloydhouse@gmail.com,
        xxc3ncoredxx@gmail.com, kukuk@suse.com,
        adhemerval.zanella@linaro.org, zack@owlfolio.org,
        g.branden.robinson@gmail.com, carlos@redhat.com
References: <xncywirg0m.fsf@greed.delorie.com>
Content-Language: en-GB
In-Reply-To: <xncywirg0m.fsf@greed.delorie.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/11/2023 17:30, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>> "Fill a fixed-width buffer with characters from a string and pad with
>> null bytes."
> 
> The pedant in me says it should be NUL bytes (or NUL's), not null bytes.
> nul/NUL is a character, null/NULL is a pointer.
> 

NUL would be a big improvement.

Kind regards, Jonny
