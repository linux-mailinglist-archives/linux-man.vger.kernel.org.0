Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF8E622D699
	for <lists+linux-man@lfdr.de>; Sat, 25 Jul 2020 12:13:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726612AbgGYKNS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Jul 2020 06:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726572AbgGYKNR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Jul 2020 06:13:17 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B99DC0619D3
        for <linux-man@vger.kernel.org>; Sat, 25 Jul 2020 03:13:17 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id y3so10379487wrl.4
        for <linux-man@vger.kernel.org>; Sat, 25 Jul 2020 03:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ZAp0ePN/f7D9hyHJiWlljGPmUZrMbxq9IE+VKJfQsyQ=;
        b=n9DFr3HHDymyk+zuVZ1v9FOIaHMUrZYkPl8LzHir2RcSifoGiE/zebisevOXbNWIjJ
         3VYIU2ALlSm0dSU794UGHZj5kY4RC1kb/E8bZa1bwv6r2S9K1mdmWPRq0ks4ig3D7VRu
         4c7d6ALYiAK5sxay0t4fTx3GvrDnaxsHmFQlPQBJN1Uebu1xqVGRtb10iCIQtsikp0CS
         8wcRyyWStuCXGIFr+TIuJfcm9CfiWftEK/l3eb8nRth7PNZMAR/NhhnZpfmUdDaecma3
         gTHyt0qr24tXLzxz2oMz7pM/48r904xm8+YrT0Zr84OggfXslBezvZECU89jxkDD/+Lg
         Xzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ZAp0ePN/f7D9hyHJiWlljGPmUZrMbxq9IE+VKJfQsyQ=;
        b=pSHFnRSuq1+gBo+z6/pYsfXxX/9OvVlVPbdul1vHByzZmZa3Y1h7KD6PhLvb0zkdWa
         l4V0f3eUCy6PIhFnFdS7qtGPjXxFyeXNIEcLtWyq5zLJnoPLXx604xUzjUK+gaJS4RNF
         Dbz1DBQ7kcUlILajVLPpRqUBM0rp3Ja2rxPnPZXL9JA9x1uWeDLFJAlyFAzg6py6HgY4
         vg0IuLRy8KGFaMjDkM/lzNa+l2WPsRcz+GeIIUf2T/kzbfKsiT5FobWNVKPDhO59RY3a
         MCUgwOEaq/Yn4czOZt+HmrZUrKy5onCpDko8xSBARPSbLU3KCp4LBdccHh+YnXphYpE+
         Orgw==
X-Gm-Message-State: AOAM533dG8gk3DgsgdF+gMqqrvQaZHqWX4ns1vJBBf2mL38kCYsRm/n3
        f03FPnPugBxuWSRsFaXVHzQ5Lr1b
X-Google-Smtp-Source: ABdhPJwgJYmcjSk7lgI4kpMGVHS8BgPb37eykRECyeWnXve7n8dzYuZuChb/FvZ/Hk6OWVJ0U47jcA==
X-Received: by 2002:adf:b74b:: with SMTP id n11mr11958892wre.310.1595671995732;
        Sat, 25 Jul 2020 03:13:15 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id e23sm10176858wme.35.2020.07.25.03.13.14
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jul 2020 03:13:15 -0700 (PDT)
To:     linux-man@vger.kernel.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: queue.3: Document CIRCLEQ_ macros
Message-ID: <581130f1-f6eb-5845-40e1-220f7edae526@gmail.com>
Date:   Sat, 25 Jul 2020 12:13:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

I'm going to use CIRCLEQ and I found out that it's undocumented.  I'm 
going to document it in queue.3 and I would like to know if someone is 
already working on that to not duplicate efforts.

Regards,
Alex.
