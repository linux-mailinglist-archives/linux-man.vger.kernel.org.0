Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA38A25EDE3
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 15:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726931AbgIFNAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 09:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725803AbgIFNAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 09:00:02 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0133C061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 06:00:01 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so11868579wrl.12
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 06:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5j1nNwIxJpySa2pFYWqOIowf0IOdMZjN114NZ74ptns=;
        b=GHuWI+wcZq5mJIq+o61Utnq6P5TH+edXGavr+caVdyPYg4PXgQ1wCgSAW/S3skuWB8
         qgWO176RZi7nRLkMewTXJEx6zZzB4gZ+MlQKgBNF0YHEetwGO+7RgcmS8WoDosXOJfXl
         /yTcK/S7Qp6cL4h8IGa7oIvWB/N2/5oWZIo3ejpYUi2UeW8+I1X+b2jq4HCYs9jgc2uU
         qBHFByrE38QkZ8dr+2p6D/iXTyIHGAT3pfgwsSg+TT0MN8MO1kiQ+AnancjkwuYghtIy
         hG/dMRYt6Gca1/Uu54Ga0d7tytDyB84lePL1dZCjtKxbU4ZEQbic/nsGH3CkzTUCp25h
         GVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5j1nNwIxJpySa2pFYWqOIowf0IOdMZjN114NZ74ptns=;
        b=YS0DYE2lG+qmGFLXH33B+tUgy1bPVjjuaZS2gwdvwz9QAQhQykowXF/NumHnKaV6qz
         9U1/4mX+c190Co7RaUyTlPv/yv/kEnWUdQT3YPLbV3Nrt4y3oTEu/lSdS+s/LUcnGgrN
         MTHx9vDD5hh8kWh1Tc8NMK34paMC1SwFWOtihuCWvGS0u18wdMDGve06DKwGBE/ejSWh
         wrbl9i08enaEtPRzpI7kjKTpTETLpldxLgXP7kplWjIYFGfCHPF1x9tuQsUMTTTw5DrW
         5cO4TpJXZF9DNX9g1PzuSuXiAUQ4KbN5m3bTADFTBBH4GAp8CEpPqKFTxjG3Yaquomyo
         sv0w==
X-Gm-Message-State: AOAM532N0cMbuINfGql1gut/CmpdbUTKWyF6/zxD4Tc82QZ68a8/9KTv
        WfcG8zazPGCJaLVxto4Ttj5cRUnAw18=
X-Google-Smtp-Source: ABdhPJyFVcI9wEMw0hicGxRyAPp4umr779LuP5FhGRzSU1MIOvnkyHuMBGL7Eeu1jZgGhTp/PutgUg==
X-Received: by 2002:a5d:4d51:: with SMTP id a17mr16611208wru.248.1599397199602;
        Sun, 06 Sep 2020 05:59:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id g8sm22521390wmd.12.2020.09.06.05.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 05:59:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 0/7] Remove and/or fix casts
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <498c522e-e684-22eb-de82-e766973d4461@gmail.com>
Date:   Sun, 6 Sep 2020 14:59:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/5/20 5:14 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> [PATCH 1/7] sock_diag.7: Remove unneeded casts
> [PATCH 2/7] pthread_sigmask.3: Remove unneeded casts
> [PATCH 3/7] msgop.2: Remove unneeded casts
> [PATCH 4/7] user_namespaces.7: Remove unneeded cast
> [PATCH 5/7] dlopen.3: Remove unneeded cast
> [PATCH 6/7] bsearch.3: Fix intermediate type and remove unneeded cast
> [PATCH 7/7] qsort.3: Fix casts
> 
> Here's a set of patches removing unneeded casts when they are
> unneeded or incorrect, and fixing those that are incorrect but can't
> be removed.

I've applied all of these ,except 5/7 (I'll reply to that mail).
Mea culpa for 2 and 4...

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
