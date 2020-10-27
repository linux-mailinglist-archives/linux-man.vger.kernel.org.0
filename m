Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACE8C29A9F1
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:44:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1416791AbgJ0Kn6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:43:58 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:36551 "EHLO
        mail-wr1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437150AbgJ0Kn5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:43:57 -0400
Received: by mail-wr1-f54.google.com with SMTP id x7so1327042wrl.3
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=56wIHdF+a/0y2hltB9y7+8JLMd8NqCanDqTDPYicMog=;
        b=agOPK23OMpgz41NbDMRGwyLfj5ZL6vCM1BHxEbuQ82pNFzP+YQJS5eWkPdrJIyFV8b
         UAVcjHmRn0UjFSoHXsisrr+e3lvGCS8vwPapZ6dUQt5WZPgEZep0oe/68zJoSv7MflaD
         t7oLGhZeZVkTUb6kKaJnA5nPN+YgKdjOTp2ChSTaUeeujfDlFxp7rWgHtveuuJRj0sZI
         RqjMHIayWQjXbUbXa/x/ZMZc3OfIX2LBQK8omgOITyw3+JKKzHyh/Fb5A5x/0X6YMErI
         P34uaqRDPDH0C2U8bdPoSlpLwr6ThW7XyukgU1jqWJubAkaMDhJjeYlfp0yQButdTQ9l
         KnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=56wIHdF+a/0y2hltB9y7+8JLMd8NqCanDqTDPYicMog=;
        b=Zk17Bd3BRzvvOJ3rvNSihQ5XzumndcBQkxTMtHWfWuhw0K8ocEJKabsvWqB7uEBi7X
         o9c+KOyjSDf0v1x6sgBr4YRzTP/Idcdi5Z9zz6m9pgNsorh4EfS2weBRuy9J8HqMQVN8
         4wqS5wfhCbVzyFJq+Zco2X1ppM1YgdvCG+q2McmEjzv8GvpC8oMu9+Kc4lpvn9dgFe6/
         XbnfyOCLVjcS9FTJJISynNE/7TGLAyu9TO+8l3/XfubG7hS7uSPjqeHqIH5fQixzKc9x
         u5wNdhZcNGX+2O7UVffBn3M899v7W98EWgWhE16Lwkp2FZxob7Aev6DqdXzSItNbdPrM
         E4HQ==
X-Gm-Message-State: AOAM530kaoyTKaSwlqnfV6cNIqSkXFzMJMK1/JJe1nKcZM2SpID6JICB
        dwOTK44EUBqx1DeNvd754JfebroU+XGbZ/Rg
X-Google-Smtp-Source: ABdhPJzZGA+2a5/DIXE6L5/XsXCiWaMA1W2hGrgkGkYVlXyCvY4tQ+JyIcinTaQDMizfZh95uG0A1A==
X-Received: by 2002:adf:814f:: with SMTP id 73mr2068956wrm.174.1603795434177;
        Tue, 27 Oct 2020 03:43:54 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id w7sm1691471wre.9.2020.10.27.03.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:43:53 -0700 (PDT)
Subject: Re: argz_create
From:   Jonny Grant <jg@jguk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
 <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
 <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
Message-ID: <0b3cc00f-e0e3-deed-f3b8-5446bcaa7742@jguk.org>
Date:   Tue, 27 Oct 2020 10:43:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mtk

I noticed "nonzero" needs a hyphen "non-zero", could that be changed please?

Also there is a word "nonempty" which isn't a word, and isn't needed I feel :-

"Allocation of nonempty argz vectors is done using
malloc(3), so that free(3) can be used to dispose of them again."

May I ask if that be changed to :-

"Allocation of argz vectors is done using
malloc(3), so that free(3) can be used to dispose of them again."


https://man7.org/linux/man-pages/man3/argz_create.3.html


Kind regards
Jonny
