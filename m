Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF6A72ED610
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 18:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727959AbhAGRvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 12:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727673AbhAGRvk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 12:51:40 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4724FC0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 09:51:00 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id d13so6437603wrc.13
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 09:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=rWwZN5LDYrLRvgAehqeXUfsdKFsGOtk/WHJn8dzqZbY=;
        b=t69v0iZu9yHV82x8HwlPn8BJOSwtuHWOARMkS8JImr6fz/xzFPuzDnGX1FFb0qE8Wg
         sNlOe0Rdl1FRGirbx5BW6QMB854eVB0RMjgmJJ2/q4SYYI/2aD678fHkbeXjF4EcnscS
         GB/crrNERMI7nUlY2/KLWUaDryATdQ27JH8wlsltGHQFFVq5ZM0tqiGqGW2nyUqGmkKh
         5DpDVyc8Mw+nQ/v6emaBPwqmKdMX5+sAYCBCiKtSgDqC5RlJ1bV95h3gUj3Ozjl5tJPA
         ONglCOlySr31UYMj5uKNCxyVyg2HmAYP/L4RAyBpbvGYeU+WwaVeUAv9Gf8MsDWFQl/4
         m1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=rWwZN5LDYrLRvgAehqeXUfsdKFsGOtk/WHJn8dzqZbY=;
        b=pZrHgB5NEMfgP2JuOAnXvMxBNQ/VGdGi1zmPF66ar++BT/KNCPiAtsresr5F7tTqTV
         5t5fKUjXH0rB4hCX6OFtmtxijEL05XzmDWshtZ6285fcDHYzeYVQF69mNY3/I0h8gr8m
         aOG4uY7yMPkryLHyHl1cbHX6ZQLsC4ZodILfxtLgqznDfxFm7Hw7g4Ey7Q1N273CEpO8
         g2/lqebLWCdNf46bBkjTZdQ6EhTRJ8jIk1PsTLQcUs5SYQJw5l65YEiXxeoUjgQLXNjz
         b5eKkB7Nnc+NV0kb7+zzh9DcBzSo8PbWWPVDAVn8vHZheG6TBU8zLO0gtwWDcDsJWwWt
         K6Ng==
X-Gm-Message-State: AOAM533ylNW34YiH/pkVwpYbWxRH/cfdCe8xu0khi1CDi8yeo0hJvGLx
        cMhIMYlk88KqDCKTsEOxwWO3YggPjkc=
X-Google-Smtp-Source: ABdhPJzHAqnAQiiba2vjrw+CRhU8mLjbKALWJ61Gyzye4szDW54LlDV7X+LQVvTvvoxBSq8iaueqzw==
X-Received: by 2002:a5d:62c8:: with SMTP id o8mr10273747wrv.51.1610041859072;
        Thu, 07 Jan 2021 09:50:59 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id j15sm9381146wrr.85.2021.01.07.09.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:50:58 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: URIs mark-up
Message-ID: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
Date:   Thu, 7 Jan 2021 18:50:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

See hostname.7:102.
There are URLs and they're not marked up in any way.
I guess there are a lot more like those around the pages.
Should they?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
