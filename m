Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7D143C2A7C
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 22:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbhGIUpB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 16:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhGIUpB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 16:45:01 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8355EC0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 13:42:17 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k4so7506677wrc.8
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 13:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=n/zTTuZ+GON4CS3IvZFvqG+/McMlvgN34rf2IOm86DA=;
        b=idtkZBsUkfQYqu0kFJfcXcEIugiKdxKm4kPFtqEgJH64BOd97YEU+i6OxK0fnZOLLF
         xXYhDywp3uE3Q6eWl6aDs3yzp04Ml/sdzo8KYyQ2cEvvfkPvoICPDX2aJ1loiMh+lXDC
         PjNTXJjQQQZCd30dy6tcYj1k500lv3K2Zx5WZE2PGx8VKTyEq14wuK7zMU2PJbqrGa3o
         385r+lKViu5ecZYwC8tk1vDVvpBghDzujAHWJWqq/Sn9VG2bbQe916PsqCZ1mu0qPqp7
         ubXcILtw87AzVxTWiLcKOaiOjdQ8plbhLPYxNSi8NNx2ZJi9jSMrUfmybW8Rn7VurR1L
         Rkbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=n/zTTuZ+GON4CS3IvZFvqG+/McMlvgN34rf2IOm86DA=;
        b=IQ144wnCZdpGUo+0BBRwspeXGuYgo7MbxoqasVQTEBJHGsB+2JXyN1HBsqvV7ySTAX
         7kBOjow4g9+BFbeT9vG3I2sOXFEf+Klr3PAZQJN5dA8/Ug8MoygPiD2Xz740siB/KveG
         fiQMYaILu2Uf4s74/w6hp7Tvu4erro0f8cSgWD/KmsTu6oZlCc/SmI6u8OGDkpodwy/+
         AELPb4P99sVF08fS7MhoFNE3JzeBo1t3B/njzxcvheIDKEJyFOLfTsnnxZYr+iUxrHoW
         UN8O7zLkC6W2FM4FaCvH6XaZYqfRpEcpvLPnJQfAJPxXGDm9l5G6vEGM4V5tyJV2lkP4
         5+aQ==
X-Gm-Message-State: AOAM533cA0H0cAZajI0GSL+jhxGBWBSAAw2R3HzI0mPLhG4opNyE+Zrw
        Z2Q7peII6BGJ33M/8G8A/d/2Zv2P5QuDow==
X-Google-Smtp-Source: ABdhPJxpzYVLkJAZLtRCFHfpdp3cAsbnAABelY4KuPMDcEdANZvGButuhz+0WO8XM+a0NPQL4onq3Q==
X-Received: by 2002:adf:eec5:: with SMTP id a5mr18777323wrp.317.1625863336218;
        Fri, 09 Jul 2021 13:42:16 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id p7sm6111110wrr.21.2021.07.09.13.42.15
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 13:42:15 -0700 (PDT)
To:     linux-man <linux-man@vger.kernel.org>
From:   Jonny Grant <jg@jguk.org>
Subject: wcslen SEE ALSO
Message-ID: <5faa9290-dad0-474d-fa50-a9f280d65853@jguk.org>
Date:   Fri, 9 Jul 2021 21:42:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://man7.org/linux/man-pages/man3/wcslen.3.html

Hello

Could this wcslen SEE ALSO add references to  strnlen(3) wcsnlen(3)  ?

Kind regards
Jonny
