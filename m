Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8272A2680C5
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:36:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgIMSgK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMSgK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:36:10 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 709E7C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:36:09 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so16344316wrt.3
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MiPd8nmPfxD5zrphEXYv7l5Ozq3iN7Ei+K/HGRHsno0=;
        b=T/HE6Dr4K/PIRTr5ZZPT7Nt0ifo5hpFiHqWo2lPzIWTkFI7UCRARICIwXHUWex6L9E
         Y2KasI5zBBfpqeQnegM2vN9J87YdmWtsNmwAkvm5RJIxC0lLDEoiMAtnA3hM8Yh3KsJ5
         XUmBATHm3aKbDaX3KNhrhbkxbaDHEQxlF4lUB/bxMdr5FQQLWItBrTyo4wuHKKZYgJMz
         vnqMG8BxyNk6G2ZWwbABudCmWq1rBb+YkU7brDGJXli09YLQFrFn0v6x95lQFyY26sY3
         jAcssQ9H/lpOjfRFeGlpoXlTduKW4o38ANf3lG+LzFHcTSSv8CaVt2i21s/stx2vn+4c
         15Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MiPd8nmPfxD5zrphEXYv7l5Ozq3iN7Ei+K/HGRHsno0=;
        b=T8mEFOQY1UCbWh8bi8sEv0yMq1G5mNjir2wKWQWRsLe83F0V2uVQH0drtR09Y7f27a
         MM0vKGK5vc5a9vm6NpWqjpWYxz4/AuI6U+Fu1k3F+uy/El0sv/MQm+RTdt43PRJ82A3a
         +dv+BeoJZxKWRAGdCSHe95sPpvzEcZDapZF5UfccXK5W1v26rDJCUOAO1iU03EATx424
         R/d5wU6G11Z4SqUMTnX4gz+5hIxC8oj+sdP2hkEDiZbVSofraNM+fO506TH4Fu2WMAlj
         Jy7Jx7d91zU7RLdlFdD2hXV2PCFdnYjj6eMY4dLYQp+n9FWzpjpiTgkwM7ynjVW+XYOT
         VY7Q==
X-Gm-Message-State: AOAM531t1rl7zwOD8tohtBPl2piZQFqAaNKJRlzj5HTxTZBbBYevUnu8
        qbz/uOdgdoQL8f8S59cKo6G9DmT7LtMvYA==
X-Google-Smtp-Source: ABdhPJw3anB2MRf+wo08yVoh++9TKWIrEA/mpSeNl/YnEi16RntQPrtToS6xYiIaSV8USnNhkfPBAQ==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr13152124wrt.276.1600022167796;
        Sun, 13 Sep 2020 11:36:07 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id z15sm9839728wrt.47.2020.09.13.11.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:36:07 -0700 (PDT)
Subject: Re: [PATCH] add_key.2, clock_getres.2, clone.2, futex.2, getdents.2,
 getpid.2, getrlimit.2, ioctl_ns.2, kcmp.2, keyctl.2, memfd_create.2,
 request_key.2, stat.2, timer_create.2, wait.2, clock_getcpuclockid.3,
 getgrent_r.3, getpwent_r.3, getpwnam.3, posix_spawn.3,
 pthread_getcpuclockid.3, strcat.3, feature_test_macros.7, user_namespaces.7:
 Cast types that don't have a printf() length modifier to ([u]intmax_t) for
 printing
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200913175506.576683-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d74dd859-91a2-5fad-af6d-b241b0783a9a@gmail.com>
Date:   Sun, 13 Sep 2020 20:36:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200913175506.576683-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For completeness, here's a link to the previous thread where we
discussed about the rationale for this patch:

https://lore.kernel.org/linux-man/20200911231411.28406-1-colomar.6.4.3@gmail.com/T/#m971e4dcfae5f25e0f26c906679aa7176b6786bdf
