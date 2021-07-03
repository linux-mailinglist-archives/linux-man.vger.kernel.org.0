Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2413BA9FD
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbhGCS3E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCS3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:29:03 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7EE7C061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:26:28 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id i8so3776314wrp.12
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3GKCQF/Ol2Mia/Dz7hBq94rz8o1avMsRGZCyAcylVFU=;
        b=s4Pv/TTpxNOxGzgTpSAN/4CuCsv03JV+JZ5xlTLJuhY98G/1HjmV3T8CeYZEqFiKYI
         pWXyUATEnWJmJ0wVwFtFVL8m9/RNDwWtkc2lpvphSbyKnBghk7WKG1ubIRTxZn35SjA5
         xvvhh/piObG/JzHbEHfLiMGiinlHrUjCAj3vJ9qwsuGHswX9w7BxAyVRA9d0TD/Qfcaj
         dIf3ZjFVaiZb+q0vhQw3KnP2tfhFPhsNKTQ7WUlN/5xFkBLM5saVU38GM+/X4GTOPsgA
         C/6C7sTRDYlR2Hh8oXNOrGVQ2+a23zIx4l4GDlKEDVY4tvNC2iA2P2nyxueAN/yA390l
         rTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3GKCQF/Ol2Mia/Dz7hBq94rz8o1avMsRGZCyAcylVFU=;
        b=o0UlGUVRZEfcvexZJfwY/xH0XfKyo+Zsg/yVCsZja1pJIl3F02s1biVua6u7GMwwoE
         bJTio7tbdBdWw6nXGvju60mzFF4FA2YNzZeAQ7/f0eg/1E+vRmzcYpF6D1sh96CacbLf
         ax+Mp8HtOo+RMhOeFfRtc6WAAlsOs8EpdvGiiJvh6BGFhn9GzLMtEtEs+lCfiYbgmyYa
         aXwuRBRCnzbXp9CdCX0cZvAXFZOeqpaOra6ED55dvSGsFUircUT+qbPxjlw7S0yebXgx
         E01bsJG/uzvpqNAykyMT0ByM7wBR1FBR60oFbcNVYaUXrxiDcJvB89sjCW1ytcdaqssj
         ZJfg==
X-Gm-Message-State: AOAM531f2+OZXHHkHeByE8exfFQ+7OpWjokZR064Kw2GlvdEgLykAJqD
        y54HkJm1mcznG5KM8+UL8qX6dI/IqnY=
X-Google-Smtp-Source: ABdhPJxy0ym6tXwk5vCX5Tn3VjEzzl/eAtYoJFpfBPazwUsF0dvBedwlRCQhYWM9kFJcqBcco1u5Lw==
X-Received: by 2002:a5d:5143:: with SMTP id u3mr6513417wrt.51.1625336787440;
        Sat, 03 Jul 2021 11:26:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n4sm7506390wrw.21.2021.07.03.11.26.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:26:27 -0700 (PDT)
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Darrick J. Wong" <djwong@kernel.org>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com> <20210621042550.GG158232@locust>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
Date:   Sat, 3 Jul 2021 20:26:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621042550.GG158232@locust>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dan,

> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
>> Fix a typo in the documentation of using fallocate to allocate shared
>> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
>> FALLOC_FL_UNSHARE_RANGE.
>>
>> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")

BTW, I can't find that commit hash in git.  I have that commit as
63a599c657d8.

However, git doesn't fail...  It's weird.  Could you confirm that?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
