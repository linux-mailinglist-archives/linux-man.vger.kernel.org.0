Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A479E1F06A8
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 15:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726352AbgFFNSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 09:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726078AbgFFNSQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Jun 2020 09:18:16 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C71ECC03E96A
        for <linux-man@vger.kernel.org>; Sat,  6 Jun 2020 06:18:15 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id c71so10852571wmd.5
        for <linux-man@vger.kernel.org>; Sat, 06 Jun 2020 06:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=nECMNBtVh4ZbuJEFuh/KNS8SrUrjrAQG5CUn+3WRfZA=;
        b=E6V6C0ebIceR3l9wiMfuH6+4T6CXfP6XGNsjIDltRVIVN17KQxaYWPh3MeVWg3EtAC
         aT6ziKoEjxo/SO3PATAySSYFwJUhhSxC4i0D1VMFT87dsZe2XW3HMtS/opdbo/vaSIoz
         72eIGtNULyuXC6gYF3q8LXf6028hEvczwjb4ZT1uVZoks4MNoOV6AFj22n5t/zHniZ33
         gH9hPb9Ng+unaPVE4GGR1aQIAw7v6L3g3PPDHQlJFsMLexMXBInT+W5BhNCUHAkCNEgy
         j6oDAXHbPSsBnHQA8GwkmubTxuFFDV0MbyrZfGX1sZUFhP8sNL8JI2wUBJfSHu4JVooW
         iEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=nECMNBtVh4ZbuJEFuh/KNS8SrUrjrAQG5CUn+3WRfZA=;
        b=rgEIXhWjJPBhyD32VVaAETQ21bTGG/4c8aboWM6qqjZe+njUx8n9iIDNEaxPtjJumQ
         cRE8wKle+UkXRWTwYTX13dJW9rHlEmY8ghNL3sOw1p2NMBzbHouFHbtoxKnggsPGGqEj
         4U7kvC8Jwk9G5kT2eDELPXMVGvt1MGCFuhKFWIYrLKdAWHjJYTZJBQcn6Vdl5ClUVHP6
         kqzmAFzeVxefE3LSbS+453NDw+smP/Mf4xkPD56HivkzAiWMn2hC4Z3KJgyReKx/eeDP
         QtOL+qNPdwaVnB4lu8nI6dVyVK8F4vGw0C0lk0JiiEqqvYuudS/+R5DoyaktlO4o8HZx
         qDHA==
X-Gm-Message-State: AOAM531wXB3Sa2EfLN9RO5XA4I6kPlRUAJbICrquo/yxUabtQYaqbYkm
        PZqgAYId0JrtVMvWjOPAk8KvOfpwAJA=
X-Google-Smtp-Source: ABdhPJyYRpaOVPY48/Zqme6/Qk+Vm6oj0hdbHJCoWssPXAZNoL7ktU9jSXeze8QjI5zAy55t+fSeVQ==
X-Received: by 2002:a05:600c:645:: with SMTP id p5mr7170736wmm.156.1591449494202;
        Sat, 06 Jun 2020 06:18:14 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id 88sm17809805wre.45.2020.06.06.06.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2020 06:18:13 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: core(5)
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Message-ID: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
Date:   Sat, 6 Jun 2020 14:18:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

Some feedback on this page
https://man7.org/linux/man-pages/man5/core.5.html

1) "disk file" sounds rather old fashioned, usually would just say "file", on this page, removing the word "disk"

"The default action of certain signals is to cause a process to
terminate and produce a /core dump file/, a disk file containing an"


2) We wouldn't regularly say "nonwritable" in English, "not writeable" is better English


3) Could i ask to clarify my understanding. For this "The binary being executed by the process does not have read
           permission enabled."
-- is this when the binary permissions are changed after it starts running?
I thought a core file was just a dump from RAM, does it really even need to open the ELF file again?


4) I noticed %P always gave me P1200 even after a reboot I recall, I had expected it be '1', do you see similar?

Cheers, Jonny
