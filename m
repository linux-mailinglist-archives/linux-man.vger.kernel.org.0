Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89FE97E4682
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 18:00:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234973AbjKGRAZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 12:00:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbjKGRAY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 12:00:24 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 130FB93
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 09:00:22 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507b9408c61so7803907e87.0
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 09:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699376420; x=1699981220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IaDEsBwPfs+XitKnGwSgvf31m2Dob3EIeAXnVqpn7cA=;
        b=Hlg8bFp4mfyJaLuWtH7qJQPlmtPglqT++3nKgMMREM7lRSKVy3o/Q86cwwn35VnnJX
         CITqKAqDsSGRfFx9C8v6zr2iVI+VpylNahMuLwXp/2OC9iKtHsk99XLiKXftzYj1rzCy
         HnhBK8mvA5QGPq88BYd0/tsr4WjX48Z4ZoD+hPKrkvdd7p1na3J6P4d8juOw/CGttiQ5
         nyRTSgNNxnbS9S6B2ATdt0WlTKxVqkXaRQw0VVhLLW49bF0nL1DNT9ACmCt0rogKYOld
         wd6XA7K9mP7bYwOEVhgW8cC2Bp8FnTVjSpA3pS2lGRkK884kRA1gUV7VEiTc3R5RTo9V
         3RCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699376420; x=1699981220;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IaDEsBwPfs+XitKnGwSgvf31m2Dob3EIeAXnVqpn7cA=;
        b=luWfKQGbkbgxJyxbbEDSzIl5Z74xqkf6ZBLmneU527KYr09fYKmvgiJA4kkRjySRsp
         mzyO/lTWfr6H0VSrYaKZfVIhZjvHYy09/nxNTJ1bnysE9b5W+RVsyAsNfb5c6pvRc9VG
         BzL5M5wQT3ao7Z/nNlhMnKTtydBeKVEdl67+6oJUm0jblRAMfdzs5DPR7Dp3y96+9j04
         bADBRBq6s0gOMZ96FJAeWh75V+oiqHiy0piWbz7/QCDxiDy0To9TsVJHMl7YB0wXMp4q
         6DDkSlk8s1qeuNIkMBAwyNTx1pMQCCbsHcJ9cz5tMOUMdPbClXplazamq8NGXOCTGDRE
         QWEQ==
X-Gm-Message-State: AOJu0YxVNcl3+CACrLdgXUMpI4okpGOdjDd4e7Unoi1qB4xg7YwArfPq
        l1nZM1jbQhL7t6c1Ye/B05ID7iG/vT7P0kMtfgg=
X-Google-Smtp-Source: AGHT+IGvmQJOrLSb451KE8gNoPbxIPgpHK7oKUmpLhTdcKZ13TdE9mD5S+dWeZOur415GFq6h64QXw==
X-Received: by 2002:ac2:5216:0:b0:505:79f2:5c6c with SMTP id a22-20020ac25216000000b0050579f25c6cmr22762312lfl.6.1699376420250;
        Tue, 07 Nov 2023 09:00:20 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id ba15-20020a0560001c0f00b0032326908972sm2877642wrb.17.2023.11.07.09.00.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 09:00:20 -0800 (PST)
Message-ID: <59eeaf31-ac59-4a90-b89d-adea5e011e74@jguk.org>
Date:   Tue, 7 Nov 2023 17:00:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
Content-Language: en-GB
In-Reply-To: <ZUpjI1AHNOMOjdFk@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Your comments don't relate to aligning the man page to C99 spec.
Jonny
