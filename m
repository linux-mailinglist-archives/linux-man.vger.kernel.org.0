Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E17C4280119
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732381AbgJAOQT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:16:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732339AbgJAOQT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:16:19 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A0BC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:16:18 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id k10so5973527wru.6
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gvrc0wRqth957LexWFKEtzJqZw1jFJ1AA68MSEMCWCE=;
        b=XpiD1zqBYh5aRBFjlg+SZFlfLuPiCpVuiEKW+uOpFoS0Tj5UlhPP4Wt3OW80SI19DW
         W+0O9J+72IFWAtCi/bvFno3LAWsHH0L3zj6UXQGp6qEkjGF2QYeyzCC7oaS5xz2MHYzg
         FMSqRi8B2hSLLYHgSw0z/nkk6qq8XX5aiByYwPx+ARoYr2EWIOMkAuCdeiOuM3inOxiT
         vZrImGTXjD5gLFYimFQEOl4JpJC+nEBDC7/qzNIOpVtAg9NG8+f481IzzkN5SDpgXB93
         T/5buw4AsbXiWF774V4uzx0rr8w40oygK6AbMgbxeyBu5iwJTRBSutXm7zVQN4+KdFsD
         ztmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gvrc0wRqth957LexWFKEtzJqZw1jFJ1AA68MSEMCWCE=;
        b=aRPb6X2q0kltgBibIBxiiz9nhROdRVlC8RpJqtgK3nrVpliLWIOKdug73x84TP556H
         UoicWMXpc6kpHpKwwDKHR6+JL/i3TIspmjc8cf8J/Ek8jPsRBRKww9o5e0WlWQXSMZsR
         AYoTM/X69ysHpLs2CQiq9SlyzE94dBFbukrcXGofHYyIy+kCv+RBZ8M6YyC9RN9Rm7pS
         dDLhZBmByF+VViy4VrZJI4srKZtvLFfrAAV1vjRRLqaXkDIMo42c/7fn7uiGIafMAJUR
         7N6QXsqiN9H5rTJgN5g+guuwx/8WwfUv8RDvxXJRd6fC8ncVi50TXtLe4MGRtBzP8y1R
         wfMw==
X-Gm-Message-State: AOAM532DK7Nx5xedcHs+Q9QdKdVCLGd6auwKlsINIpYhHTD8dOAoKMl4
        IzDdDXdS7iqw59ANE3FEaYQ=
X-Google-Smtp-Source: ABdhPJxfeD6C35eY0EKU9UNkSaX/q/H6mfnplOS8bsrAUrR/z7PTz4Z7PnjVPVz6xXcAm9w0Ob8EOg==
X-Received: by 2002:adf:fa52:: with SMTP id y18mr9386145wrr.264.1601561777434;
        Thu, 01 Oct 2020 07:16:17 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id x10sm137096wmi.37.2020.10.01.07.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 07:16:16 -0700 (PDT)
Subject: Re: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of
 types
To:     Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-6-colomar.6.4.3@gmail.com>
 <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
 <8dc9e60d-f838-87d5-2fc6-c34a84118916@gmail.com>
 <CAH6eHdSBwvoXyT9ToYV=Su+vqyBwqnbbWjWsNVb14URdueG-JA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <e46c4ddf-a121-bca5-57df-b68faf7ee5a8@gmail.com>
Date:   Thu, 1 Oct 2020 16:16:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdSBwvoXyT9ToYV=Su+vqyBwqnbbWjWsNVb14URdueG-JA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-01 13:27, Jonathan Wakely wrote:
>> How would you word that?
> 
> I gave a suggestion above.

Oops, I missed that.

Thanks,

Alex
