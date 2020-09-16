Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B414526C747
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 20:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727879AbgIPSXE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 14:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727963AbgIPSW4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 14:22:56 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D04EAC014D90
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 06:14:45 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id m6so6923456wrn.0
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 06:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=4wpQO23vyH2OsX64bQ7vP4/vkgXh69ZcXcXjnx9vS+g=;
        b=uAl1dekKWO8OK3s69ElQggx/vj4P3sNYp5B6NzMI6Gzo8bjBIejXM/eOOOQovWp6Ze
         Llo+Jil0EHS01vBHjmyf1ZFq46ag1b+Ve0cqBIkmW5/3pqcVfc3m4jl7orxBlAMMUsD1
         BUvmW7SOHMoeiwhwURZgYKURydFKk8N+NWNZacrCNJOZGQlt0xtIe7tCOxRmMfEPLwrJ
         JxHdk07+hbfl9FNeiZwz4I874A7A43ZbU6Ir3e8UrNHapEzX6C06GbXVF9oRO1Q+GB8W
         PnquBkwdJmNAvP5a7fWpE512B0BLdqYV0jSObFshl8uMPEqaIfMR1aLdMXL4LNBl8dHn
         spTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=4wpQO23vyH2OsX64bQ7vP4/vkgXh69ZcXcXjnx9vS+g=;
        b=JCOjHe6lX1ewe0Jgj9aZwLjDyTRSNXFNnk0GACryySAof/SpCy4ZE6W7lpLHJPUCnW
         A1uJx/eBSKgl/a4jSwxI45ll9GvH50sKp4woriLJzcZziAyrNTgA/cY/x20pILfsR3p8
         UdVy7GROLrhvJMkwFupI5Vru+sVnJQqGvVswzxZTztOeJxincrF4c/ZClYXRCUo9+aeb
         qRFP3qeaOhjBevsnceoX5ax8+6ZoRaDzFcnbaLihLDXHBihXVzbH8zNGEHVyGd5YE8Y3
         ZGkvOLgiyFZT9DzRJJWYmluKB6V4nJXofkAuUSehYIYJxuflOR7xDAj3wIw9wjP3VYcZ
         5TdA==
X-Gm-Message-State: AOAM531Lq9o16VVuA4nkLeiKh3u7Y2V9t0EKgrpIHiW2bDsJlPOzgVyD
        XkZj15tFOrlZEi4to61syKs/noh68+A=
X-Google-Smtp-Source: ABdhPJwC1hg74ne2iRGXpX2tAxVx57+cKCVSKnQbkGh5zoJEO5HdMgPkrZPcIlUXWz0ghqT/uNTkBg==
X-Received: by 2002:adf:f4c6:: with SMTP id h6mr26406008wrp.310.1600262084301;
        Wed, 16 Sep 2020 06:14:44 -0700 (PDT)
Received: from [192.168.1.133] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n66sm5514640wmb.35.2020.09.16.06.14.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 06:14:43 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [BUG] sigaction.2: s/sigval_t/union sigval/
Message-ID: <181e9d30-baf7-cc5c-3016-71e83504ab04@gmail.com>
Date:   Wed, 16 Sep 2020 15:14:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

sigaction.2 uses the name 'sigval_t', which is:


// <x86_64-linux-gnu/bits/types/__sigval_t.h>
/* Type for data associated with a signal.  */
#ifdef __USE_POSIX199309
union sigval
{
   int sival_int;
   void *sival_ptr;
};

typedef union sigval __sigval_t;
#else
union __sigval
{
   int __sival_int;
   void *__sival_ptr;
};

typedef union __sigval __sigval_t;
#endif


and then:

x86_64-linux-gnu/bits/types/sigval_t.h:16:typedef __sigval_t sigval_t;


I think the man page should use the POSIX naming, shouldn't it?

___________

BTW:  I sent Draft v6 for system_data_types.7 2h+ ago, but I don't see 
it on lore.kernel.org.

Did you receive it?  Should I wait, or send it again?

Thanks,

Alex
