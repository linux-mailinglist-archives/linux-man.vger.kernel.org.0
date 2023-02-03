Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE38568A260
	for <lists+linux-man@lfdr.de>; Fri,  3 Feb 2023 19:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbjBCS65 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Feb 2023 13:58:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbjBCS64 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Feb 2023 13:58:56 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E8D4C2A
        for <linux-man@vger.kernel.org>; Fri,  3 Feb 2023 10:58:55 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id d2so2263612pjd.5
        for <linux-man@vger.kernel.org>; Fri, 03 Feb 2023 10:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m3ZUM105q6uZSUMFCeVjR0YbMQoRqBz0GmpFusbHOts=;
        b=UJGNHehTOGNWqHVTo/E1VRaySEWE9IRLVrG3kMw3Ksi9Qozmt0lHLcvvtaqgLgGXi+
         1T6nP76/yOnDXE/FFHepP8IVYkOOjt+WPHWHsYNodLlTSZqaNIXJefmVS3hcdt6QVzA9
         hCIlobQ5bGGl6BHLLt7P5XT/UUPM0d2WchynDHSqkd9xAYoqi8HEC7slSWGo6eD0leos
         f0G+4cZxUOgxIAFFfYBJyPo6GRHhj4jr+KxalT2D/hDYczh50MUeurgTBytxOA2XuBtn
         K7HVfvDFT+FmumNM/wbqVKVRUG4O2I5v1bWIj0caKH5in1DW3Tv73vCGgGlyXcVHw8l8
         Usyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m3ZUM105q6uZSUMFCeVjR0YbMQoRqBz0GmpFusbHOts=;
        b=recHgOHR35rwpKUArjcfsQvuIxVhmwUX/ejdgPNSjV2utsbmNl1qy2t+loH6lKjFEX
         Kwfon/heNyXNVdJKxZQKkmQPaB/uoQ9WhW7pIYqK92ym/TY330nQ9E2xTssmoiRswofU
         cPxYI3/yJ1MBC0CKu58HrzQZraf8eacenLHnMXXJ/YEyVQqUO5X05QLp6aWctoflc1Pt
         BltUux2dH9fcD0YSJNS0/mf8uvVOaBgqZV5lBUkaJ+D8O1+S4hpXddi9+B9+vdRJtRKl
         ZofbRaqA7sh4LTd2KFWxEWDsdmwUMMWkZg+TtRcBydu5YzXU79W7migP/tzyg0Qfrk1e
         cB8w==
X-Gm-Message-State: AO0yUKWUC+kYysZINKx6gA6WAJhQVAmnNTFAph/ju1zotKiLFg8GoR99
        UM/6iNqAmlqrZTiqd0gvIltxtQ==
X-Google-Smtp-Source: AK7set9MjrhC8HUffFs8JKAgmAe5HPeVkK//TblyKXvI4xUQfeD2a1/CFWmOFIN1AVwS0GybE89HXw==
X-Received: by 2002:a05:6a20:7f9b:b0:be:c5de:7179 with SMTP id d27-20020a056a207f9b00b000bec5de7179mr15506553pzj.32.1675450734874;
        Fri, 03 Feb 2023 10:58:54 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
        by smtp.gmail.com with ESMTPSA id y20-20020a63b514000000b0047063eb4098sm1825702pge.37.2023.02.03.10.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 10:58:54 -0800 (PST)
Date:   Fri, 3 Feb 2023 10:58:52 -0800
From:   Stephen Hemminger <stephen@networkplumber.org>
To:     Jakub Sitnicki <jakub@cloudflare.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, netdev@vger.kernel.org,
        kernel-team@cloudflare.com
Subject: Re: [PATCH] ip.7: Document IP_LOCAL_PORT_RANGE socket option
Message-ID: <20230203105852.573a9a35@hermes.local>
In-Reply-To: <20230201123634.284689-1-jakub@cloudflare.com>
References: <20230201123634.284689-1-jakub@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed,  1 Feb 2023 13:36:34 +0100
Jakub Sitnicki <jakub@cloudflare.com> wrote:

> Linux commit 91d0b78c5177 ("inet: Add IP_LOCAL_PORT_RANGE socket option")
> introduced a new socket option available for AF_INET and AF_INET6 sockets.
> 
> Option will be available starting from Linux 6.3. Document it.
> 
> Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
> ---
> Submitting this man page update as the author of the feature.
> 
> We did a technical review of the man page text together with the code [1].
> 
> [1]: https://lore.kernel.org/all/20221221-sockopt-port-range-v6-0-be255cc0e51f@cloudflare.com/
> ---
>  man7/ip.7 | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Marking this patch as not applicable in netdev patchwork since it is for documentation
and I assume linux-man has its own tracking.
