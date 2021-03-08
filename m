Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4717330B53
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 11:36:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230125AbhCHKfy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 05:35:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230490AbhCHKfj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 05:35:39 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 668B1C06175F
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 02:35:39 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id u187so5725239wmg.4
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 02:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=fvmi0Bh7qltlbRodG2epbKLeIiO0ePt3Byi/7Eln5m8=;
        b=lKDDzq6W1GH2G7KQ7CXwci8jTXotBcBUBlpUhcJQW+AArkjzoGupa+qyL6//wQ16Vp
         1vldl6zFgjzFKopz/pIibau3adzCI3ChkY5JvT/OaWRhNjm/aqsgl4HkbquJVQNWSttr
         gpy/SKvpT6hEQcLbT81jOfBO5c7RTwfl6lHzklWlbuMK07r9VS73s/KjsT2hsi/qoPah
         XpTwGD9lEq5uHMr1fP8kC6gczF8yVbpPT4OKYPgUfGjhOR9YbZ7wI5HYTpx1W5wXdLoA
         aZHQs8wE0j+goygmC0TA9FmEsjXJqjZCIOv/DcslNL94ns9PC7oBBmTOTrGZnUc5mf+J
         DNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=fvmi0Bh7qltlbRodG2epbKLeIiO0ePt3Byi/7Eln5m8=;
        b=QFchBEXbrwbDcXNUY4SoChnjebI9HM/GS5G5RqARJQGP03rpT3mvGbYHT0dHM8eh0t
         DRcYnULHASm40gQEKb0lugfz57gYjVZT6iBeQ7KtA4Or2O5Vs2tQ2MqYQu4mMf+t9xY1
         GVSeLKkYQbWt9HxUJ0qojcQAi33+sp9JHwLK6Pv8Hx301uy4JqpeQi8WyBHc7DYbzk2z
         Ar1InBJqbgy/+Kobk1sc/44J4KHeSYRwxzknoMwzZfs6e8QVTF000t7NXPfhKqVf+Hdd
         MQBMJCA0SVSUN3cMYmPR0JdeeuyS+TH08b9/CZT3T2qxOyhoDLot5Y5dSKiOr9zPRBra
         4ekA==
X-Gm-Message-State: AOAM531LsycKgZfHEWOeyU3f5za48CIwtHFyXS5VMhz8GqUiLlfsp15i
        Ppi3ZoFU4lOCmBmQ79MeeSE=
X-Google-Smtp-Source: ABdhPJzZP4Nl5V2YbfpKkNo2dI7p2O8Kobj2LIxstivzROmF/XyzB8bJjQQuiVVICPOUhfqcl4yC+Q==
X-Received: by 2002:a1c:7e16:: with SMTP id z22mr21324642wmc.74.1615199738129;
        Mon, 08 Mar 2021 02:35:38 -0800 (PST)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id k4sm22198166wrd.9.2021.03.08.02.35.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 02:35:37 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Cc:     linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: pthread_cleanup_push_defer_np.3: missing functions in glibc
Message-ID: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com>
Date:   Mon, 8 Mar 2021 11:35:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael, Florian,

While adding 'restrict' to the prototypes, I found that the functions 
defined in this page don't exist on glibc (or I couldn't find them).
I tried removing _np, and still no luck, and 'git log --grep' didn't 
help either.  Where these functions removed at some point?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
