Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22E36453B37
	for <lists+linux-man@lfdr.de>; Tue, 16 Nov 2021 21:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231344AbhKPUvs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Nov 2021 15:51:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbhKPUvs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Nov 2021 15:51:48 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1613EC061570
        for <linux-man@vger.kernel.org>; Tue, 16 Nov 2021 12:48:51 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id t11so1174372ljh.6
        for <linux-man@vger.kernel.org>; Tue, 16 Nov 2021 12:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=RM30g3l0IaaGS6IosT4vCkIAZv89ehJfm45vWGwqKuk=;
        b=LjHT/S1Sh/8JvVPkEvcV/LZ8L2vb9+DszAzvx19okZO2fENh3mVV+/SIem7CzN6jcU
         ycpf99z8k5TeITpWbem8vsJkxfOEEer8M5OUboMzTmJuEfMw4yM9vzAZhnI9wsYVEawM
         F83Ylxi43mFOr1RPv3nGdblpqzBwQK6Im48mrzV9oXPJQw3qkamlAl8lU3va8RWT247y
         sqsKQvGcRB8L+X/pE/9YNk9fTaS6GTbI/a32qEk9JRcYXNp0SEnhnMfwo71r6mexXP7K
         xClIi9/flnperQ2UVSnvrosNSxAtQBkNig+18gTqkdiSsjJ1+C2HaQby8RiT5p0eIc/C
         h2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=RM30g3l0IaaGS6IosT4vCkIAZv89ehJfm45vWGwqKuk=;
        b=W0pehvJ0j3vCUzKl4Nooxzy+H2bjkgNb206eTAHcgDHbX21f3hhEkTXeaekJPz2UgH
         65wGbMUG4/G0ZiMwLX87KorztLCP3TOLCuQ5KRBkTdPDjvfIGDgoSSf0OSqbTcxviE+5
         PrPJYxty7CO1BhDPnZIHh5Cp4Fhnc+I/iHHTZBxWnk+SH/J7TdE5o+DLJrc+MY23D/DB
         I9fKJ0fObUFNIBB1nKSdzDW13b93r5qO605uvdBenclIWc+hscs7l0uJHaqgFkxlD75v
         TzDMzMm3WUp/2V9cJv1sxJljl+Rk5WS59Ec3v6XkG0R3uyDzWibYet6cyD69VufUcfw0
         L8bw==
X-Gm-Message-State: AOAM531f4TIvintxEcWnHcA/pbIbHagxCfQDqxEvkOaPjmyeUTrq73JQ
        EtSRC1xDg3/cBnQ9XrKI61Qg0or2y1nVTg==
X-Google-Smtp-Source: ABdhPJxstIlkZI1mssMz0/+o4v1zuzeLvruslvsGPMGcd2xdjWb7LYs5jeVvZvBWXliFpz6QeOsFLQ==
X-Received: by 2002:a2e:a546:: with SMTP id e6mr2129971ljn.385.1637095729299;
        Tue, 16 Nov 2021 12:48:49 -0800 (PST)
Received: from [192.168.88.200] ([178.71.193.198])
        by smtp.gmail.com with ESMTPSA id q5sm1875699lfu.18.2021.11.16.12.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 12:48:49 -0800 (PST)
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
From:   Maxim Petrov <mmrmaximuzz@gmail.com>
Subject: [patch] proc.5: update the obsolete column name in net section
Message-ID: <0624375d-9dc6-1cfe-fbda-a385f06df9a4@gmail.com>
Date:   Tue, 16 Nov 2021 23:48:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the net section, 'rexmits' name is still used. Change it to 'retrnsmt' to
match the modern kernel and fix the column order in /proc/net/udp.
---
 man5/proc.5 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index c6684620e..cb9960c4b 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3957,7 +3957,7 @@ the "local_address" is the local address and protocol number pair.
 the internal status of the socket.
 The "tx_queue" and "rx_queue" are the
 outgoing and incoming data queue in terms of kernel memory usage.
-The "tr", "tm\->when", and "rexmits" fields are not used by RAW.
+The "tr", "tm\->when", and "retrnsmt" fields are not used by RAW.
 The "uid"
 field holds the effective UID of the creator of the socket.
 .\" .TP
@@ -3981,7 +3981,7 @@ The "rem_address" is the remote address and port number pair
 \&"St" is the internal status of the socket.
 The "tx_queue" and "rx_queue" are the
 outgoing and incoming data queue in terms of kernel memory usage.
-The "tr", "tm\->when", and "rexmits" fields hold internal information of
+The "tr", "tm\->when", and "retrnsmt" fields hold internal information of
 the kernel socket state and are useful only for debugging.
 The "uid"
 field holds the effective UID of the creator of the socket.
@@ -3997,16 +3997,16 @@ The "rem_address" is the remote address and port number pair
 "St" is the internal status of the socket.
 The "tx_queue" and "rx_queue" are the outgoing and incoming data queue
 in terms of kernel memory usage.
-The "tr", "tm\->when", and "rexmits" fields
+The "tr", "tm\->when", and "retrnsmt" fields
 are not used by UDP.
 The "uid"
 field holds the effective UID of the creator of the socket.
 The format is:
 .IP
 .EX
-sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm\->when uid
+sl  local_address rem_address   st tx_queue rx_queue tr tm\->when retrnsmt uid
  1: 01642C89:0201 0C642C89:03FF 01 00000000:00000001 01:000071BA 00000000 0
- 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 6F000100 0
+ 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 00000000 0
  1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000000 0
 .EE
 .TP
-- 
2.25.1
