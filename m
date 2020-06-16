Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ABEC1FAF5E
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2020 13:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgFPLgh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Jun 2020 07:36:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725843AbgFPLgh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Jun 2020 07:36:37 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F11C8C08C5C2
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2020 04:36:35 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id j198so2073792wmj.0
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2020 04:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=EvDBastjS+EEm/ScWUsDSI2n/acTjBVXUc9HxcX2bBY=;
        b=ZNK1l8YMFUhnRw5Xo4YX46aCuuxK7/6GUMwHwcn3jjBCbkHD5B5tjpKinP0pZr0DSe
         eHQ+8LJjZ02Qohgf+9xMiNLTGeu1rf/++wFpg2To81QkoAhf5A3tJrP0CjhIU31jhmVk
         znMkVBwGldbX/HIFJle6Zyk822KZSLI1KplL3QxV5mdCjUBU1CfMp/QyqzpGJCNE3rJ4
         F7jGg1cQXX6pVfzQIBWrWMEeKx+9LuslUeoZaO/WAj2lmblct+j2H8QXYMwQ0d51aKcg
         WqAIWTnJQoFz/LGLP12Nc7lmRrSmek4UoYegueNg+5seoeaayyppj+SLyfO1yN1BjREi
         m6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=EvDBastjS+EEm/ScWUsDSI2n/acTjBVXUc9HxcX2bBY=;
        b=lAabbMmuxCAv5YRoj8f7G6QpoBLP8eRzvoF1qgJsYaHsNmp4jVHAYkBu71exNsf8nM
         P6rjS6Ryaa+yFFRojJuA/YjgHUekgvEUh+0YjYvE++2bQhZv9Y5tiaWDpfnOC9TO5Pf2
         CRCEmqMPUqTGgRE9q6kwQf+BjGPyZP7jU1X2zYww/hn1esLmm9tpBRzLWUbe51cYQVh9
         1WP+Kl5hSY5RvG9AuSJs/85SFiw4XWx/ogPjoHI28+Kgqbm4AD/574pXQ3sj9BPkg7FQ
         09IgmMCPJMNZ1A+odFlu1ZXvY7P5uehytRq4VbJeFbE8/b7XlRThYo2312rHzvy21GKC
         6mbA==
X-Gm-Message-State: AOAM533R1trbmFrtf1bKdIL9TgADmx9elgsck6Se+IMDgoGkXE9UR0EN
        ZU64W15Nt9KQN64t/Fg3akC+Pn11zWM=
X-Google-Smtp-Source: ABdhPJzgBpspXf3T9jOW3MDVA5l9RJZY0bZbaP2yjPUkx6ImBg98c51wcXVzTwYvRCkvRSC6m5LAzw==
X-Received: by 2002:a1c:a74b:: with SMTP id q72mr2756849wme.122.1592307393299;
        Tue, 16 Jun 2020 04:36:33 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id w3sm3768361wmg.44.2020.06.16.04.36.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 04:36:32 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: gettid
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <23ca3363-5a24-9862-4872-811678527b50@jguk.org>
Date:   Tue, 16 Jun 2020 12:36:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello mtk

SYNOPSIS         top
   #define _GNU_SOURCE
   #include <unistd.h>
   #include <sys/types.h>

   pid_t gettid(void);

I can compile on Ubuntu without #define _GNU_SOURCE and call gettid()

Maybe that line can be removed?

https://www.man7.org/linux/man-pages/man2/gettid.2.html

Cheers
Jonny
