Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA7842B3ADA
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 01:46:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726431AbgKPAqS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 19:46:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725981AbgKPAqR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 19:46:17 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90A12C0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:46:17 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id s8so16905538wrw.10
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6Ld92ly1+GFsQtGbLd8fvoAFwQMDz/c80+cdgDwh2Ds=;
        b=fURUC9p5gRpmO+UTaAt6Gxad6l6JhOf1Qvj3+0DKzKinuV2Nu0XmvI4VQ+xdNlcjJi
         cCdphU9kFiydZRqVGbQjPbvDSNwWHJS6v7PMnssSpwKCb4+Ilk0SbDNrjqijsH3d8Q+M
         G0iscZkLOaoy9PrxdHYqAB4GLnBnaCQ8b2P3I9G0CXpl00B6C96kvxZQf6k1/7/riCE/
         6NDHPYhEG276dO57rNIE2FryUE6DlGtS5nZ4u06v8NGzq4scbgW0ryelE2E/Ywl6uEsE
         b1P++lxt6mT1WnkFciDTfj3MfqrDd5e94/w2TTq5vE1vTgFxpT3j4+jM9q79FotaEoZ/
         9lnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6Ld92ly1+GFsQtGbLd8fvoAFwQMDz/c80+cdgDwh2Ds=;
        b=H+7lCpceU4zQUcYLgrhhZh7Wfz4oFFNVDhqtw4oYqg7dQcDqk69pOt/bz5rJCxGeB5
         DLbWtjRTLOZWPunHZ9QS9J9000w8GrhFbjaGSF4lQ8S2NXk3Mq1OXC6w1porgghtqakX
         h6+CvE5EL8RnC0yCFiv2CpgpnoSdBeGyR3S95zPgRKvFZGCsH92USKt3r1eS0B+4cqGy
         xtfVK3Jbw0M5Ms6IyplRq4VltTrsDKCvvfq1nz16YEtCfqopvS+rmMPPhTLobCKale3m
         BrHlmXsPZoCOqtR0n8gC37s6UzzJZan0bJkXL8+UZLrYQxl15o8siw6HDngm1f+LQOK/
         JS8A==
X-Gm-Message-State: AOAM530JtGW55x0ZfHLdpTzjbNCUTsKl/WYyxeaCmmN1D7IHDFrDIz50
        qtZ7Ds6Ajud0APDoxpgUP1OiRNDB1JZLcw==
X-Google-Smtp-Source: ABdhPJwl9ynl8oWBIDmiio9ZsjGI0IqFjMAvWd3k7Q5kg5gU6kJqKpGuhZ2/FTWBBPPv/V40H7yvsQ==
X-Received: by 2002:adf:c3c8:: with SMTP id d8mr16209165wrg.366.1605487575959;
        Sun, 15 Nov 2020 16:46:15 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id e5sm18808376wrs.84.2020.11.15.16.46.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 16:46:15 -0800 (PST)
Subject: Re: [PATCH v2] Add script to get modified pages for commit msgs
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201115230807.1994-1-alx.manpages@gmail.com>
 <20201116001634.3663-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5951402d-c391-3286-5fbd-71a4fbc86eaa@gmail.com>
Date:   Mon, 16 Nov 2020 01:46:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201116001634.3663-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/16/20 1:16 AM, Alejandro Colomar wrote:
> The script can be used this way:
> 
> git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"
> 
> And then maybe --ammend and add a longer message.

s/ammend/amend/ please :)

Thanks,

Alex
