Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6944911B0
	for <lists+linux-man@lfdr.de>; Mon, 17 Jan 2022 23:22:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbiAQWV7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jan 2022 17:21:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiAQWV6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jan 2022 17:21:58 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01B67C061574
        for <linux-man@vger.kernel.org>; Mon, 17 Jan 2022 14:21:58 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id g81-20020a1c9d54000000b0034cd1acd9b5so1265199wme.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jan 2022 14:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=euro-linux.com; s=google;
        h=message-id:date:mime-version:user-agent:content-language:from
         :subject:to:content-transfer-encoding;
        bh=M9oc6pqYyHqmFv4NMhazB1kB4lnnu9MW4bqM8paqMQo=;
        b=feEea8mS4LFLNHDZRnp1+TyvlVj9Pd5UHr74nE9uK0/MAkvlqpixlKwEyVfAe5IJJX
         3y35Mvfi5hSZQ+8O4dj5SJGYxoPRIMRfIgHs9txi0G1soyvHaJEdBc+Mo0W9fHVGErRr
         jfonCWsyC0zSPVhYgrrdV6CS6zhB0niyD0xIruGihfqrLOmrlTOmuBuiPfYwbRCs51LZ
         2PTFhgQ2WSEHDJtD66kWVw/1wMRhN5maxl7PFRo3ugqNjdQJPV0QkLLiTTwCmsgkPXPE
         tqn004lhaAsELTFHlYC3S1KMiyYA9e/q91EQqxkxV3qtGF43TkgPbcwIpYVUmCxSktYC
         Qm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:subject:to:content-transfer-encoding;
        bh=M9oc6pqYyHqmFv4NMhazB1kB4lnnu9MW4bqM8paqMQo=;
        b=BSoRqnHEtyyAPJ0Klgc6VcfUNNvPknGQdnf/8MKV5l9QvjLWyKkvDFeDpYcy4F+LG6
         oTczfIZ1LyId/3PRIlnpPj4m3BSJKF+S8c5Ufyv3KnNGHXEqgdjBjR0c5jZS2PARRW6a
         usu/pC1/a1uhcMveGTOGogtcHkko+XM0mbreqSwE5mVUxIXW0d4lV37P5IIoXibdZN6B
         gVOfj8k9HFCFIg7JYf9awW9dZx58sMq5u96LcfviLV9YP8Lr3u+bt2dqLF7Fospnhn50
         TpdGDSp9lFlQtKoeeGBGSphN4zSoZ8KBLGLP84yeNM4hLyi726+jvIaVdo83df9I01Hl
         NWLg==
X-Gm-Message-State: AOAM532lX7+nKLruHHygoHP6PJt3b/p3X2kw5HODRdNnvSQCTI2JboaO
        TMM2Ds3TbvctCfdK51EnzTwfGJCsJdqKBGLs
X-Google-Smtp-Source: ABdhPJxfwtAhTJkCd0GDsledHHQCI519fd3B0hVoflfKU4609SeNBgcTsBXCSIQh1oNd7xPmq1W8WQ==
X-Received: by 2002:a5d:650a:: with SMTP id x10mr21427676wru.217.1642458116399;
        Mon, 17 Jan 2022 14:21:56 -0800 (PST)
Received: from [192.168.140.141] (85-222-97-180.dynamic.chello.pl. [85.222.97.180])
        by smtp.gmail.com with ESMTPSA id p15sm12571865wrw.93.2022.01.17.14.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 14:21:56 -0800 (PST)
Message-ID: <d3bc64b3-a1ec-7165-1eed-506d348762c3@euro-linux.com>
Date:   Mon, 17 Jan 2022 23:21:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From:   Alex Baranowski <alexbaranowski@euro-linux.com>
Subject: [PATCH] fixes on swapon.2 CONFIG_DEVICE_PRIVATE decreases number of
 available swap files
To:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        alx.manpages@gmail.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Howdy (It's probably the nearest thing to Polish Siemanko!)!

Firstly I'm sorry - I might send empty mail before this one (misclick).

I noticed that swapon docs are missing some newer information about 
CONFIG_DEVICE_PRIVATE that decreases the number of available swap files. 
When it comes to kernel versions that I used 
https://elixir.bootlin.com/linux/v5.14/source/include/linux/swap.h and 
https://elixir.bootlin.com/linux/v4.14/source/include/linux/swap.h to 
check when the changes were introduced. I also tested the manage with 
`man path-to-file` if it looks OK. I signed off as Aleksander Baranowski 
as it is my legal name.

Patch:

 From 547cff381f0321dd6bffdaa2cc5c6fe9b44464ef Mon Sep 17 00:00:00 2001
From: Alex Baranowski <alex@euro-linux.com>
Date: Mon, 17 Jan 2022 22:36:34 +0100
Subject: [PATCH] fixes on swapon.2 CONFIG_DEVICE_PRIVATE decreases number of
  available swap files

Signed-off-by: Aleksander Baranowski <alex@euro-linux.com>
---
  man2/swapon.2 | 11 ++++++++++-
  1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index 07d5fe86c..a6c756c4d 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -33,6 +33,9 @@
  .\" 2004-12-14 mtk, Anand Kumria: added new errors
  .\" 2007-06-22 Ivana Varekova <varekova@redhat.com>, mtk
  .\"     Update text describing limit on number of swap files.
+.\" 2021-01-17 Alex Baranowski <alex@euro-linux.com>
+.\"     Update information about available swap files decreased by
+.\"     CONFIG_DEVICE_PRIVATE option
  .\"
  .\" FIXME Linux 3.11 added SWAP_FLAG_DISCARD_ONCE and 
SWAP_FLAG_DISCARD_PAGES
  .\"    commit dcf6b7ddd7df8965727746f89c59229b23180e5a
@@ -189,7 +192,13 @@ and
  Since kernel 2.6.32, the limit is further decreased by 1
  if the kernel is built with the
  .B CONFIG_MEMORY_FAILURE
-option.
+option. Since kernel 4.14, the number of
+.B MAX_SWAPFILES
+might be further decreased by 2 when
+.B CONFIG_DEVICE_PRIVATE
+option is enabled. Since kernel 5.14, the enabled
+.B CONFIG_DEVICE_PRIVATE
+option decrease number of available swap files by 4.
  .PP
  Discard of swap pages was introduced in kernel 2.6.29,
  then made conditional
-- 
2.27.0


Best,
Alex
